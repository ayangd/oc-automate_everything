local invctrl = require('component').inventory_controller
local robot = require('robot')
local importdir = (...):match("(.-)[^%.]+$")
local data = require(importdir .. 'data')

-- Speeds up most of the functions! (UwU)
local invData = {}

local function select(slot)
	return robot.select(slot)
end

local function getInventorySize()
	return math.floor(robot.inventorySize())
end

local function getInfo(slot)
	local t = invctrl.getStackInInternalSlot(slot)
	if t == nil then return nil end
	for k, v in pairs(t) do
		if type(v) == 'number' then
			if v == math.floor(v) then
				t[k] = math.floor(v)
			end
		end
	end
	return t
end

local function scanInventory()
	for i = 1, getInventorySize() do
		invData[i] = getInfo(i)
	end
end

local function scanCraftingArea()
	local craftingArea = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for i = 1, #craftingArea do
		invData[craftingArea[i]] = getInfo(craftingArea[i])
	end
end

local function transfer(slotDest, amount)
	local res = robot.transferTo(slotDest, amount)
	invData[robot.select()] = getInfo(robot.select())
	invData[slotDest] = getInfo(slotDest)
	return res
end

local function getExInfo(slot)
	local t = invctrl.getStackInInternalSlot(3, slot)
	if t == nil then return nil end
	for k, v in pairs(t) do
		if type(v) == 'number' then
			if v == math.floor(v) then
				t[k] = math.floor(v)
			end
		end
	end
	return t
end

local function getMinInfo(slot)
	local t = getInfo(slot)
	if t == nil then return nil end
	local nt = {name = t.name, damage = t.damage, size = t.size}
	return nt
end

local function getMinExInfo(slot)
	local t = getExInfo(slot)
	if t == nil then return nil end
	local nt = {name = t.name, damage = t.damage, size = t.size}
	return nt
end

local function find(name)
	local itemPos = {}
	for slot = 1, getInventorySize() do
		local itemInfo = invData[slot]
		if itemInfo ~= nil then
			if data.strSplit(name, '|')[2] == nil then
				if itemInfo.name == name then
					itemPos[#itemPos+1] = slot
				end
			else
				if (itemInfo.name == data.strSplit(name, '|')[1]) and (itemInfo.damage == tonumber(data.strSplit(name, '|')[2])) then
					itemPos[#itemPos+1] = slot
				end
			end
			slot = slot + 1
		end
	end
	return itemPos
end

local function count(name)
	local c = 0
	local items = find(name)
	for k, v in pairs(items) do
		c = c + invData[v].size
	end
	return c
end

local function pull(name, amount, excludeCraftingArea)
	local craftingAreaSlots = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	local amount = amount or 1
	local destSlot = select()
	if count(name) >= amount then
		local realname = invData[find(name)[1]].name .. '|' .. tostring(invData[find(name)[1]].damage)
		local items = find(realname)
		local pulled = 0
		for k, v in pairs(items) do
			if not (excludeCraftingArea and data.dataInTable(v, craftingAreaSlots)) then
				local itemInfo = invData[v]
				if itemInfo.size > (amount - pulled) then
					select(v)
					transfer(destSlot, amount - pulled)
					select(destSlot)
					return true
				elseif itemInfo.size == (amount - pulled) then
					select(v)
					transfer(destSlot, amount - pulled)
					select(destSlot)
					return true
				else
					select(v)
					transfer(destSlot)
					pulled = pulled + itemInfo.size
				end
			end
		end
	end
	select(destRobot)
	return false
end

local function move(amount, ignoreCraftingArea)
	if invData[select()] == nil then return false end
	local slot = select()
	local craftingAreaSlots = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	local itemInfo = invData[slot]
	local amount = amount or itemInfo.size
	if amount > itemInfo.size then
		amount = itemInfo.size
	end
	-- Fill items first
	for k, v in pairs(find(itemInfo.name .. '|' .. tostring(itemInfo.damage))) do
		if (not data.dataInTable(v, craftingAreaSlots)) and (not ignoreCraftingArea) then
			local curSlot = invData[v]
			if curSlot.size < curSlot.maxSize then
				local moveSize = math.min(curSlot.maxSize - curSlot.size, amount)
				transfer(v, moveSize)
				amount = amount - moveSize
				if amount == 0 then
					return true
				end
			end
		end
	end
	-- Lastly, fill empty slots
	for curSlot = 1, getInventorySize() do
		if (not data.dataInTable(curSlot, craftingAreaSlots)) and (not ignoreCraftingArea) then
			if invData[curSlot] == nil then
				transfer(curSlot, amount)
				return true
			end
		end
		curSlot = curSlot + 1
		x, y = xpcall(selectSlot, debug.traceback)
	end
	return false
end

local function getExInventorySize()
	return invctrl.getInventorySize(3)
end

local function getAllStacks()
	return invctrl.getAllStacks(3)
end

local function send(slot, count)
	return invctrl.dropIntoSlot(3, slot, count)
end

local function request(slot, count)
	return invctrl.suckFromSlot(3, slot, count)
end

return {
	select = select,
	getInventorySize = getInventorySize,
	getInfo = getInfo,
	scanInventory = scanInventory,
	scanCraftingArea = scanCraftingArea,
	transfer = transfer,
	getMinInfo = getMinInfo,
	find = find,
	count = count,
	pull = pull,
	move = move,
	getExInventorySize = getExInventorySize,
	getAllStacks = getAllStacks,
	send = send,
	request = request
}
local isRobotAcquired, robot = xpcall(require, debug.traceback, 'robot')
if not isRobotAcquired then
	print('Can\'t load robot module.')
	return
end

local component = require('component')
if component.inventory_controller == nil then
	print('Missing inventory controller!')
	return
end
local invctrl = component.inventory_controller

local item = require('lib.type.item')
local itemarray = require('lib.type.itemarray')

-- Class Meta
local Inventory = {
	slots = {},
	size = math.floor(robot.inventorySize()),
	ex = {}
}

-- Class Functions
function Inventory.select(slot)
	return robot.select(slot)
end

function Inventory.scanSlot(slot)
	local t = invctrl.getStackInInternalSlot(slot)
	if t == nil then
		return nil
	end
	return item.new(t)
end

function Inventory.updateSlot(slot)
	Inventory.slots[slot] = Inventory.scanSlot(slot)
	return Inventory.slots[slot]
end

function Inventory.scan()
	for i = 1, Inventory.size do
		Inventory.updateSlot(i)
	end
end
io.write('Scanning inventory... 00')
for i = 1, Inventory.size do
	Inventory.updateSlot(i)
	io.write('\8\8' .. string.format('%02d', i))
end
io.write(' Done.\n')

function Inventory.scanCraftingArea()
	local craftingArea = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ipairs(craftingArea) do
		Inventory.updateSlot(v)
	end
end

function Inventory.isInExcludedSlot(slot, excludedSlots)
	for k, v in ipairs(excludedSlots) do
		if slot == v then
			return true
		end
	end
	return false
end

function Inventory.isInCraftingArea(slot)
	return Inventory.isInExcludedSlot(slot, {1, 2, 3, 5, 6, 7, 8, 9, 10, 11})
end

function Inventory.transfer(slotDest, amount)
	local res = robot.transferTo(slotDest, amount)
	Inventory.updateSlot(Inventory.select())
	Inventory.updateSlot(slotDest)
	return res
end

function Inventory.find(i)
	local itemSlots = {}
	for slot = 1, Inventory.size do
		if Inventory.slots[slot] ~= nil then
			if i == Inventory.slots[slot] then
				table.insert(itemSlots, slot)
			end
		end
	end
	return itemSlots
end

function Inventory.count(i)
	local c = 0
	for k, v in ipairs(Inventory.find(i)) do
		c = c + Inventory.slots[v].size
	end
	return c
end

function Inventory.pull(i, ignoreCraftingArea)
	local amount = i.size
	local ignoreCraftingArea = ignoreCraftingArea
	if ignoreCraftingArea == nil then ignoreCraftingArea = true end
	local destSlot = Inventory.select()
	local itemTypes = itemarray.new()
	for k, v in pairs(Inventory.find(i)) do
		itemTypes:add(Inventory.slots[v])
	end
	for k, v in ipairs(itemTypes) do
		if Inventory.count(v) >= amount then
			for kf, vf in ipairs(Inventory.find(v)) do
				 if not (ignoreCraftingArea or Inventory.isInCraftingArea(vf)) then
					if amount > 0 then
						Inventory.select(vf)
						local pulled = Inventory.slots[vf].size
						if not Inventory.transfer(destSlot, amount) then
							return false
						end
						amount = amount - pulled
					else
						Inventory.select(destSlot)
						return true
					end
				 end
			end
			break
		end
	end
	Inventory.select(destSlot)
	return true
end

function Inventory.throw(amount, ignoreCraftingArea, excludedSlots)
	local srcSlot = Inventory.select()
	local amount = amount or Inventory.slots[srcSlot].size
	local ignoreCraftingArea = ignoreCraftingArea
	if ignoreCraftingArea == nil then ignoreCraftingArea = true end
	local excludedSlots = excludedSlots or {}
	
	-- Fill items first
	for k, v in pairs(Inventory.find(Inventory.slots[srcSlot])) do
		if not (ignoreCraftingArea or Inventory.isInCraftingArea(v)) and not Inventory.isInExcludedSlot(v, excludedSlots) then
			local curSlot = Inventory.slots[v]
			if curSlot.size < curSlot.maxSize then
				local moveSize = math.min(curSlot.maxSize - curSlot.size, amount)
				if not Inventory.transfer(v, moveSize) then
					return false
				end
				amount = amount - moveSize
				if amount == 0 then
					return true
				end
			end
		end
	end
	
	-- Lastly, fill empty slots
	for curSlot = 1, Inventory.size do
		if not (ignoreCraftingArea or Inventory.isInCraftingArea(curSlot)) and not Inventory.isInExcludedSlot(curSlot, excludedSlots) then
			if Inventory.slots[curSlot] == nil then
				if not Inventory.transfer(curSlot, amount) then
					return false
				end
				return true
			end
		end
	end
	
	return true
end

function Inventory.clearCraftingArea()
	for k, v in ipairs({1, 2, 3, 5, 6, 7, 8, 9, 10, 11}) do
		if Inventory.slots[v] ~= nil then
			Inventory.select(v)
			if not Inventory.throw(Inventory.slots[v].size, false) then
				return false
			end
		end
	end
	return true
end

function Inventory.ex.isAvailable()
	return Inventory.ex.getinventorySize() ~= nil
end

function Inventory.ex.isUpAvailable()
	return Inventory.ex.getUpinventorySize() ~= nil
end

function Inventory.ex.getinventorySize()
	return invctrl.getinventorySize(3)
end

function Inventory.ex.getUpinventorySize()
	return invctrl.getinventorySize(1)
end

function Inventory.ex.scanSlot(slot)
	local t = invctrl.getStackInInternalSlot(3, slot)
	if t == nil then
		return nil
	end
	return item.new(t)
end

function Inventory.ex.request(i, amount)
	-- TODO: pull external item
end

function Inventory.ex.send(i, amount)
	-- TODO: deposit item to inventory in front
end

function Inventory.ex.throw(slot, amount)
	-- TODO: throw specific amount of selected slot in front
end

function Inventory.ex.transferOut(exSlot, amount)
	return invctrl.dropIntoSlot(3, exSlot, amount)
end

function Inventory.ex.transferIn(exSlot, amount)
	return invctrl.suckFromSlot(3, exSlot, amount)
end

return Inventory
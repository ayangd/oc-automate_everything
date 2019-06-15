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
local inventory = {
	slots = {},
	size = math.floor(robot.inventorySize()),
	ex = {}
}

-- Class Functions
function inventory.select(slot)
	return robot.select(slot)
end

function inventory.scanSlot(slot)
	local t = invctrl.getStackInInternalSlot(slot)
	if t == nil then
		return nil
	end
	return item.new(t)
end

function inventory.updateSlot(slot)
	inventory.slots[slot] = inventory.scanSlot(slot)
	return inventory.slots[slot]
end

function inventory.scanInventory()
	for i = 1, inventory.size do
		inventory.updateSlot(i)
	end
end
io.write('Scanning inventory... ')
inventory.scanInventory()
io.write('Done.\n')

function inventory.scanCraftingArea()
	local craftingArea = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for i = 1, #craftingArea do
		inventory.updateSlot(i)
	end
end

function inventory.isInExcludedSlot(slot, excludedSlots)
	for k, v in ipairs(excludedSlots) do
		if slot == v then
			return true
		end
	end
	return false
end

function inventory.isInCraftingArea(slot)
	return inventory.isInExcludedSlot({1, 2, 3, 5, 6, 7, 8, 9, 10, 11})
end

function inventory.transfer(slotDest, amount)
	local slotSize = inventory.slots[inventory.select()].size
	local amount = (amount < slotSize) and slotSize or amount
	local res = robot.transferTo(slotDest, amount)
	inventory.updateSlot(inventory.select())
	inventory.updateSlot(slotDest)
	return res
end

function inventory.find(i)
	local itemSlots = {}
	for slot = 1, inventory.size do
		if inventory.slots[slot] ~= nil then
			if i == inventory.slots[slot] then
				table.insert(slot)
			end
		end
	end
	return itemSlots
end

function inventory.count(i)
	local c = 0
	for k, v in ipairs(inventory.find(i)) do
		c = c + inventory.slots[v].size
	end
	return c
end

function inventory.pull(i, amount, ignoreCraftingArea)
	local amount = amount or 1
	local destSlot = inventory.select()
	local itemTypes = itemarray.new()
	for k, v in pairs(inventory.find(i)) do
		itemTypes:add(inventory.slots[v])
	end
	for k, v in ipairs(itemTypes) do
		if inventory.count(v) >= amount then
			for kf, vf in ipairs(inventory.find(v)) do
				 if not (ignoreCraftingArea and inventory.isInCraftingArea(vf)) then
					if amount > 0 then
						inventory.select(vf)
						local pulled = inventory.slots[vf].size
						if not inventory.transfer(destSlot, amount) then
							return false
						end
						amount = amount - pulled
					else
						inventory.select(destSlot)
						return true
					end
				 end
			end
			break
		end
	end
	inventory.select(destSlot)
	return false
end

function inventory.throw(amount, ignoreCraftingArea, excludedSlots)
	local srcSlot = inventory.select()
	local amount = amount or inventory.slots[srcSlot].size
	
	-- Fill items first
	for k, v in pairs(inventory.find(inventory.slots[srcSlot])) do
		if not (ignoreCraftingArea and inventory.isInCraftingArea(v)) or not inventory.isInExcludedSlot(v, excludedSlots) then
			local curSlot = inventory.slots[v]
			if curSlot.size < curSlot.maxSize then
				local moveSize = math.min(curSlot.maxSize - curSlot.size, amount)
				if not inventory.transfer(v, moveSize) then
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
	for curSlot = 1, inventory.size do
		if not (ignoreCraftingArea and inventory.isInCraftingArea(v)) or not inventory.isInExcludedSlot(v, excludedSlots) then
			if inventory.slots[curSlot] == nil then
				if not inventory.transfer(curSlot, amount) then
					return false
				end
				return true
			end
		end
	end
	
	return false
end

function inventory.ex.isAvailable()
	-- TODO: check front inventory availability
end

function inventory.ex.getInventorySize()
	return invctrl.getInventorySize(3)
end

function inventory.ex.scanSlot(slot)
	local t = invctrl.getStackInInternalSlot(3, slot)
	if t == nil then
		return nil
	end
	return item.new(t)
end

function inventory.ex.request(i, amount)
	-- TODO: pull external item
end

function inventory.ex.send(i, amount)
	-- TODO: deposit item to inventory in front
end

function inventory.ex.throw(slot, amount)
	-- TODO: throw specific amount of selected slot in front
end

function inventory.ex.transferOut(exSlot, amount)
	return invctrl.dropIntoSlot(3, exSlot, amount)
end

function inventory.ex.transferIn(exSlot, amount)
	return invctrl.suckFromSlot(3, exSlot, amount)
end

return inventory
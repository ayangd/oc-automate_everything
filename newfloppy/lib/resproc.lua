local isRobotAcquired, robot = xpcall(require, debug.traceback, 'robot')
if not isRobotAcquired then
	print('Can\'t load robot module.')
	return
end

local component = require('component')
if component.crafting == nil then
	print('Can\'t load crafting component.')
	return
end
local crafting = component.crafting

local item = require('lib.type.item')
local itemarray = require('lib.type.itemarray')
local rawdb = require('lib.rawdb')
local craftingdb = require('lib.craftingdb')
local inventory = require('lib.inventory')

-- Class Meta
local ResProc = {}

-- Class Functions
function ResProc.load()
	rawdb.load()
	craftingdb.load()
end

function ResProc.save()
	rawdb.save()
	craftingdb.save()
end

function ResProc.getItemRecipe(i)
	if craftingdb.get(i) ~= nil then
		return craftingdb.get(i)
	end
	return nil
end

function ResProc.traceraw(it)
	if type(it) == 'table' then
		if getmetatable(it) ~= item then
			error('Can\'t trace non-item object.')
		end
	else
		error('Can\'t trace ' .. type(it) .. '.')
	end

	local itemAvailable = itemarray.new()
	local itemAdded = itemarray.new()
	
	local function addItem(i)
		itemAvailable:add(i)
		itemAdded:add(i)
	end
	
	local function createdItem(i)
		itemAvailable:add(i)
	end
	
	local function tryTakeItem(i)
		if itemAvailable:has(i) then
			itemAvailable:minus(i)
			return true
		end
		return false
	end
	
	local function processItem(i)
		if rawdb.has(i) then
			addItem(i)
		elseif ResProc.getItemRecipe(i) ~= nil then
			for ite = 1, math.ceil(i.size / ResProc.getItemRecipe(i).result.size) do
				for k, v in pairs(ResProc.getItemRecipe(i):itemsNeeded()) do
					while not tryTakeItem(v) do
						processItem(v)
					end
				end
				createdItem(ResProc.getItemRecipe(i).result)
			end
		else
			addItem(i)
		end
	end
	
	processItem(it)
	itemAdded:sort()
	itemAvailable:sort()
	return itemAdded, itemAvailable
end

function ResProc.clearCraftingArea()
	local craftingArea = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in ipairs(craftingArea) do
		if inventory.slots[v] ~= nil then
			inventory.select(v)
			if not inventory.throw() then
				return false
			end
		end
	end
end

function ResProc.lookup(it)
	if craftingdb.get(it) ~= nil then
		return craftingdb.get(it)
	elseif rawdb.get(it) ~= nil then
		return rawdb.get(it)
	else
		return nil
	end
end

function ResProc.keep(processing)
	if getmetatable(processing) == crafting then
		return craftingdb.set(processing)
	elseif getmetatable(processing) == item then
		return rawdb.add(processing)
	else
		return nil
	end
end

function ResProc.remove(it)
	if craftingdb.get(it) ~= nil then
		return craftingdb.remove(it)
	elseif rawdb.get(it) ~= nil then
		return rawdb(it)
	else
		return nil
	end
end

function ResProc.satisfiable(item, externalItem)
	-- Merge inventory items with external items
	local allItems = itemarray.new()
	for k, v in pairs(inventory.slots) do
		allItems:add(v)
	end
	if externalItem ~= nil then
		allItems:addAll(externalItem)
	end
	
	-- Unsatisfied items
	local unsatisfiedItems = itemarray.new()
	unsatisfiedItems:add(item)
	
	-- Drain and populate unsatisfied items until it's empty
	while #unsatisfiedItems ~= 0 do
		local unsatisfiedItem = table.remove(unsatisfiedItems, 1)
		if not allItems:has(unsatisfiedItem) then
			if (ResProc.getItemRecipe(unsatisfiedItem) == nil) or rawdb.has(unsatisfiedItem) then
				return false
			else
				unsatisfiedItems:addAll(ResProc.getItemRecipe(unsatisfiedItem):itemsNeeded() * unsatisfiedItem.size)
			end
		end
	end
	return true
end

function ResProc.isCraftable(item, externalItem)
	-- Merge inventory items with external items
	local allItems = itemarray.new()
	for k, v in pairs(inventory.slots) do
		allItems:add(v)
	end
	if externalItem ~= nil then
		allItems:addAll(externalItem)
	end
	
	-- Unsatisfied items
	local unsatisfiedItems = itemarray.new()
	unsatisfiedItems:add(item)
	
	-- Drain and populate unsatisfied items until it's empty
	while #unsatisfiedItems ~= 0 do
		local unsatisfiedItem = unsatisfiedItems:popSingle()
		if not allItems:has(unsatisfiedItem) then
			if (craftingdb.get(unsatisfiedItem) == nil) or rawdb.has(unsatisfiedItem) then
				return false
			else
				unsatisfiedItems:addAll(craftingdb.get(unsatisfiedItem):itemsNeeded())
				allItems:add(craftingdb.get(unsatisfiedItem).result)
			end
		else
			allItems:minus(unsatisfiedItem)
		end
	end
	return true
end

function ResProc.craft(item)
	-- Unsatisfied items
	local unsatisfiedItems = itemarray.new()
	unsatisfiedItems:add(item)
	
	-- Drain and populate unsatisfied items until it's empty
	while #unsatisfiedItems ~= 0 do
		local unsatisfiedItem = table.remove(unsatisfiedItems, 1)
		
		-- Check ingredients availability
		local allAvailable = true
		for k, v in ipairs(craftingdb.get(unsatisfiedItem):itemsNeeded()) do
			if inventory.count(v) < v.size then
				allAvailable = false
				if (craftingdb.get(v) == nil) or rawdb.has(v) then
					return false
				else
					if unsatisfiedItems:has(~v) then
						local addedItem = unsatisfiedItems:get(v)
						unsatisfiedItems:minus(addedItem)
						unsatisfiedItems:add(addedItem + v)
					else
						unsatisfiedItems:add(v)
					end
				end
			end
		end
		
		if allAvailable then
			if not inventory.clearCraftingArea() then
				return false
			end
			local craftingArea = {{1, 2, 3}, {5, 6, 7}, {9, 10, 11}}
			local icraft = craftingdb.get(unsatisfiedItem)
			for y = 1, icraft.dimension.height do
				for x = 1, icraft.dimension.width do
					inventory.select(craftingArea[y][x])
					inventory.pull(icraft.pattern[(y - 1) * icraft.dimension.height + x]:singleItem(), false)
				end
			end
			if not crafting.craft(1) then
				return false
			end
		end
	end
	
	return true
end

return ResProc
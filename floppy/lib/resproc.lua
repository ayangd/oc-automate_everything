local isRobotAcquired, robot = xpcall(require, debug.traceback, 'robot')
if not isRobotAcquired then
	print('Can\'t load robot module.')
	return
end

local item = require('lib.type.item')
local itemarray = require('lib.type.itemarray')
local rawdb = require('lib.rawdb')
local craftingdb = require('lib.craftingdb')
local crafting = require('lib.type.crafting')
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
		return rawdb.remove(it)
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
	if craftingdb.get(item) == nil then
		error('Can\'t craft ' .. tostring(item) .. '.')
	end
	
	-- Unsatisfied craftings
	local unsatisfiedCraftings = {}
	table.insert(unsatisfiedCraftings, craftingdb.get(item))
	
	while #unsatisfiedCraftings ~= 0 do
		local unsatisfiedCrafting = unsatisfiedCraftings[#unsatisfiedCraftings]
		
		-- Check ingredients availability
		local allAvailable = true
		for k, v in ipairs(unsatisfiedCrafting:itemsNeeded()) do
			if inventory.count(v) < v.size then
				allAvailable = false
				if (craftingdb.get(v) == nil) or rawdb.has(v) then
					print('this 1')
					return false
				else
					for kc, vc in ipairs(unsatisfiedCraftings) do
						if vc == craftingdb.get(v) then
							table.remove(unsatisfiedCraftings, kc)
						end
					end
					table.insert(unsatisfiedCraftings, craftingdb.get(v))
				end
			end
		end
		
		if allAvailable then
			if not inventory.clearCraftingArea() then
				print('this 2')
				return false
			end
			print('cleared')
			if unsatisfiedCrafting.shaped then
				local craftingArea = {{1, 2, 3}, {5, 6, 7}, {9, 10, 11}}
				for y = 1, unsatisfiedCrafting.dimension.height do
					for x = 1, unsatisfiedCrafting.dimension.width do
						if unsatisfiedCrafting.pattern[(y - 1) * unsatisfiedCrafting.dimension.width + x] ~= nil then
							inventory.select(craftingArea[y][x])
							inventory.pull(unsatisfiedCrafting.pattern[(y - 1) * unsatisfiedCrafting.dimension.width + x]:singleItem(), false)
						end
					end
				end
			else
				local craftingArea = {1, 2, 3, 5, 6, 7, 9, 10, 11}
				for k = 1, #unsatisfiedCrafting.pattern do
					inventory.select(craftingArea[k])
					inventory.pull(unsatisfiedCrafting.pattern[k]:singleItem(), false)
				end
			end
			inventory.select(8)
			if not component.crafting.craft(1) then
				print('this 3')
				return false
			end
			inventory.scanCraftingArea()
			table.remove(unsatisfiedCraftings)
		end
	end
	
	return true
end

return ResProc
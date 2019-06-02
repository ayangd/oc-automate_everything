local isRobotAcquired, robot = xpcall(require, debug.traceback, 'robot')
if not isRobotAcquired then
	print('Can\'t load robot module.')
	return
end


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

function ResProc.traceraw(i)
	local itemAvailable = itemarray.new()
	local itemAdded = itemarray.new()
	
	local function addItem(i)
		itemAvailable:add(i)
		itemAdded:add(i)
	end
	
	-- Check for item recipe
	local function getItemRecipe(i)
		if craftingdb.get(i) ~= nil then
			return craftingdb.get(i):itemsNeeded()
		end
		return nil
	end
	
	local function tryTakeItem(i)
		if itemAvailable:has(i) then
			itemAvailable:minus(i)
			return true
		end
		return false
	end
	
	local function processItem(i)
		if not tryTakeItem(i) then
			if getItemRecipe(i) == nil then
				addItem(i)
				processItem(i)
			else
				for k, v in (getItemRecipe(i) * i.size) do
					processItem(v)
				end
			end
		end
	end
	
	processItem(i)
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

function ResProc.make(item)
	-- TODO: make item
end

return ResProc
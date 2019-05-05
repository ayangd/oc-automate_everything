local robot = require('robot')
local invctrl = require('component').inventory_controller
local crafting = require('component').crafting
local importdir = (...):match("(.-)[^%.]+$")
local data = require(importdir .. 'data')
local inv = require(importdir .. 'inventory')

local craftingdb = {}
local rawdb = {}

local function clearCraftingArea()
	local craftingArea = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for k, v in pairs(craftingArea) do
		if inv.getInfo(v) ~= nil then
			inv.select(v)
			if not inv.move(inv.getInfo(v).size, false) then return false end
		end
	end
	return true
end

-- analyzeCrafting(shaped:boolean, ignoreMetadata:boolean):table
--	Analyzes the crafting recipe and it's result and put the result into a table.
--	Note: Put recipe into crafting grid before executing this function. Will try to craft.
--				Put inventory selection outside the crafting grid and on an empty slot.
--	Expected output:
--	 On success: A table containing array 1-9 and has result (which contains name and damage if not ignored).
--	 On failure: nil.
local function analyzeCrafting(shaped, ignoreMetadata)
	if not clearCraftingArea() then return nil end
	inv.select(8)
	if inv.getInfo() ~= nil then return nil end
	local itemTable = {}
	local itemSlots = {1, 2, 3, 5, 6, 7, 9, 10, 11}
	for i = 1, 9 do
		local item = {}
		local itemAnalyze = inv.getInfo(itemSlots[i]) or {}
		item.name = itemAnalyze.name
		if itemAnalyze.damage ~= nil then
			if ignoreMetadata == false then
				item.damage = math.floor(itemAnalyze.damage)
			elseif ignoreMetadata == nil then
				if itemAnalyze.damage ~= 0 then
					item.damage = math.floor(itemAnalyze.damage)
				end
			end
		end
		itemTable[#itemTable+1] = item
	end
	local craftResult, ccnt = crafting.craft(1)
	if not craftResult then return nil end
	local itemAnalyze = inv.getInfo() or {}
	local item = {}
	item.name = itemAnalyze.name
	if ignoreMetadata == false then
		item.damage = math.floor(itemAnalyze.damage)
	elseif ignoreMetadata == nil then
		if itemAnalyze.damage ~= 0 then
			item.damage = math.floor(itemAnalyze.damage)
		end
	end
	item.size = math.floor(itemAnalyze.size)
	itemTable.result = item
	itemTable.shaped = shaped
	return itemTable
end

-- craftingInfo(tb:table):(width:number, height:number, offsetX:number, offsetY:number)
--	Check for crafting table.
--	Expected output:
--	 width: The width of the crafting recipe.
--	 height: The height of the crafting recipe.
--	 offsetX: The leftmost recipe point.
--	 offsetY: the topmost recipe point.
local function craftingInfo(tb)
	local function scanRow(t, col) -- Help scan row
		local d
		for i = (col - 1) * 3 + 1, col * 3 do
			d = d or (t[i].name ~= nil)
		end
		return d
	end
	local function scanCol(t, row) -- Help scan column
		local d
		for i = 0, 2 do
			d = d or (t[(i * 3) + row].name ~= nil)
		end
		return d
	end

	local width, height, ofx, ofy = 0, 0
	if scanCol(tb, 1) and scanCol(tb, 3) then
		width = 3
		ofx = 1
	elseif (scanCol(tb, 1) and scanCol(tb, 2)) or (scanCol(tb, 2) and scanCol(tb, 3)) then
		width = 2
		if scanCol(tb, 1) then
			ofx = 1
		else
			ofx = 2
		end
	elseif scanCol(tb, 1) or scanCol(tb, 2) or scanCol(tb, 3) then
		width = 1
		for i=1, 3 do if scanCol(tb, i) then ofx = i end end
	else
		width = 0
		ofx = 0
	end

	if scanRow(tb, 1) and scanRow(tb, 3) then
		height = 3
		ofy = 1
	elseif (scanRow(tb, 1) and scanRow(tb, 2)) or (scanRow(tb, 2) and scanRow(tb, 3)) then
		height = 2
		if scanRow(tb, 1) then
			ofy = 1
		else
			ofy = 2
		end
	elseif scanRow(tb, 1) or scanRow(tb, 2) or scanRow(tb, 3) then
		height = 1
		for i=1, 3 do if scanRow(tb, i) then ofy = i end end
	else
		height = 0
		ofy = 0
	end

	return width, height, ofx, ofy
end

-- compressCrafting(tb:table):table
--	Compresses crafting table into smaller table, with addition of crafting size.
--	Expected output:
--	 When supplied with table: A smaller table with defined size (width and height).
--	 When supplied with nil: nil.
local function compressCrafting(tb)
	if tb == nil then return nil end
	local t = {result=tb.result, shaped = tb.shaped, width = 0, height = 0}
	if not tb.shaped then
		for i = 1, 9 do
			if tb[i].name ~= nil then
				t[#t+1] = tb[i]
			end
		end
		return t
	end

	local function scanRow(t, col) -- Help scan row
		local d
		for i = (col - 1) * 3 + 1, col * 3 do
			d = d or (t[i].name ~= nil)
		end
		return d
	end
	local function scanCol(t, row) -- Help scan column
		local d
		for i = 0, 2 do
			d = d or (t[(i * 3) + row].name ~= nil)
		end
		return d
	end
	local function coord2Array(x, y, w, h) -- Help convert coordinate to array number by size
		return x + y * w
	end

	local width, height, ofx, ofy = craftingInfo(tb)
	t.width = width
	t.height = height
	for x = 1, width do
		for y = 1, height do
			t[coord2Array(x - 1, y - 1, width, height) + 1] = tb[coord2Array(x + ofx - 2, y + ofy - 2, 3, 3) + 1]
		end
	end
	return t
end

-- getItemsUsed(tb:table):table
--	Get item names used in a crafting table.
--	Expected output:
--	 When supplied with table: All item names used in a crafting table.
--	 When supplied with nil: nil.
local function getItemsUsed(tb)
	if tb == nil then return nil end

	local function compareItem(i1, i2) if i1.name == i2.name and i1.damage == i2.damage then return true end end
	local function itemIndex(t, v)
		for i = 1, #t do
			if compareItem(t[i], v) then return i end
		end
		return 0
	end
	local function tableIsEmpty(t) for k, v in pairs(t) do return false end return true end

	local t = {}
	for i = 1, #tb do
		if itemIndex(t, tb[i]) == 0 then
			if not tableIsEmpty(tb[i]) then
				t[#t+1] = tb[i]
				t[#t].size = 1
			end
		else
			t[itemIndex(t, tb[i])].size = t[itemIndex(t, tb[i])].size + 1
		end
	end
	return t
end

local function indexItemByItemUsed(ct, it)
	local function compareItem(i1, i2) if i1.name == i2.name and i1.damage == i2.damage then return true end end
	local function itemIndex(t, v)
		for i = 1, #t do
			if compareItem(t[i], v) then return i end
		end
		return 0
	end

	local t = {}
	for i = 1, #ct do
		if itemIndex(it, ct[i]) ~= 0 then
			t[#t+1] = itemIndex(it, ct[i])
		else
			t[#t+1] = 0
		end
	end
	return t
end

local function crafting2String(tb)
	if tb == nil then return '' end

	-- Format: 'Item output name' 'item output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item recipe array|metadata' 'item shape'
	buf = tb.result.name
	if tb.result.damage then buf = buf .. '|' .. tostring(tb.result.damage) end
	buf = buf .. ' ' .. tostring(tb.result.size) .. ' '
	if tb.shaped then buf = buf .. 'sd' else buf = buf .. 'sl' end
	buf = buf .. ' ' .. tostring(tb.width) .. tostring(tb.height)
	local itemsUsed = getItemsUsed(tb)
	for _, i in pairs(itemsUsed) do
	  buf = buf .. ' ' .. i.name
	  if i.damage then buf = buf .. '|' .. tostring(i.damage) end
	end
	buf = buf .. ' '
	for _, i in pairs(indexItemByItemUsed(tb, itemsUsed)) do
		buf = buf .. tostring(i)
	end
	return buf
end

local function string2Crafting(s)
	if s == '' then return nil end

	local tb = {}
	local items = {[0] = {}}
	local craftingParams = data.strSplit(s)
	local i = data.strSplit(craftingParams[1], '|')
	tb.result = {name = i[1], damage = tonumber(i[2]), size = tonumber(craftingParams[2])}
	tb.shaped = (craftingParams[3] == 'sd')
	i = tonumber(craftingParams[4])
	tb.width, tb.height = math.floor(i/10), i - math.floor(i/10) * 10
	i = 5
	while tonumber(craftingParams[i]) == nil do
		local e = data.strSplit(craftingParams[i], '|')
		items[#items+1] = {name = e[1], damage = tonumber(e[2])}
		i = i + 1
	end
	i = craftingParams[i]
	for e = 1, #i do
		local u = tonumber(i:sub(e, e))
		tb[#tb+1] = items[u]
	end
	return tb
end

local function addToDatabase(tb)
	local name = tb.result.name
	if tb.result.damage ~= nil then name = name .. '|' .. tostring(tb.result.damage) end
	craftingdb[name] = tb
end

local function removeFromDatabase(name)
	craftingdb[name] = nil
end

local function loadCraftingRecipes()
	local f = io.open('crafting.db', 'r')
	local buf = f:read('*l')
	while buf ~= nil do
		if buf:sub(1,1) ~= '#' then
			local l = string2Crafting(buf)
			addToDatabase(l)
		end
		buf = f:read('*l')
	end
	f:close()
	return craftingdb
end

local function saveCraftingRecipes()
	local f = io.open('crafting.db', 'w')
	f:write("#Format:\n#'Item output name' 'item output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item recipe array|metadata' 'item shape'\n")
	for k, v in pairs(craftingdb) do
		local acraft = crafting2String(v)
		f:write(acraft .. '\n')
	end
	f:close()
end

local function printCrafting(tb)
	if tb == nil then
		print('No recipe.')
	else
		local shape = ''
		if tb.shaped then shape = 'shaped' else shape = 'shapeless' end
		if tb.result.damage == nil then
			print(string.format('Crafting: %d %s (%s)\n(%dx%d)', tb.result.size, tb.result.name, shape, tb.width, tb.height))
		else
			print(string.format('Crafting: %d %s|%d (%s)', tb.result.size, tb.result.name, tb.result.damage, shape))
		end
		for i = 1, #tb do
			local iname = tb[i].name
			if iname == nil then iname = '[Empty]' end
			if tb[i].damage == nil then
				print(string.format('[%d] %s', i, iname))
			else
				print(string.format('[%d] %s|%d', i, iname, tb[i].damage))
			end
		end
	end
end

local function listDatabase()
	local buf = ''
	for k, v in pairs(craftingdb) do
		buf = buf .. k .. '\n'
	end
	data.pagedPrint(buf)
end

local function loadRawItems()
	local f = io.open('raw.db', 'r')
	local l = f:read('*l')
	while l ~= nil do
		rawdb[l] = true
		l = f:read('*l')
	end
	f:close()
	return rawdb
end

local function saveRawItems()
	local f = io.open('raw.db', 'w')
	for k, v in pairs(rawdb) do
		f:write(k .. '\n')
	end
	f:close()
end

local function isRaw(name)
	if rawdb[name] ~= nil then
		return true
	end
	return false
end

local function addRaw(name)
	rawdb[name] = true
end

local function removeRaw(name)
	rawdb[name] = nil
end

local function listRaw()
	local buf = ''
	for k, v in pairs(rawdb) do
		buf = buf .. k .. '\n'
	end
	data.pagedPrint(buf)
end

local function getCraftableItemName(name)
	if data.strSplit(name, '|')[2] == nil then -- Recipe doesn't need damage/item all variant
		for k, v in pairs(craftingdb) do
			if data.strSplit(k, '|')[1] == name then
				return k
			end
		end
	else -- Recipe needs damage/item specific variant
		for k, v in pairs(craftingdb) do
			if k == name then
				return k
			end
		end
	end
	return nil
end

--[[ This function was deprecated and replaced by the new one below.
local function traceIngredients(name, stacktrace)

	local ingredients = {}
	local function pushstack(name)
		if stacktrace ~= nil then
			stacktrace[#stacktrace+1] = name
		else
			stacktrace = {name}
		end
	end

	local function popstack()
		if stacktrace ~= nil then
			if #stacktrace ~= 0 then
				stacktrace[#stacktrace] = nil
			end
		end
	end
	
	local function isRepeating(name)
		if stacktrace ~= nil then
			if #stacktrace > 1 then
				if stacktrace[#stacktrace - 1] == name then
					return true
				end
			end
		end
		return false
	end

	local function retrace(iname, tb)
		local items = getItemsUsed(tb)
		for k, v in pairs(items) do
			local itemname = v.name
			if v.damage ~= nil then itemname = itemname .. '|' .. tostring(v.damage) end
			pushstack(name)
			local anotherTrace = traceIngredients(itemname, stacktrace)
			for k, v in pairs(anotherTrace) do
				ingredients[k] = true
			end
		end
		return ingredients
	end

	if rawdb[name] == true then
		popstack()
		return {[name] = true}
	end
	if data.strSplit(name, '|')[2] == nil then -- Recipe doesn't need damage/item all variant
		for k, v in pairs(craftingdb) do
			if data.strSplit(k, '|')[1] == name then
				return retrace(k, v)
			end
		end
	else -- Recipe needs damage/item specific variant
		for k, v in pairs(craftingdb) do
			if k == name then
				return retrace(k, v)
			end
		end
	end
	popstack()
	return {[name] = true}
end
]]--

local function traceIngredients(item)
	local itemsAvailable = {}
	local itemsAdded = {}

	local function addItem(item, amount)
		local amount = amount or 1
		if itemsAvailable[item] == nil then
			itemsAvailable[item] = amount
		else
			itemsAvailable[item] = itemsAvailable[item] + amount
		end
		if itemsAdded[item] == nil then
			itemsAdded[item] = amount
		else
			itemsAdded[item] = itemsAdded[item] + amount
		end
	end

	local function createdItem(item, amount)
		if itemsAvailable[item] == nil then
			itemsAvailable[item] = amount
		else
			itemsAvailable[item] = itemsAvailable[item] + amount
		end
	end

	local function tryTakeItem(item, amount)
		local amount = amount or 1
		local itemToTake = ''
		if data.strSplit(item, '|')[2] == nil then
			for k, v in pairs(itemsAvailable) do
				if data.strSplit(k, '|')[1] == item then
					itemToTake = k
					break
				end
			end
			if itemToTake == '' then
				return false
			end
		else
			itemToTake = item
		end
		if itemsAvailable[itemToTake] == nil then
			return false
		else
			if itemsAvailable[itemToTake] > amount then
				itemsAvailable[itemToTake] = itemsAvailable[itemToTake] - amount
				return true
			elseif itemsAvailable[itemToTake] == amount then
				itemsAvailable[itemToTake] = nil
				return true
			elseif item ~= itemToTake then
				amount = amount - itemsAvailable[itemToTake]
				itemsAvailable[itemToTake] = nil
				return tryTakeItem(item, amount)
			else
				return false
			end
		end
	end

	local function craftItem(item, amount)
		local amount = amount or 1
		if rawdb[name] == true then
			addItem(item, amount)
		elseif getCraftableItemName(item) ~= nil then
			for i = 1, math.ceil(amount / craftingdb[getCraftableItemName(item)].result.size) do
				local itemsNeeded = getItemsUsed(craftingdb[getCraftableItemName(item)])
				for k, v in pairs(itemsNeeded) do
					local realname = v.name
					if v.damage ~= nil then realname = realname .. '|' .. tostring(v.damage) end
					while not tryTakeItem(realname, v.size) do
						craftItem(realname, v.size)
					end
				end
				createdItem(getCraftableItemName(item, craftingdb), craftingdb[getCraftableItemName(item)].result.size)
			end
		else
			addItem(item, amount)
		end
	end

	craftItem(item)
	return itemsAdded
end

local function printTracedIngredients(ti)
	local buf = ''
	if rawdb ~= nil then
		buf = buf .. '[+] In raw, [-] Not in raw.\n'
		for k, v in pairs(ti) do
			if rawdb[k] == true then
				buf = buf .. '[+] '
			else
				buf = buf .. '[-] '
			end
			buf = buf .. tostring(v) .. ' ' .. k .. '\n'
		end
	else
		for k, v in pairs(ti) do
			buf = buf .. '- ' .. tostring(v) .. ' ' .. k .. '\n'
		end
	end
	data.pagedPrint(buf)
end

local function isCraftingPossible(item, amount)
	data.quickAppend('crafting.log', string.format('[Info] Check if crafting %d %s is possible.\n', amount, item))
	if rawdb[item] == true then return false end
	if getCraftableItemName(item) == nil then return false end
	local craftingIterations = math.ceil(amount / craftingdb[getCraftableItemName(item)].result.size)
	data.quickAppend('crafting.log', string.format('[Info] Crafting Iterations: %d.\n', craftingIterations))
	for k, v in pairs(getItemsUsed(craftingdb[getCraftableItemName(item)])) do
		local realname = v.name
		if v.damage ~= nil then realname = realname .. '|' .. tostring(v.damage) end
		data.quickAppend('crafting.log', string.format('[Info] Realname: %s.\n', realname))
		if inv.count(realname) < (v.size * craftingIterations) then
			data.quickAppend('crafting.log', string.format('[Info] Need %d more.\n', v.size * craftingIterations - inv.count(realname)))
			return isCraftingPossible(realname , v.size * craftingIterations - inv.count(realname))
		end
	end
	data.quickAppend('crafting.log', string.format('[Info] Crafting %d %s is possible.\n', amount, item))
	return true
end

local function craft(item, amount)
	if not isCraftingPossible(item, amount) then
		data.quickAppend('crafting.log', string.format('[Fatal] Crafting impossible.\n'))
		return false
	end

	local function moveAndCraft(tb)
		data.quickAppend('crafting.log', string.format('[Info] Crafting %d %s.\n', tb.result.size, tb.result.name))
		if not clearCraftingArea() then return false end
		local craftingGrid = {{1, 2, 3}, {5, 6, 7}, {9, 10, 11}}
		local i = 1
		if tb.shaped then
			for y = 1, tb.height do
				for x = 1, tb.width do
					if tb[i].name ~= nil then
						inv.select(craftingGrid[y][x])
						local name = tb[i].name
						if tb[i].damage ~= nil then name = name .. '|' .. tostring(tb[i].damage) end
						inv.pull(name, 1, true)
					end
					i = i + 1
				end
			end
		else
			for y = 1, 3 do
				for x = 1, 3 do
					if tb[i] ~= nil then
						inv.select(craftingGrid[y][x])
						local name = tb[i].name
						if tb[i].damage ~= nil then name = name .. '|' .. tostring(tb[i].damage) end
						inv.pull(name, 1, true)
					end
					i = i + 1
				end
			end
		end
		inv.select(8)
		return crafting.craft(1)
	end

	local function recursiveCraft(item, amount)
		data.quickAppend('crafting.log', string.format('[Info] Recursive crafting %d %s.\n', amount, item))
		local craftingIterations = math.ceil(amount / craftingdb[getCraftableItemName(item)].result.size)
		data.quickAppend('crafting.log', string.format('[Info] Crafting iterations: %d.\n', craftingIterations))
		for k, v in pairs(getItemsUsed(craftingdb[getCraftableItemName(item)])) do
			if inv.count(v.name) < (v.size * craftingIterations) then
				data.quickAppend('crafting.log', string.format('[Info] Need %d more.\n', (v.size * craftingIterations) - inv.count(v.name)))
				recursiveCraft(v.name, (v.size * craftingIterations) - inv.count(v.name))
			end
		end
		local res = true
		for i = 1, craftingIterations do
			data.quickAppend('crafting.log', string.format('[Info] Crafting #%d.\n', i))
			res = res and moveAndCraft(craftingdb[getCraftableItemName(item)])
		end
		return res
	end

	return recursiveCraft(item, amount)
end

local function test(name)
	---------------------------------------------------------------------
	-- Function being tested
	---------------------------------------------------------------------
	local function traceIngredientsdbg(item)
		local itemsAvailable = {}
		local itemsAdded = {}

		local function addItem(item, amount)
			local amount = amount or 1
			--data.debugWaitSpace(string.format('[Function call] addItem(%s, %d)', item, amount))
			if itemsAvailable[item] == nil then
				itemsAvailable[item] = amount
			else
				itemsAvailable[item] = itemsAvailable[item] + amount
			end
			if itemsAdded[item] == nil then
				itemsAdded[item] = amount
			else
				itemsAdded[item] = itemsAdded[item] + amount
			end
		end
		
		local function createdItem(item, amount)
			local amount = amount or 1
			--data.debugWaitSpace(string.format('[Function call] createdItem(%s, %d)', item, amount))
			if itemsAvailable[item] == nil then
				itemsAvailable[item] = amount
			else
				itemsAvailable[item] = itemsAvailable[item] + amount
			end
		end
		
		local function tryTakeItem(item, amount)
			local amount = amount or 1
			--data.debugWaitSpace(string.format('[Function call] tryTakeItem(%s, %d)', item, amount))
			local itemToTake = ''
			if data.strSplit(item, '|')[2] == nil then
				for k, v in pairs(itemsAvailable) do
					if data.strSplit(k, '|')[1] == item then
						itemToTake = k
						break
					end
				end
			else
				itemToTake = item
			end
			if itemsAvailable[itemToTake] == nil then
				return false
			else
				if itemsAvailable[itemToTake] > amount then
					itemsAvailable[itemToTake] = itemsAvailable[itemToTake] - amount
					return true
				elseif itemsAvailable[itemToTake] == amount then
					itemsAvailable[itemToTake] = nil
					return true
				elseif item ~= itemToTake then
					amount = amount - itemsAvailable[itemToTake]
					itemsAvailable[itemToTake] = nil
					return tryTakeItem(item, amount)
				else
					return false
				end
			end
		end
		
		local function craftItem(item, amount)
			local amount = amount or 1
			--data.debugWaitSpace(string.format('[Function call] craftItem(%s, %d)', item, amount))
			if rawdb[name] == true then
				addItem(item, amount)
			elseif getCraftableItemName(item) ~= nil then
				for i = 1, math.ceil(amount / craftingdb[getCraftableItemName(item)].result.size) do
					local itemsNeeded = getItemsUsed(craftingdb[getCraftableItemName(item)])
					for k, v in pairs(itemsNeeded) do
						local realname = v.name
						if v.damage ~= nil then realname = realname .. '|' .. tostring(v.damage) end
						while not tryTakeItem(realname, v.size) do
							craftItem(realname, v.size)
						end
					end
					createdItem(craftingdb[getCraftableItemName(item, craftingdb)].result.name, craftingdb[getCraftableItemName(item, craftingdb)].result.size)
				end
			else
				addItem(item, amount)
			end
		end

		craftItem(item)
		return itemsAdded, itemsAvailable
	end
	---------------------------------------------------------------------
	-- [END] Function being tested
	---------------------------------------------------------------------

	
	---------------------------------------------------------------------
	-- Function being outputted
	---------------------------------------------------------------------
	local function saveTracedIngredients(ti, filename)
		local buf = ''
		if rawdb ~= nil then
			buf = buf .. '[+] In raw, [-] Not in raw.\n'
			for k, v in pairs(ti) do
				if rawdb[k] == true then
					buf = buf .. '[+] '
				else
					buf = buf .. '[-] '
				end
				buf = buf .. tostring(v) .. ' ' .. k .. '\n'
			end
		else
			for k, v in pairs(ti) do
				buf = buf .. '- ' .. tostring(v) .. ' ' .. k .. '\n'
			end
		end
		data.quickSave(filename, buf)
	end
	---------------------------------------------------------------------
	-- [END]Function being outputted
	---------------------------------------------------------------------
	
	local ia, iav = traceIngredientsdbg(name)
	io.write('itemAdded = ')
	data.printTable(ia)
	io.write('itemAvailable = ')
	data.printTable(iav)
end


return {
	craftingdb = craftingdb,
	rawdb = rawdb,
	clearCraftingArea = clearCraftingArea,
	analyzeCrafting = analyzeCrafting,
	craftingInfo = craftingInfo,
	compressCrafting = compressCrafting,
	getItemsUsed = getItemsUsed,
	indexItemByItemUsed = indexItemByItemUsed,
	crafting2String = crafting2String,
	string2Crafting = string2Crafting,
	loadCraftingRecipes = loadCraftingRecipes,
	saveCraftingRecipes = saveCraftingRecipes,
	addToDatabase = addToDatabase,
	removeFromDatabase = removeFromDatabase,
	printCrafting = printCrafting,
	listDatabase = listDatabase,
	loadRawItems = loadRawItems,
	saveRawItems = saveRawItems,
	isRaw = isRaw,
	addRaw = addRaw,
	removeRaw = removeRaw,
	listRaw = listRaw,
	getCraftableItemName = getCraftableItemName,
	traceIngredients = traceIngredients,
	printTracedIngredients = printTracedIngredients,
	isCraftingPossible = isCraftingPossible,
	craft = craft
	, test = test
}
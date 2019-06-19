local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local files = {['crafting.db']= [==[#Format:
#'Item output name' 'item output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item recipe array|metadata' 'item shape'
minecraft:chest 1 sd 33 minecraft:planks 111101111
minecraft:stick 4 sd 12 minecraft:planks 11
opencomputers:material|8 4 sd 33 minecraft:gold_nugget minecraft:redstone opencomputers:material|6 111232111
minecraft:planks|0 4 sl 00 minecraft:log|0 1
minecraft:iron_axe 1 sd 23 minecraft:iron_ingot minecraft:stick 111202
opencomputers:material|6 8 sd 33 minecraft:iron_ingot minecraft:gold_nugget minecraft:paper minecraft:redstone 111232040
minecraft:bow 1 sd 33 minecraft:stick minecraft:string 012102012
minecraft:paper 3 sd 31 minecraft:reeds 111
minecraft:diamond_pickaxe 1 sd 33 minecraft:diamond minecraft:stick 111020020
minecraft:furnace 1 sd 33 minecraft:cobblestone 111101111
minecraft:wooden_pickaxe 1 sd 33 minecraft:planks minecraft:stick 111020020
minecraft:iron_bars 16 sd 32 minecraft:iron_ingot 111111
minecraft:iron_nugget 9 sl 00 minecraft:iron_ingot 1
minecraft:iron_pickaxe 1 sd 33 minecraft:iron_ingot minecraft:stick 111020020
minecraft:stone_pickaxe 1 sd 33 minecraft:cobblestone minecraft:stick 111020020
minecraft:gold_nugget 9 sl 00 minecraft:gold_ingot 1
opencomputers:case2 1 sd 33 minecraft:gold_ingot opencomputers:material|8 minecraft:iron_bars minecraft:chest opencomputers:material|4 121343151
minecraft:crafting_table 1 sd 22 minecraft:planks 1111
minecraft:diamond_axe 1 sd 23 minecraft:diamond minecraft:stick 111202
minecraft:stone_axe 1 sd 23 minecraft:cobblestone minecraft:stick 111202
minecraft:ladder 3 sd 33 minecraft:stick 101111101
]==],['crafting.db.bak']= [==[#Format:
#'Item output name' 'item output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item recipe array|metadata' 'item shape'
minecraft:planks 4 sl 11 minecraft:log 1
minecraft:stick 4 sd 12 minecraft:planks 11
minecraft:crafting_table 1 sd 22 minecraft:planks 1111
minecraft:chest 1 sd 33 minecraft:planks 111101111
minecraft:wooden_pickaxe 1 sd 33 minecraft:cobblestone minecraft:stick 111020020
]==],['craftingmanager.lua']= [==[local crafting = require('util.crafting')
local data = require('util.data')
local inv = require('util.inventory')

local running = true
local slot = {}

local craftingdb = {}
local rawdb = {}

local commandUsages = {
	help = 'Usage: help',
	exit = 'Usage: exit',
	load = 'Usage: load <crafting/raw/all>',
	save = 'Usage: save <crafting/raw/all>',
	analyze = 'Usage: analyze <shaped/shapeless> [ignoreMetadata]',
	show = 'Usage: show <slot/name>',
	keep = 'Usage: keep',
	discard = 'Usage: discard',
	remove = 'Usage: remove <name>',
	list = 'Usage: list <crafting/raw>',
	select = 'Usage: select <slot>',
	addraw = 'Usage: addraw <name>',
	removeraw = 'Usage: removeraw <name>',
	trace = 'Usage: trace <name>',
	craft = 'Usage: craft <name> [amount]'
}

local function printUsage(command, indented)
	print(commandUsages[command])
end

local function wrongUsage(command)
	print('Invalid arguments!')
	printUsage(command)
end

local commandCallbacks = {
	help = function(args)
		local buf = ''
		for k, v in pairs(commandUsages) do
			buf = buf .. string.format('%s\n  %s\n', k, v)
		end
		data.pagedPrint(buf)
	end,
	exit = function(args) running = false end,
	load = function(args)
		if args[1] == 'crafting' then
			craftingdb = crafting.loadCraftingRecipes()
			print('Crafting recipes loaded.')
		elseif args[1] == 'raw' then
			rawdb = crafting.loadRawItems()
			print('Raw items loaded.')
		elseif args[1] == 'all' then
			craftingdb = crafting.loadCraftingRecipes()
			rawdb = crafting.loadRawItems()
			print('Crafting recipes and raw items loaded.')
		else
			wrongUsage('load')
		end
	end,
	save = function(args)
		if args[1] == 'crafting' then
			crafting.saveCraftingRecipes()
			print('Crafting recipes saved.')
		elseif args[1] == 'raw' then
			crafting.saveRawItems()
			print('Raw items saved.')
		elseif args[1] == 'all' then
			crafting.saveCraftingRecipes()
			crafting.saveRawItems()
			print('Crafting recipes and raw items saved.')
		else
			wrongUsage('save')
		end
	end,
	analyze = function(args)
		local shaped = true
		if args[1] == 'shaped' then
			shaped = true
		elseif args[1] == 'shapeless' then
			shaped = false
		else
			wrongUsage('analyze')
			return
		end
		local ignoreMetadata = true
		if args[2] == 'false' then
			ignoreMetadata = false
		elseif args[2] == 'true' then
			ignoreMetadata = true
		elseif args[3] == nil then
			ignoreMetadata = nil
		else
			wrongUsage('analyze')
			return
		end
		local analyzed = crafting.analyzeCrafting(shaped, ignoreMetadata)
		if analyzed == nil then
			print('Can\'t craft!')
		else
			slot = crafting.compressCrafting(analyzed)
			print('Item analyzed and put into slot.')
		end
	end,
	show = function(args)
		if args[1] == nil then
			wrongUsage('show')
			return
		end
		if args[1] == 'slot' then
			if slot.result == nil then
				print('Slot is empty.')
			else
				crafting.printCrafting(slot)
			end
		else
			if craftingdb[args[1]] == nil then
				print('Crafting is not available.')
			else
				crafting.printCrafting(craftingdb[args[1]])
			end
		end
	end,
	keep = function(args)
		if slot.result ~= nil then
			if slot.result == nil then
				print('Slot is empty!')
			else
				crafting.addToDatabase(slot)
				print('Added to the database.')
			end
		end
	end,
	discard = function(args)
		slot = {}
		print('Slot discarded.')
	end,
	remove = function(args)
		if args[1] == nil then
			wrongUsage('remove')
			return
		end
		if craftingdb[args[1]] == nil then
			print('Not in database.')
		else
			crafting.removeFromDatabase(args[1])
		end
	end,
	list = function(args)
		if args[1] == 'crafting' then
			crafting.listDatabase()
		elseif args[1] == 'raw' then
			crafting.listRaw()
		else
			wrongUsage('list')
		end
	end,
	select = function(args)
		if tonumber(args[1]) == nil then
			wrongUsage('select')
			return
		end
		local function tmp() inv.select(math.floor(tonumber(args[1]))) end
		local a, b = xpcall(tmp, debug.traceback)
		if a then
			print(string.format('Slot %d selected.', math.floor(tonumber(args[1]))))
		else
			print('Can\'t select!')
		end
	end,
	addraw = function(args)
		if args[1] == nil then
			wrongUsage('addraw')
			return
		end
		crafting.addRaw(args[1])
		print('Item added to raw database.')
	end,
	removeraw = function(args)
		if args[1] == nil then
			wrongUsage('removeraw')
			return
		end
		if rawdb[args[1]] == nil then
			print('Item is not in the raw database.')
		else
			crafting.removeRaw(args[1])
			print('Item removed from the database.')
		end
	end,
	trace = function(args)
		if args[1] == nil then
			wrongUsage('trace')
			return
		end
		crafting.printTracedIngredients(crafting.traceIngredients(args[1]))
	end,
	craft = function(args)
		local amount = 1
		if args[1] == nil then
			wrongUsage('craft')
			return
		end
		if tonumber(args[2]) ~= nil then
			amount = tonumber(args[2])
		end
		inv.scanInventory()
		if crafting.isCraftingPossible(args[1], amount) then
			if crafting.craft(args[1], amount) then
				print('Crafted successfully.')
			else
				print('Crafting failed.')
			end
		else
			print('Lack of ingredients.')
		end
	end
	, test = function(args) crafting.test(args[1]); print('tested') end
}

while running do
	io.stdout:write('crafting manager>')
	local command = data.strSplit(io.stdin:read('*l'))
	if commandCallbacks[command[1]] ~= nil then
		local args = {}
		for i = 2, #command do
			args[#args+1] = command[i]
		end
		commandCallbacks[command[1]](args)
	elseif command ~= '' then
		print('Command not understood.')
	end
end
]==],['crashtracker.lua']= [==[local shell = require('shell')
local fs = require('filesystem')

local args = {...}
local path = shell.resolve(table.remove(args, 1))

if not fs.exists(path) then
	if fs.exists(path .. '.lua') then
		path = path .. '.lua'
	else
		print('File not found.')
		return
	end
end

local a, b = xpcall(loadfile(path), debug.traceback, table.unpack(args))
if not a then
	local f = io.open('crashtracker.txt', 'w')
	f:write(b)
	f:close()
	print('Crash collected.')
end]==],['crashtracker.txt']= [==[/mnt/875/util/data.lua:26: attempt to perform arithmetic on a string value (local 'b')
stack traceback:
	machine:796: in metamethod '__div'
	/mnt/875/util/data.lua:26: in field 'mod'
	/mnt/875/util/crafting.lua:629: in field 'isCraftingPossible'
	/mnt/875/craftingmanager.lua:209: in field '?'
	/mnt/875/craftingmanager.lua:230: in main chunk
	[C]: in function 'xpcall'
	machine:791: in global 'xpcall'
	/mnt/875/crashtracker.lua:16: in main chunk
	(...tail calls...)
	[C]: in function 'xpcall'
	machine:791: in global 'xpcall'
	/lib/process.lua:63: in function </lib/process.lua:59>]==],['defs.lua']= [==[local fs = require('filesystem')
local shell = require('shell')
local path = fs.realPath(shell.getWorkingDirectory()) .. '/util'
local res = fs.list(path)
local fo = io.open('defs.txt', 'w')
for i in res do
	fo:write(i .. '\r\n')
	local f = io.open(path .. '/' .. i, 'r')
	local l = f:read('*l')
	while l ~= nil do
		if l:sub(1,14) == 'local function' then
			fo:write('  ' .. l .. '\r\n')
		end
		l = f:read('*l')
	end
end
fo:close()]==],['defs.txt']= [==[inventory.lua
  local function select(slot)
  local function getInventorySize()
  local function getInfo(slot)
  local function getExInfo(slot)
  local function getMinInfo(slot)
  local function getMinExInfo(slot)
  local function find(name)
  local function count(name)
  local function pull(name, amount)
  local function move(amount, ignoreCraftingArea)
  local function getExInventorySize()
  local function getAllStacks()
  local function send(slot, count)
  local function request(slot, count)
data.lua
  local function quickSave(filename, buffer)
  local function quickAppend(filename, buffer)
  local function strSplit(s, delim)
  local function pagedPrint(s)
  local function table2String(tb, name)
  local function printTable(tb, name)
  local function getSpaceKey()
  local function hasData(t)
  local function isEmpty(t)
  local function debugWaitSpace(s)
  local function dataInTable(d, t)
navigate.lua
  local function loadRobotPosition()
  local function saveRobotPosition()
  local function move(direction)
crafting.lua
  local function clearCraftingArea()
  local function analyzeCrafting(shaped, ignoreMetadata)
  local function craftingInfo(tb)
  local function compressCrafting(tb)
  local function getItemsUsed(tb)
  local function indexItemByItemUsed(ct, it)
  local function crafting2String(tb)
  local function string2Crafting(s)
  local function addToDatabase(tb, db)
  local function removeFromDatabase(name, db)
  local function loadCraftingRecipes()
  local function saveCraftingRecipes(craftingdb)
  local function printCrafting(tb)
  local function listDatabase(craftingdb)
  local function loadRawItems()
  local function saveRawItems(rawdb)
  local function isRaw(name, rawdb)
  local function addRaw(name, rawdb)
  local function removeRaw(name, rawdb)
  local function listRaw(rawdb)
  local function getCraftableItemName(name, craftingdb)
  local function traceIngredients(name, craftingdb, rawdb, stacktrace)
  local function traceIngredients(item, craftingdb, rawdb)
  local function printTracedIngredients(ti, rawdb)
  local function isCraftingPossible(item, amount, craftingdb, rawdb)
  local function craft(item, amount, craftingdb, rawdb)
  local function test(name, craftingdb, rawdb)
]==],['raw.db']= [==[minecraft:log|0
minecraft:diamond
minecraft:iron_ingot
opencomputers:material|4
minecraft:cobblestone
minecraft:gold_ingot
minecraft:string
minecraft:reeds
minecraft:iron_nugget
minecraft:redstone
]==],['robot.info']= [==[758 4 609 2]==],['setup.lua']= [==[local nav = require('util/navigate')

local function inputNumber(prompt)
  prompt = prompt or ''
  i = 0
  while true do
    io.write(prompt)
    i = tonumber(io.read())
    if i == nil then
      print('Not a good number.')
    else
      break
    end
  end
  return i
end

print('Tell me where am I now.')
local x, y, z= inputNumber('x: '), inputNumber('y: '), inputNumber('z: ')

print('Tell me where am I facing.')
print('[1] North\n[2] West\n[3] South\n[4] East')
local f = 0
while true do
  io.write('f: ')
  f = tonumber(io.read())
  if f == nil then
    print('Not a good number.')
  elseif (f < 1) or (f > 4) then
    print('Which facing?')
  else
    break
  end
end

print('Thank you. Now, I\'ll probably never get lost anymore.')

rp = nav.robotPosition
rp.x, rp.y, rp.z, rp.f = x, y, z, f
nav.saveRobotPosition()]==],['test.lua']= [==[local b = function() print('me first!') end

local function a()
  b()
end

local function b()
  print('b called')
end

a()]==],['util']={['crafting.lua']= [==[local robot = require('robot')
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
			if not inv.move(inv.getInfo(v).size, false) then 
				return false
			end
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

--[[
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
]]--

local function isCraftingPossible(item, amount)
	local itemUnsatisfied = {[item] = (amount or 1)}
	local itemSatisfied = {}
	local itemSpare = {}

	-- Try to empty itemUnsatisfied
	while next(itemUnsatisfied) ~= nil do
		-- Get the first element
		local itemname, itemamount = next(itemUnsatisfied)

		-- Try to satisfy some item
		if inv.count(itemname) >= itemUnsatisfied[itemname] + (itemSatisfied[itemname] or 0) then
			itemUnsatisfied[itemname], itemSatisfied[itemname] = nil, itemUnsatisfied[itemname]
		elseif inv.count(itemname) > (itemSatisfied[itemname] or 0) then
			itemUnsatisfied[itemname] = itemUnsatisfied[itemname] - inv.count(itemname)
			itemSatisfied[itemname] = (itemSatisfied[itemname] or 0) + inv.count(itemname)
		else
			-- If item can't be crafted
			if (rawdb[itemname] == true) or (getCraftableItemName(itemname) == nil) then
				print('Not enough ' .. itemname .. '.')
				return false
			end

			-- If item is craftable, exchange unsatisfied item with its recipes, amplified by the size
			-- Empty item spare first
			if itemSpare[itemname] ~= nil then
				if itemSpare[itemname] < itemamount then
					itemSpare[itemname] = nil
				else
					itemSpare[itemname] = itemSpare[itemname] - itemamount
				end
			end
			if itemSpare[itemname] == nil then
				local itemsNeeded = getItemsUsed(craftingdb[getCraftableItemName(itemname)])
				local amplification = math.ceil(itemamount / craftingdb[getCraftableItemName(itemname)].result.size)
				itemSpare[itemname] = (itemSpare[itemname] or 0) + data.mod(itemamount, craftingdb[getCraftableItemName(itemname)].result.size)
				itemUnsatisfied[itemname] = nil
				for i, a in pairs(itemsNeeded) do
					local addedItemName = a.name
					if a.damage ~= nil then addedItemName = addedItemName .. '|' .. tostring(a.damage) end
					itemUnsatisfied[addedItemName] = (itemUnsatisfied[addedItemName] or 0) + a.size * amplification
				end
			end
		end
	end

	-- itemUnsatisfied is empty. YAY :)
	return true
end

--[[
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
]]--

local function craft(item)
	if (rawdb[item] == true) or (getCraftableItemName(item) == nil) then return false end
	local itemUnsatisfied = {item}
	local itemSatisfied = {}

	------------------------------------------------------------------------------------
	-- TODO stacked crafting
	------------------------------------------------------------------------------------
	local function moveAndCraft(tb)
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
						if not inv.pull(name, 1, true) then return false end
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
						if not inv.pull(name, 1, true) then return false end
					end
					i = i + 1
				end
			end
		end
		inv.select(8)
		local res = crafting.craft(1)
		inv.scanCraftingArea()
		return res
	end

	-- Try empty craftingUnsatisfied
	while itemUnsatisfied[#itemUnsatisfied] ~= nil do
		local item = itemUnsatisfied[#itemUnsatisfied]
		local itemsNeeded = getItemsUsed(craftingdb[getCraftableItemName(item)])

		local mayCraft = true
		-- Test every ingredients
		for i, ia in pairs(itemsNeeded) do
			local realname = ia.name
			if ia.damage ~= nil then realname = realname .. '|' .. tostring(ia.damage) end

			-- If not enough items, try to craft
			if inv.count(realname) < ia.size then
				mayCraft = false
				if (rawdb[realname] == true) or (getCraftableItemName(realname) == nil) then
					if inv.count(realname) < ia.size then
						-- Can't go further, impossible without complete ingredients
						return false
					end
				else
					print(string.format('==>%s can be crafted.', realname))
					-- If item can be crafted, add more unsatisfied crafting
					local found = false
					for k, v in pairs(itemUnsatisfied) do
						if getCraftableItemName(v) == getCraftableItemName(realname) then
							-- Move to the lowest for priority.
							table.insert(itemUnsatisfied, table.remove(itemUnsatisfied, k))
							found = true
							break
						end
					end
					if not found then
						itemUnsatisfied[#itemUnsatisfied + 1] = realname
					end
				end
			end
		end

		-- Try to craft item
		if mayCraft then
			if moveAndCraft(craftingdb[getCraftableItemName(item)]) then
				itemUnsatisfied[#itemUnsatisfied] = nil
			end
		end
	end

	return true
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
]==],['data.lua']= [==[local event = require('event')
local gpu = require('component').gpu

local function quickSave(filename, buffer)
	local f = io.open(filename, 'w')
	f:write(buffer)
	f:close()
end

local function quickAppend(filename, buffer)
	local f = io.open(filename, 'a')
	f:write(buffer)
	f:close()
end

local function strSplit(s, delim)
	delim = delim or '%s'
	local t = {}
	for str in string.gmatch(s, '([^'..delim..']+)') do
		table.insert(t, str)
	end
	return t
end

local function mod(a, b)
	return a - math.floor(a / b) * b
end

local function pagedPrint(s)
	local screenWidth, screenHeight = gpu.getResolution()
	local function lineCount(str)
		count = 1
		for i = 1, #str do
			if str:sub(i, i) == '\n' then
				count = count + 1
			end
		end
		return count
	end
	local function brokeLines(str)
		local t = {}
		local l = ''
		for i = 1, #str do
			if str:sub(i, i) == '\n' then
				t[#t+1] = l
				l = ''
			elseif #l == screenWidth - 1 then
				t[#t+1] = l .. str:sub(i, i)
				l = ''
			else
				l = l .. str:sub(i, i)
			end
		end
		if l ~= '' then t[#t+1] = l end
		return t
	end

	local stay = true
	local brokenTableBuffer = brokeLines(s)
	for k, v in pairs(brokenTableBuffer) do
		if stay then
			io.write(v)
			stay = false
		else
			io.write('\n' .. v)
			if (#v == screenWidth) then stay = true end
		end
		if mod(k, screenHeight) == 0 then
			local evt, _, key, __ = event.pull()
			while ((evt ~= 'key_down') or (key ~= 32.0)) do evt,_,key,__=event.pull() end
		end
	end
	io.write('\n')
end

local function table2String(tb, name)
	local screenWidth, screenHeight = gpu.getResolution()
	screenWidth, screenHeight = math.floor(screenWidth), math.floor(screenHeight)
	local buf = ''

	local function tab(tabulation)
		return string.rep('  ', tabulation)
	end
	local function val(v)
		if type(v) == 'string' then
			return '\'' .. v .. '\''
		else
			return tostring(v)
		end
	end
	local function key(k)
		if type(k) == 'string' then
			return k
		else
			return tostring(k)
		end
	end
	local function tableLength(t)
		count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	local function createTable(t, tabulation, name)
		if type(t) ~= 'table' then return 'nil' end
		if next(t) == nil then return '{}' end
		local tabulation = tabulation or 0
		local buf = ''
		if name == nil then
			buf = buf .. '{'
		else
			buf = buf .. name .. ' = {'
		end
		tabulation = tabulation + 1
		local k, v = next(t, nil)
		while k do
			if type(v) == 'table' then
				buf = buf .. '\n' .. tab(tabulation) .. key(k) .. ' = ' .. createTable(v, tabulation + 1)
			else
				buf = buf .. '\n' .. tab(tabulation) .. key(k) .. ' = ' .. val(v)
			end
			if next(t, k) ~= nil then
				buf = buf .. ','
			end
			k, v = next(t, k)
		end
		tabulation = tabulation - 1
		buf = buf .. '\n' .. tab(tabulation) .. '}'
		return buf
	end

	return createTable(tb, 0, name)
end

local function printTable(tb, name)
	pagedPrint(table2String(tb, name))
end

local function getSpaceKey()
	event.pull('key_down', nil, 32)
end

local function hasData(t)
	for k, v in pairs(t) do
		return true
	end
	return false
end

local function isEmpty(t)
	return not hasData(t)
end

local function debugWaitSpace(s)
	io.write(s)
	getSpaceKey()
	io.write('\n')
end

local function dataInTable(d, t)
	for i, v in ipairs(t) do
		if v == d then
			return true
		end
	end
	return false
end

return {
	quickSave = quickSave,
	quickAppend = quickAppend,
	strSplit = strSplit,
	mod = mod,
	pagedPrint = pagedPrint,
	table2String = table2String,
	printTable = printTable,
	getSpaceKey = getSpaceKey,
	hasData = hasData,
	isEmpty = isEmpty,
	debugWaitSpace = debugWaitSpace,
	dataInTable = dataInTable
}]==],['inventory.lua']= [==[local invctrl = require('component').inventory_controller
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
}]==],['navigate.lua']= [==[local robot = require('robot')
local sides = require('sides')
local importdir = (...):match("(.-)[^%.]+$")
local data = require(importdir .. 'data')

local faces = {'north', 'west', 'south', 'east', [1] = 'north', [2] = 'west', [3] = 'south', [4] = 'east'}

local robotPosition = {
  x = 0,
  y = 0,
  z = 0,
  f = 0
}

local function loadRobotPosition()
  local fin = io.open('robot.info', 'r')
  local dat = data.strSplit(fin:read('*l'))
  local x, y, z, f = tonumber(dat[1]),
                     tonumber(dat[2]),
                     tonumber(dat[3]),
                     tonumber(dat[4])
  fin:close()
  robotPosition.x, robotPosition.y, robotPosition.z, robotPosition.f = x, y, z, f
end
loadRobotPosition()

local function saveRobotPosition()
  local fout = io.open('robot.info', 'w')
  local x, y, z, f = robotPosition.x, robotPosition.y, robotPosition.z, robotPosition.f
  fout:write(tostring(x)..' '..tostring(y)..' '..tostring(z)..' '..tostring(f))
  fout:close()
end

local function move(direction)
  loadRobotPosition()
  if direction == sides.down then
    local res = robot.down()
    if res then
      robotPosition.y = robotPosition.y - 1
    end
    saveRobotPosition()
    return res
  elseif direction == sides.up then
    local res = robot.up()
    if res then
      robotPosition.y = robotPosition.y + 1
    end
    saveRobotPosition()
    return res
  elseif direction == sides.back then
    local res = robot.back()
    if res then
      if     robotPosition.f == 1 then robotPosition.z = robotPosition.z + 1
      elseif robotPosition.f == 2 then robotPosition.x = robotPosition.x + 1
      elseif robotPosition.f == 3 then robotPosition.z = robotPosition.z - 1
      elseif robotPosition.f == 4 then robotPosition.x = robotPosition.x - 1
      end
    end
    saveRobotPosition()
    return res
  elseif direction == 3 then
    local res = robot.forward()
    if res then
      if     robotPosition.f == 1 then robotPosition.z = robotPosition.z - 1
      elseif robotPosition.f == 2 then robotPosition.x = robotPosition.x - 1
      elseif robotPosition.f == 3 then robotPosition.z = robotPosition.z + 1
      elseif robotPosition.f == 4 then robotPosition.x = robotPosition.x + 1
      end
    end
    saveRobotPosition()
    return res
  elseif direction == sides.left then
    local res = robot.turnLeft()
    if res then
      robotPosition.f = robotPosition.f + 1
      if robotPosition.f == 5 then robotPosition.f = 1 end
    end
    saveRobotPosition()
    return res
  elseif direction == sides.right then
    local res = robot.turnRight()
    if res then
      robotPosition.f = robotPosition.f - 1
      if robotPosition.f == 0 then robotPosition.f = 4 end
    end
    saveRobotPosition()
    return res
  else
    return false
  end
end

return {
  -- Fields
  faces = faces,
  robotPosition = robotPosition,

  -- Functions
  loadRobotPosition = loadRobotPosition,
  saveRobotPosition = saveRobotPosition,
  move = move
}]==],['reset.lua']= [==[package.loaded['util.crafting'] = nil
package.loaded['util.inventory'] = nil
package.loaded['util.data'] = nil
package.loaded['util.navigate'] = nil
]==]},['whereami.lua']= [==[local nav = require('util/navigate')
nav.loadRobotPosition()

local x, y, z, f = nav.robotPosition.x,
                   nav.robotPosition.y,
                   nav.robotPosition.z,
                   nav.robotPosition.f
print('I am at ('..tostring(x)..','..
                   tostring(y)..','..
                   tostring(z)..'), facing '..
                   nav.faces[f]..'.')]==]}

local function extractFiles(foldername, filetable)
	if not fs.isDirectory(foldername) then
		print('make folder "' .. foldername .. '"')
		fs.makeDirectory(foldername)
	end
	
	for filename, filecontent in pairs(filetable) do
		if type(filecontent) == 'table' then
			extractFiles(foldername .. '/' .. filename, filecontent)
		else
			print('extract "' .. filename .. '"')
			local f = io.open(foldername .. '/' .. filename, 'w')
			f:write(filecontent)
			f:close()
		end
	end
end

extractFiles(cd, files)

print('Done.')
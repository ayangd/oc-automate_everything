local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local files = {['craftmgr.lua']= [==[local isRobotAcquired, robot = xpcall(require, debug.traceback, 'robot')
if not isRobotAcquired then
	print('Can\'t load robot module.')
	return
end

local stringlib = require('lib.stringlib')
local resproc = require('lib.resproc')
local rawdb = require('lib.rawdb')
local craftingdb = require('lib.craftingdb')
local inventory = require('lib.inventory')

local crafting = require('lib.type.crafting')
local item = require('lib.type.item')

-----------------------
-- Command class start
-----------------------
local Command = {['usage'] = '', ['func'] = nil}

function Command.new()
	local o = {}
	setmetatable(o, Command)
	Command.__index = Command
	o.usage = ''
	o.func = nil
	return o
end
-----------------------
-- Command class end
-----------------------

local running = true
local slot = {}
local changed = false

local function wrongUsage(command)
	print('Invalid arguments!')
	print(command.usage)
end

local commands = {}

commands.help = Command.new()
commands.help.usage = 'help'
commands.help.func = function(command)
	if command ~= nil then
		if commands[command] ~= nil then
			print(commands[command].usage)
			return
		else
			print('No such command.')
		end
	end
	local cmdlist = {}
	for k, v in pairs(commands) do
		table.insert(cmdlist, v.usage)
	end
	table.sort(cmdlist)
	local printbuffer = ''
	for k, v in ipairs(cmdlist) do
		printbuffer = printbuffer .. v .. '\n'
	end
	stringlib.pagedPrint(printbuffer)
end

commands.exit = Command.new()
commands.exit.usage = 'exit'
commands.exit.func = function()
	if changed then
		io.stdout:write('Changes has been made. Would you like to save all before exiting? [y/n/C]')
		local userInput = io.stdin:read('*l')
		if string.lower(userInput) == 'y' then
			commands.save.func()
			running = false
		elseif string.lower(userInput) == 'n' then
			running = false
		end
	else
		running = false
	end
end

commands.reload = Command.new()
commands.reload.usage = 'reload'
commands.reload.func = function()
	resproc.load()
	print('Resources loaded successfully.')
end

commands.rescan = Command.new()
commands.rescan.usage = 'rescan'
commands.rescan.func = function()
	inventory.scan()
	print('Inventory scanned.')
end

commands.save = Command.new()
commands.save.usage = 'save'
commands.save.func = function()
	resproc.save()
	print('Resources saved successfully.')
end

commands.analyze = Command.new()
commands.analyze.usage = 'analyze <crafting> <shaped/shapeless> [ignoreMetadata]'
commands.analyze.func = function(processor, ...)

	local processors = {}
	processors.crafting = function(shape, ignoreMetadata)
		if shape == nil then
			commands.help.func('analyze')
			return
		elseif (shape ~= 'shaped') or (shape ~= 'shapeless') then
			commands.help.func('analyze')
			return
		end
		local shaped = (shape == 'shaped') and true or false
		
		-- Check result slot
		if inventory.scanSlot(8) ~= nil then
			inventory.select(8)
			if not inventory.throw() then
				print('Crafting obstructed.')
				return
			end
		end
		
		-- Scan pattern
		local craftingArea = {1, 2, 3, 5, 6, 7, 9, 10, 11}
		local scanPattern = {}
		for k, v in ipairs(craftingArea) do
			scanPattern[k] = ~inventory.scanSlot(v)
			if ignoreMetadata == true then
				scanPattern[k]:ignoreDamage()
			elseif ignoreMetadata == nil then
				if scanPattern[k].damage == 0 then
					scanPattern[k]:ignoreDamage()
				end
			end
		end
		
		local pattern
		if shaped then
			-- Shrink pattern
			local w, h, ox, oy = 3, 3, 0, 0
			local function r(n)
				local d
				for i = (n-1)*3+1, n*3 do
					d = d or (pattern[i] ~= nil)
				end
				return d
			end
			local function c(n)
				local d
				for i = 0, 2 do
					d = d or (pattern[(i*3)+n] ~= nil)
				end
				return d
			end
			if c(1) and c(3) then
				w, ox = 3, 0
			elseif (c(1) and c(2)) or (c(2) and c(3)) then
				w, ox = 2, c(1) and 1 or 2
			elseif c(1) or c(2) or c(3) then
				w, ox = 1, c(1) and 1 or (c(2) and 2 or 3)
			else
				w, ox = 0, 0
			end
			if r(1) and r(3) then
				h, oy = 3, 0
			elseif (r(1) and r(2)) or (r(2) and r(3)) then
				h, oy = 2, r(1) and 1 or 2
			elseif r(1) or r(2) or r(3) then
				h, oy = 1, r(1) and 1 or (r(2) and 2 or 3)
			else
				h, oy = 0, 0
			end
			local function xy(x, y, w, h)
				return x + y * w
			end
			for y = 1, h do
				for x = 1, w do
					pattern[xy(x-1, y-1, w, h)+1] = scanPattern[xy(x+ox-2, y+oy-2, 3, 3)+1]
				end
			end
		else
			for k, v in pairs(scanPattern) do
				pattern[#pattern+1] = v
			end
		end
		
		-- Craft item
		if not robot.craft(1) then
			print('Can\'t craft!')
			return
		end
		local result = inventory.scanSlot(8)
		
		-- Put crafting in slot
		slot = Crafting.new({width = w, height = h}, pattern, shaped, result)
		print('Put crafting in slot.')
	end
	
	if processors[string.lower(processor)] == nil then
		commands.help.func('analyze')
		return
	else
		processors[string.lower(processor)](...)
	end
end

commands.show = Command.new()
commands.show.usage = 'show/see/peek/look <slot/item>'
commands.show.func = function(it)
	if it == nil then
		commands.help.func('show')
		return
	end
	
	local sit
	if it == 'slot' then
		sit = slot
	else
		sit = resproc.lookup(~item.new(it))
	end
	
	processors = {}
	processors.crafting = function(ii)
		local printbuffer = 'Crafting: ' .. '(' .. tostring(ii.dimension.width) .. 'x' .. tostring(ii.dimension.height) .. ') '
		printbuffer = printbuffer .. ii.shaped and 'shaped' or 'shapeless' .. ' '
		printbuffer = printbuffer .. tostring(ii.result) .. '\n'
		for k, v in ipairs(ii.pattern) do
			printbuffer = printbuffer .. '[' .. tostring(k) .. '] ' .. tostring(v) .. '\n'
		end
		
		print(printbuffer)
	end
	
	if sit == nil then
		print('Nothing to show.')
		return
	elseif getmetatable(sit) == crafting then
		processors.crafting(sit)
	end
end

commands.see = commands.show
commands.peek = commands.show
commands.look = commands.show

commands.keep = Command.new()
commands.keep.usage = 'keep <slot/item>'
commands.keep.func = function(it)
	if it == 'slot' then
		if slot == nil then
			print('Nothing to keep')
			return
		else
			resproc.keep(slot)
			if getmetatable(slot) == crafting then
				print('Crafting keep.')
			end
		end
	else
		resproc.keep(~item.new(it))
		changed = true
		print('Item keep')
	end
end

commands.discard = Command.new()
commands.discard.usage = 'discard'
commands.discard.func = function()
	slot = nil
	print('Slot cleared.')
end

commands.remove = Command.new()
commands.remove.usage = 'remove <item>'
commands.remove.func = function(it)
	local processing = resproc.remove(it)
	if getmetatable(processing) == crafting then
		changed = true
		print('Removed crafting.')
	elseif getmetatable(processing) == item then
		changed = true
		print('Raw removed.')
	else
		print('Nothing removed.')
	end
end

commands.list = Command.new()
commands.list.usage = 'list <raw/crafting>'
commands.list.func = function(processor)
	local printbuffer = ''
	if processor == 'raw' then
		printbuffer = 'List of raw:\n'
		for k, v in ipairs(rawdb.db) do
			printbuffer = printbuffer .. tostring(v) .. '\n'
		end
	elseif processor == 'crafting' then
		printbuffer = 'List of crafting:\n'
		for k, v in craftingdb.sortedCraftingPairs() do
			printbuffer = printbuffer .. tostring(~k) .. '\n'
		end
	else
		commands.help.func('list')
		return
	end
	stringlib.pagedPrint(printbuffer)
end

commands.select = Command.new()
commands.select.usage = 'select <slot>'
commands.select.func = function(sl)
	inventory.select(tostring(sl))
end

commands.traceraw = Command.new()
commands.traceraw.usage = 'traceraw <item>'
commands.traceraw.func = function(it)
	local sit
	if it ~= nil then
		sit = item.new(it)
	else
		commands.help.func('traceraw')
		return
	end
	
	if resproc.lookup(sit) ~= nil then
		if getmetatable(resproc.lookup(sit)) ~= item then
			local printbuffer
			if getmetatable(resproc.lookup(sit)) == crafting then
				printbuffer = 'Crafting: ' .. tostring(resproc.lookup(sit).result) .. '\n'
			end
			local itemAdded, itemAvailable = resproc.traceraw(sit)
			for k, v in ipairs(itemAdded) do
				printbuffer = printbuffer .. tostring(v) .. '\n'
			end
			stringlib.pagedPrint(printbuffer)
		else
			print('It\'s an item')
		end
	else
		print('Can\'t trace.')
	end
end

commands.craft = Command.new()
commands.craft.usage = 'craft <item>'
commands.craft.func = function(it)
	local sit
	if it ~= nil then
		sit = item.new(it)
	else
		commands.help.func('craft')
		return
	end
	
	if resproc.isCraftable(sit) then
		if resproc.craft(sit) then
			print('Crafted successfully.')
		else
			print('Crafting failed.')
		end
	else
		print('Not enough items to craft.')
	end
end

commands.clear = Command.new()
commands.clear.usage = 'clear'
commands.clear.func = function(...)
	print('TODO: clear processing area')
end

while running do
	io.stdout:write('craftmgr>')
	local commandstr = stringlib.split(io.stdin:read('*l'))
	local commandname = string.lower(table.remove(commandstr, 1))
	if commands[commandname] ~= nil then
		commands[commandname].func(table.unpack(commandstr))
	else
		print('Command unrecognized.')
	end
end]==],['ct.lua']= [==[local shell = require('shell')
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

local a, b = xpcall(dofile, debug.traceback, path, table.unpack(args))
if not a then
	local f = io.open('ct.txt', 'w')
	f:write(b)
	f:close()
	print('Crash collected.')
end]==],['ct.txt']= [==[attempt to index a nil value
stack traceback:
	machine:796: in function <machine:791>
	[C]: in for iterator 'for iterator'
	/mnt/cf4/lib/inventory.lua:59: in function </mnt/cf4/lib/inventory.lua:58>
	(...tail calls...)
	/mnt/cf4/lib/inventory.lua:143: in field 'throw'
	/mnt/cf4/lib/inventory.lua:179: in field 'clearCraftingArea'
	/mnt/cf4/lib/resproc.lua:223: in field 'craft'
	/mnt/cf4/craftmgr.lua:363: in field 'func'
	/mnt/cf4/craftmgr.lua:384: in main chunk
	(...tail calls...)
	[C]: in function 'xpcall'
	machine:791: in global 'xpcall'
	/mnt/cf4/ct.lua:16: in main chunk
	(...tail calls...)
	[C]: in function 'xpcall'
	machine:791: in global 'xpcall'
	/lib/process.lua:63: in function </lib/process.lua:59>]==],['db']={['crafting.db']= [==[#Format:
#'Item output name' 'item shape' output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item recipe array|metadata' 'item
minecraft:bow 1 sd 33 012102012 minecraft:stick minecraft:string
minecraft:chest 1 sd 33 111101111 minecraft:planks
minecraft:crafting_table 1 sd 22 1111 minecraft:planks
minecraft:diamond_axe 1 sd 23 111202 minecraft:diamond minecraft:stick
minecraft:diamond_pickaxe 1 sd 33 111020020 minecraft:diamond minecraft:stick
minecraft:furnace 1 sd 33 111101111 minecraft:cobblestone
minecraft:gold_nugget 9 sl 00 1 minecraft:gold_ingot
minecraft:iron_axe 1 sd 23 111202 minecraft:iron_ingot minecraft:stick
minecraft:iron_bars 16 sd 32 111111 minecraft:iron_ingot
minecraft:iron_nugget 9 sl 00 1 minecraft:iron_ingot
minecraft:iron_pickaxe 1 sd 33 111020020 minecraft:iron_ingot minecraft:stick
minecraft:ladder 3 sd 33 101111101 minecraft:stick
minecraft:paper 3 sd 31 111 minecraft:reeds
minecraft:planks|0 4 sl 00 1 minecraft:log|0
minecraft:stick 4 sd 12 11 minecraft:planks
minecraft:stone_axe 1 sd 23 111202 minecraft:cobblestone minecraft:stick
minecraft:stone_button 1 sl 00 1 minecraft:stone|0
minecraft:stone_button|0 1 sl 00 1 minecraft:stone|0
minecraft:stone_pickaxe 1 sd 33 111020020 minecraft:cobblestone minecraft:stick
minecraft:wooden_pickaxe 1 sd 33 111020020 minecraft:planks minecraft:stick
opencomputers:case2 1 sd 33 121343151 minecraft:gold_ingot opencomputers:material|8 minecraft:iron_bars minecraft:chest opencomputers:material|4
opencomputers:component|1 1 sd 33 121343151 minecraft:gold_nugget minecraft:redstone opencomputers:material|8 opencomputers:material|11 opencomputers:material|10
opencomputers:component|7 1 sd 32 121030 opencomputers:material|7 opencomputers:material|8 opencomputers:material|4
opencomputers:keyboard 1 sd 32 111123 opencomputers:material|14 opencomputers:material|15 opencomputers:material|16
opencomputers:material|14 1 sd 32 111111 minecraft:stone_button
opencomputers:material|15 1 sd 32 010111 minecraft:stone_button
opencomputers:material|16 1 sd 33 111111111 minecraft:stone_button
opencomputers:material|6 8 sd 33 111232040 minecraft:iron_ingot minecraft:gold_nugget minecraft:paper minecraft:redstone
opencomputers:material|7 8 sd 33 111232111 minecraft:iron_nugget minecraft:redstone opencomputers:material|6
opencomputers:material|8 4 sd 33 111232111 minecraft:gold_nugget minecraft:redstone opencomputers:material|6
opencomputers:screen1 1 sd 33 121234121 minecraft:iron_ingot minecraft:redstone opencomputers:material|7 minecraft:glass
]==],['raw.db']= [==[minecraft:reeds
minecraft:log|0
minecraft:redstone
minecraft:stone|0
minecraft:gold_ingot
minecraft:iron_ingot
minecraft:string
minecraft:glass
minecraft:cobblestone
minecraft:diamond
opencomputers:material|4
minecraft:iron_nugget
]==]},['lib']={['craftingdb.lua']= [==[local item = require('lib.type.item')
local itemarray = require('lib.type.itemarray')
local crafting = require('lib.type.crafting')

local stringlib = require('lib.stringlib')

-- Class Meta
local craftingdb = {
	db = {}
}

-- Class Init
local craftingdbpath = 'db/crafting.db'
function craftingdb.load()
	local f = io.open(craftingdbpath, 'r')
	local l = f:read('*l')
	while l ~= nil do
		if (l:sub(1,1) ~= '#') and (l ~= '') then
			local dimension = {width = 0, height = 0}
			local pattern = {}
			local shaped = true
			local result = {}
			local craftingParams = stringlib.split(l)
			result = item.new(craftingParams[1])
			result.size = tonumber(craftingParams[2])
			shaped = (craftingParams[3] == 'sd')
			dimension.width, dimension.height = tonumber(craftingParams[4]:sub(1,1)), tonumber(craftingParams[4]:sub(2,2))
			local pat = craftingParams[5]
			local items = itemarray.new()
			for i = 6, #craftingParams do
				items:add(~item.new(craftingParams[i]))
			end
			for npat = 1, #pat do
				pattern[npat] = items[tonumber(pat:sub(npat, npat))]
			end
			craftingdb.db[result] = crafting.new(dimension, pattern, shaped, result)
		end
		l = f:read('*l')
	end
	f:close()
end
io.write('Loading craftingdb... ')
craftingdb.load()
local craftingCount = 0
for k, v in pairs(craftingdb.db) do
	craftingCount = craftingCount + 1
end
io.write (string.format('%d loaded.\n', craftingCount))

function craftingdb.sortedCraftingPairs()
	local a = {}
	for n in pairs(craftingdb.db) do table.insert(a, n) end
	table.sort(a, function(a, b) return a.name < b.name end)
	local i = 0
	return function()
		i = i + 1
		if a[i] == nil then
			return nil
		else
			return a[i], craftingdb.db[a[i]]
		end
	end
end

function craftingdb.save()
	-- Format: 'Item output name' 'item output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item shape' 'item recipe array|metadata'
	local f = io.open(craftingdbpath, 'w')
	f:write("#Format:\n#'Item output name' 'item output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item recipe array|metadata' 'item shape'\n")
	function sortedCraftingPairs(t, f)
		
	end
	for k, v in craftingdb.sortedCraftingPairs() do
		local itemoutput = tostring(~v)
		local itemoutputq = v.size
		local itemshape = v and 'sd' or 'sl'
		local dim = tostring(v.dimension.width) .. tostring(v.dimension.height)
		local itemUsed = v:itemsNeeded()
		local itemPattern = ''
		for k, v in pairs(v.pattern) do
			itemPattern = itemPattern + itemUsed:indexDamage(v) or '0'
		end
		local allitems = ''
		for k, v in ipairs(itemUsed) do
			allitems = allitems + tostring(v) + ' '
		end
		allitems = allitems:sub(1, #allitems)
		f:write(itemoutput .. ' ' .. itemoutputq .. ' ' .. itemshape .. ' ' .. dim .. ' ' .. itemPattern .. ' ' .. allitems .. '\n')
	end
	f:close()
end

-- Class Functions
function craftingdb.get(i)
	for k, v in pairs(craftingdb.db) do
		if i == k then
			return v
		end
	end
	return nil
end

function craftingdb.set(crafting)
	craftingdb.db[crafting.result.name] = crafting
	return craftingdb.db[crafting.result.name]
end

function craftingdb.remove(i)
	for k, v in pairs(craftingdb.db) do
		if i:compareDamage(k) then
			local tmp = craftingdb.db[k]
			craftingdb.db[k] = nil
			return tmp
		end
	end
	return nil
end

return craftingdb]==],['init.lua']= [==[-- Lib base. Run first.

-- Override type
local original_type = type
function type(v)
	local otype = original_type(v)
	if otype == 'table' then
		if v.type ~= nil then
			return v.type
		end
	end
	return otype
end]==],['inventory.lua']= [==[local isRobotAcquired, robot = xpcall(require, debug.traceback, 'robot')
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
io.write('Scanning inventory... ')
Inventory.scan()
io.write('Done.\n')

function Inventory.scanCraftingArea()
	local craftingArea = {1, 2, 3, 5, 6, 7, 8, 9, 10, 11}
	for i = 1, #craftingArea do
		Inventory.updateSlot(i)
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
	return Inventory.isInExcludedSlot({1, 2, 3, 5, 6, 7, 8, 9, 10, 11})
end

function Inventory.transfer(slotDest, amount)
	local slotSize = Inventory.slots[Inventory.select()].size
	local amount = (amount < slotSize) and slotSize or amount
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
				 if not (ignoreCraftingArea and Inventory.isInCraftingArea(vf)) then
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
	return false
end

function Inventory.throw(amount, ignoreCraftingArea, excludedSlots)
	local srcSlot = Inventory.select()
	local amount = amount or Inventory.slots[srcSlot].size
	local ignoreCraftingArea = ignoreCraftingArea
	if ignoreCraftingArea == nil then ignoreCraftingArea = true end
	local excludedSlots = excludedSlots or {}
	
	-- Fill items first
	for k, v in pairs(Inventory.find(Inventory.slots[srcSlot])) do
		if not ((not ignoreCraftingArea and Inventory.isInCraftingArea(v))) and not Inventory.isInExcludedSlot(v, excludedSlots) then
			local curSlot = Inventory.slots[v]
			if curSlot.size < curSlot.maxSize then
				local moveSize = math.min(curSlot.maxSize - curSlot.size, amount)
				print('fill')
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
		if not (ignoreCraftingArea and Inventory.isInCraftingArea(v)) or not Inventory.isInExcludedSlot(v, excludedSlots) then
			if Inventory.slots[curSlot] == nil then
				print('add')
				if not Inventory.transfer(curSlot, amount) then
					return false
				end
				return true
			end
		end
	end
	
	return false
end

function Inventory.clearCraftingArea()
	for k, v in ipairs({1, 2, 3, 5, 6, 7, 8, 9, 10, 11}) do
		if Inventory.slots[v] ~= nil then
			Inventory.select(v)
			if Inventory.throw(Inventory.slots[v].size, false) == false then
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

return Inventory]==],['rawdb.lua']= [==[local item = require('lib.type.item')
local itemarray = require('lib.type.itemarray')

local stringlib = require('lib.stringlib')

-- Class Meta
local rawdb = {
	db = {}
}

-- Class Init
local rawdbpath = 'db/raw.db'

function rawdb.sort()
	table.sort(rawdb.db, function(a, b) return a.name < b.name end)
end

function rawdb.load()
	rawdb.db = {}
	local f = io.open(rawdbpath, 'r')
	local l = f:read('*l')
	while l ~= nil do
		table.insert(rawdb.db, ~item.new(l))
		l = f:read('*l')
	end
	rawdb.sort()
	f:close()
end
io.write('Loading rawdb... ')
rawdb.load()
local rawCount = 0
for k, v in ipairs(rawdb.db) do
	rawCount = rawCount + 1
end
io.write(string.format('%d loaded.\n', rawCount))

function rawdb.save()
	rawdb.db:sort()
	local f = io.open(rawdbpath, 'w')
	for k, v in ipairs(rawdb.db) do
		f:write(tostring(v) .. '\n')
	end
	f:close()
end

-- Class Functions
function rawdb.get(i)
	if getmetatable(i) ~= item then
		error('Can\'t find ' .. type(item) .. ' from rawdb.')
	end
	for k, v in ipairs(rawdb.db) do
		if i:compareDamage(v) then
			return v
		end
	end
	return nil
end

function rawdb.has(i)
	return rawdb.get(i) ~= nil
end

function rawdb.add(i)
	if getmetatable(i) ~= item then
		error('Can\'t add ' .. type(item) .. ' to rawdb.')
	end
	table.insert(rawdb.db, i)
	rawdb.sort()
	return i
end

function rawdb.remove(i)
	for k, v in ipairs(rawdb.db) do
		if compareDamage(v) then
			return table.remove(k)
		end
	end
	return nil
end

return rawdb]==],['reset.lua']= [==[package.loaded['lib.craftingdb'] = nil
package.loaded['lib.rawdb'] = nil
package.loaded['lib.inventory'] = nil
package.loaded['lib.stringlib'] = nil
package.loaded['lib.tablelib'] = nil
package.loaded['lib.resproc'] = nil
package.loaded['lib.type.item'] = nil
package.loaded['lib.type.crafting'] = nil
package.loaded['lib.type.itemarray'] = nil]==],['resproc.lua']= [==[local isRobotAcquired, robot = xpcall(require, debug.traceback, 'robot')
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

return ResProc]==],['stringlib.lua']= [==[local event = require('event')
local component = require('component')
if component.gpu == nil then
	print('Missing gpu!')
	return
end
local gpu = component.gpu

-- Class Meta
local stringlib = {}

-- Class Functions
function stringlib.split(s, delim)
	delim = delim or '%s'
	local t = {}
	for str in string.gmatch(s, '([^'..delim..']+)') do
		table.insert(t, str)
	end
	return t
end

function stringlib.pagedPrint(s)
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
	local function mod(a, b)
		return a - math.floor(a / b) * b
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
			event.pull('key_down', nil, 32.0)
		end
	end
	io.write('\n')
end

return stringlib]==],['tablelib.lua']= [==[local tablelib = {}

function tablelib.clone(t)
	-- Safety check. Reduces headache.
	if type(t) ~= 'table' then
		error('Attempting to clone thing other than table.')
	end

	local newtable = {}
	for k, v in pairs(t)
		newtable[k] = v
	end
	
	return newtable
end

function tablelib.cloneAll(t)
	-- Safety check. Reduces headache.
	if type(t) ~= 'table' then
		error('Attempting to clone thing other than table.')
	end

	local newtable = {}
	for k, v in pairs(t)
		if type(v) == 'table' then
			newtable[k] = tablelib.cloneAll(v)
		else
			newtable[k] = v
		end
	end
	
	return newtable
end

return tablelib]==],['type']={['crafting.lua']= [==[local stringlib = require('lib.stringlib')
local item = require('lib.type.item')
local itemarray = require('lib.type.itemarray')

-- Class Meta
local Crafting = {
	dimension = { width = 0, height = 0 },
	pattern = {},
	shaped = true,
	result = {}
}

-- Class Functions
function Crafting.new(dimension, pattern, shaped, result)
	-- Safety check. Reduces headache.
	if (dimension == nil) or (pattern == nil) or (result == nil) then
		error('Can\'t make nil crafting.')
	end
	if (dimension.width == nil) or (dimension.height == nil) then
		error('Crafting needs dimension!')
	end
	if (getmetatable(result) ~= item) then
		error('Can\'t craft anything else beside item!')
	end
	
	local o = {}
	setmetatable(o, Crafting)
	Crafting.__index = Crafting
	o.dimension = dimension
	o.pattern = pattern
	o.shaped = shaped
	o.result = result
	return o
end

function Crafting:itemsNeeded()
	local itemsneeded = itemarray.new()
	for k, v in pairs(self.pattern) do
		if v ~= nil then
			itemsneeded:add(v:singleItem())
		end
	end
	return itemsneeded
end

return Crafting]==],['item.lua']= [==[local stringlib = require('lib.stringlib')

-- Class Meta
local Item = {
	name = '',
	damage = nil,
	size = 1,
	maxSize = 1
}

-- Class Functions
function Item.new(...)
	local args = {...}
	local i = {}
	setmetatable(i, Item)
	Item.__index = Item
	
	if type(args[1]) == 'string' then
		if args[1] == '' then
			error('Empty item name.')
		end
		i.name = stringlib.split(args[1], '|')[1]
		i.damage = tonumber(stringlib.split(args[1], '|')[2])
		i.size = 1
		i.maxSize = 1
	elseif type(args[1]) == 'table' then
		i.name = args[1].name
		if args[1].damage ~= nil then
			i.damage = math.floor(args[1].damage)
		end
		i.size = math.floor(args[1].size) or 1
		i.maxSize = math.floor(args[1].maxSize) or 1
	else
		error('Invalid construction argument.')
	end
	
	return i
end

function Item:ignoreDamage()
	self.damage = nil
	return self
end

function Item:singleItem()
	local icl = self:clone()
	icl.size = 1
	return icl
end

function Item:clone()
	return Item.new(self)
end

function Item:compareTo(i)
	-- Safety check. Reduces headache.
	if getmetatable(i) ~= Item then
		error('Attempting to compare with ' .. type(i) .. '.')
	end

	if self.damage == nil then
		return self.name == i.name
	else
		return (self.name == i.name) and (self.damage == i.damage)
	end
end

function Item:compareDamage(i)
	-- Safety check. Reduces headache.
	if getmetatable(i) ~= Item then
		error('Attempting to compare with ' .. type(i) .. '.')
	end
	
	return (self.name == i.name) and (self.damage == i.damage)
end

-- Metamethods
function Item.__eq(a, b)
	-- Safety check. Reduces headache.
	if (getmetatable(a) ~= Item) and (getmetatable(b) ~= Item) then
		error('Attempting to do comparison operation with different object type.')
	end

	return a:compareTo(b)
end

function Item.__add(a, b)
	-- Safety check. Reduces headache.
	if (getmetatable(a) ~= Item) or (getmetatable(b) ~= Item) then
		error('Attempting to do comparison operation with different object type.')
	end

	local n = a:clone()
	if (a.name == b.name) and (a.damage == b.damage) and (a.maxSize == b.maxSize) then
		n.size = a.size + b.size
	else
		error('Can\'t add different items.')
	end
	return n
end

function Item.__sub(a, b)
	-- Safety check. Reduces headache.
	if (getmetatable(a) ~= Item) and (getmetatable(b) ~= Item) then
		error('Attempting to do comparison operation with different object type.')
	end

	local n = a:clone()
	if (a.name == b.name) and (a.damage == b.damage) and (a.maxSize == b.maxSize) then
		n.size = a.size - b.size
	else
		error('Can\'t sub different items.')
	end
	return n
end

function Item.__mul(a, b)
	-- Safety check. Reduces headache.
	if (getmetatable(a) ~= Item) and (type(b) ~= 'number') then
		error(string.format('Incompatible item size scaling: %s * %s.', type(a), type(b)))
	end
	
	local n = a:clone()
	n.size = n.size * b
	return n
end

function Item.__unm(a)
	local icl = a:clone()
	icl = a.maxSize - a.size
	return icl
end

function Item.__len(a)
	return a.size;
end

function Item.__tostring(a)
	local completename = a.name
	if a.damage ~= nil then
		completename = completename .. '|' .. tostring(a.damage)
	end

	if a.size ~= 0 then
		return string.format('%d %s', a.size, completename)
	end
	return completename
end

function Item.__bnot(a)
	local icl = a:clone()
	icl.size = 0
	return icl
end

return Item]==],['itemarray.lua']= [==[local item = require('lib.type.item')

-- Class Meta
local ItemArray = {}

-- Class Functions
function ItemArray.new()
	local o = {}
	setmetatable(o, ItemArray)
	ItemArray.__index = ItemArray
	return o
end

function ItemArray:has(i)
	for k, v in ipairs(self) do
		if i == v then
			return (i.size == 0) or (i.size <= v.size)
		end
	end
	return false
end

function ItemArray:hasDamage(i)
	for k, v in ipairs(self) do
		if v:compareDamage(i) then
			return v.size >= i.size
		end
	end
	return false
end

function ItemArray:hasAll(ia)
	for k, v in ipairs(ia) do
		if not self:has(v) then
			return false
		end
	end
	return true
end

function ItemArray:hasAllDamage(ia)
	for k, v in ipairs(ia) do
		if not self:hasDamage(v) then
			return false
		end
	end
	return true
end

function ItemArray:count(i)
	local c = 0
	for k, v in ipairs(self) do
		if i == v then
			c = c + v.size
		end
	end
	return c
end

function ItemArray:add(i)
	for k, v in ipairs(self) do
		if v:compareDamage(i) then
			self[k] = self[k] + i
			return self[k]
		end
	end
	table.insert(self, i:clone())
	return i
end

function ItemArray:addAll(ia)
	if type(ia) == 'table' then
		if getmetatable(ia) ~= ItemArray then
			error('Can\'t add non-itemarray object.')
		end
	else
		error('Can\'t add ' .. type(ia) .. '.')
	end
	
	for k, v in ipairs(ia) do
		self:add(v)
	end
	return ia
end

function ItemArray:remove(i)
	for k, v in ipairs(self) do
		if i == v then
			return table.remove(self, k)
		end
	end
	return nil
end

function ItemArray:removeDamage(i)
	for k, v in ipairs(self) do
		if i:compareDamage(v) then
			return table.remove(self, k)
		end
	end
	return nil
end

function ItemArray:minus(i)
	local unresolvedItem = i:clone()
	for k, v in ipairs(self) do
		if i == v then
			unresolvedItem.size = v.size - unresolvedItem.size
			if unresolvedItem.size < 0 then
				self:remove(v)
				unresolvedItem.size = -unresolvedItem.size
			else
				v.size = unresolvedItem.size
				return nil
			end
		end
	end
	return unresolvedItem
end

function ItemArray:pop()
	return table.remove(self)
end

function ItemArray:popSingle()
	if self[#self].size <= 1 then
		return table.remove(self)
	else
		self[#self].size = self[#self].size - 1
		return self[#self]:singleItem()
	end
end

function ItemArray:index(i)
	for k, v in ipairs(self) do
		if i == v then
			return k
		end
	end
	return nil
end

function ItemArray:get(i)
	return self[self:index(i)]
end

function ItemArray:indexDamage(i)
	for k, v in ipairs(self) do
		if i.compareDamage(v) then
			return k
		end
	end
	return nil
end

function ItemArray:sort()
	table.sort(self, function(a, b) return a.name < b.name end)
	return self
end

-- Metamethods
function ItemArray.__add(a, b)
	-- Safety check. Reduces headache.
	if not ((getmetatable(a) == ItemArray) or (getmetatable(a) == item)) or not ((getmetatable(b) == ItemArray) or (getmetatable(b) == item)) then
		error('Attempting to add incompatible types other than ItemArray and Item. [' .. type(b) .. ']')
	end
	
	local o = ItemArray.new()
	if (getmetatable(a) == item) then
		local added = false
		for k, v in ipairs(o) do
			if a:compareDamage(v) then
				o[k] = o[k] + a
				added = true
				break
			end
		end
		if not added then
			o:add(a:clone())
		end
	else
		for ks, vs in ipairs(a) do
			local added = false
			for kd, vd in ipairs(o) do
				if vs:compareDamage(vd) then
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	if (getmetatable(b) == item) then
		local added = false
		for k, v in ipairs(o) do
			if b:compareDamage(v) then
				o[k] = o[k] + b
				added = true
				break
			end
		end
		if not added then
			o:add(b:clone())
		end
	else
		for ks, vs in pairs(b) do
			local added = false
			for kd, vd in ipairs(o) do
				if vs:compareDamage(vd) then
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	return o
end

function ItemArray.__mul(a, b)
	-- Safety check. Reduces headache.
	if (getmetatable(a) ~= ItemArray) or (type(b) ~= 'number') then
		error(string.format('Incompatible itemarray size scaling: %s * %s.', type(a), type(b)))
	end
	
	local o = ItemArray.new()
	for k, v in ipairs(a) do
		o[k] = a[k] * b
	end
	return o
end

return ItemArray]==]}}}

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
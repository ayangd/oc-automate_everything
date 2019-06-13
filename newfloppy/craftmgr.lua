local isRobotAcquired, robot = xpcall(require, debug.traceback, 'robot')
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

commands.make = Command.new()
commands.make.usage = 'make <item>'
commands.make.func = function(...)
	print('TODO: make things good :)')
end

commands.clear = Command.new()
commands.make.usage = 'clear'
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
end
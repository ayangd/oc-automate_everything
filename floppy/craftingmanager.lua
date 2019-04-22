local crafting = require('util.crafting')
local data = require('util.data')
local inv = require('util.inventory')

local running = true
local craftingdb = {}
local rawdb = {}
local slot = {}

local commandUsages = {
	help = 'Usage: help',
	exit = 'Usage: exit',
	load = 'Usage: load <crafting/raw/all>',
	save = 'Usage: save <crafting/raw/all>',
	analyze = 'Usage: analyze <shaped/shapeless> <ignoreMetadata>',
	show = 'Usage: show <slot/name>',
	keep = 'Usage: keep',
	discard = 'Usage: discard',
	remove = 'Usage: remove <name>',
	list = 'Usage: list <crafting/raw>',
	select = 'Usage: select <slot>',
	addraw = 'Usage: addraw <name>',
	removeraw = 'Usage: removeraw <name>',
	trace = 'Usage: trace <name>'
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
			crafting.saveCraftingRecipes(craftingdb)
			print('Crafting recipes saved.')
		elseif args[1] == 'raw' then
			crafting.saveRawItems(rawdb)
			print('Raw items saved.')
		elseif args[1] == 'all' then
			crafting.saveCraftingRecipes(craftingdb)
			crafting.saveRawItems(rawdb)
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
				crafting.addToDatabase(slot, craftingdb)
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
			crafting.removeFromDatabase(args[1], craftingdb)
		end
	end,
	list = function(args)
		if args[1] == 'crafting' then
			crafting.listDatabase(craftingdb)
		elseif args[1] == 'raw' then
			crafting.listRaw(rawdb)
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
		crafting.addRaw(args[1], rawdb)
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
			crafting.removeRaw(args[1], rawdb)
			print('Item removed from the database.')
		end
	end,
	trace = function(args)
		if args[1] == nil then
			wrongUsage('trace')
			return
		end
		crafting.printTracedIngredients(crafting.traceIngredients(args[1], craftingdb, rawdb), rawdb)
	end
	, test = function(args) crafting.test(args[1], craftingdb, rawdb); print('tested') end
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
	else
		print('Command not understood.')
	end
end

local item = require('lib.type.item')
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
	table.sort(a, function(a, b) if a.name == nil or b.name == nil then print(a,b) end; return a.name < b.name end)
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
	f:write("#Format:\n#'Item output name' 'item output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item shape' 'item recipe array|metadata'\n")
	for k, v in craftingdb.sortedCraftingPairs() do
		local itemoutput = tostring(~k)
		local itemoutputq = tostring(k.size)
		local itemshape = v and 'sd' or 'sl'
		local dim = tostring(v.dimension.width) .. tostring(v.dimension.height)
		local itemUsed = v:itemsNeeded()
		local itemPattern = ''
		for k, v in pairs(v.pattern) do
			itemPattern = itemPattern .. itemUsed:indexDamage(v) or '0'
		end
		local allitems = ''
		for k, v in ipairs(itemUsed) do
			allitems = allitems .. tostring(~v) .. ' '
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
	if crafting == nil then
		error('Can\'t add nil to craftingdb!')
	end
	craftingdb.db[crafting.result] = crafting
	return craftingdb.db[crafting.result]
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

return craftingdb
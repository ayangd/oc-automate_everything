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
		if (l:sub(1,1) ~= '#') or (l ~= '') then
			local dimension = {}
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
			craftingdb.db[result:clone()] = crafting.new(dimension, pattern, shaped, result)
		end
		l = f:read('*l')
	end
	f:close()
end

function craftingdb.save()
	-- Format: 'Item output name' 'item output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item shape' 'item recipe array|metadata'
	local f = io.open(craftingdbpath, 'w')
	for k, v in pairs(craftingdb.db) do
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

return craftingdb
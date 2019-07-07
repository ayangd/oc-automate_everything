local item = require('lib.type.item')
local itemcompound = require('lib.type.itemcompound')

-- Class Meta
local OreDict = {
	name = '',
	iComp = {}
}

-- Class Functions
function OreDict.new(name, iComp)
	-- Safety check. Reduces headache.
	if getmetatable(iComp) ~= itemcompound then
		error('Can\'t create oredict with ' .. type(iComp) .. '.')
	end

	local od = {}
	setmetatable(od, OreDict)
	OreDict.__index = OreDict
	od.name = name
	od.iComp = iComp or {}
	return od
end

function OreDict:check(i)
	return iComp:check(i)
end

-- Metamethods
function OreDict.__tostring(od)
	return name
end

function OreDict.__eq(a, b)
	-- Don't do errors here. Craftingdb will freak out.
	if (getmetatable(a) ~= OreDict) and (getmetatable(b) ~= OreDict) then
		return false
	end
	
	return (a.name == b.name) and (a.iComp == b.iComp)
end

return OreDict
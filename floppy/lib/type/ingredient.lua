local item = require('lib.type.item')
local itemcompound = require('lib.type.itemcompound')
local oredict = require('lib.type.oredict')
local oredictdb = require('lib.oredictdb')

-- Class Meta
local Ingredient = {
	content = {}
}

-- Class Functions
function Ingredient.parse(str)
	local a = {}
	setmetatable(a, Ingredient)
	Ingredient.__index = Ingredient

	if str:find('ore:') ~= nil then
		local od = oredictdb.get(str)
		if od == nil then
			error('Error parsing ' .. str .. ' as ingredient.')
		end
		a.content = od
	elseif str:find(',') ~= nil then
		local ic = itemcompound.parse(str)
		a.content = ic
	else
		local i = item.new(str)
		a.content = i
	end
	
	return a
end

function Ingredient:check(i)
	-- Safety check. Reduces headache.
	if getmetatable(i) ~= item then
		error('Ingredients doesn\'t check ' .. type(i) .. '.')
	end
	
	if getmetatable(self.content) == oredict then
		return self.content.check(i)
	elseif getmetatable(self.content) == itemcompound then
		return self.content.check(i)
	elseif getmetatable(self.content) == item then
		return self.content == i
	end
end

-- Metamethods
function Ingredient.__eq(a, b)
	-- Safety check. Reduces headache.
	if not (((getmetatable(a) == item) and (getmetatable(b) == Ingredient)) or
			((getmetatable(a) == Ingredient) and (getmetatable(b) == item))) then
		if (getmetatable(a) == Ingredient) and (getmetatable(b) == Ingredient) then
			return a.content == b.content
		end
		error(string.format('Attempting to do comparison operation with different object type. (%s, %s)', type(a), type(b)))
	end
	
	if getmetatable(a) == item then
		return b:check(a)
	else
		return a:check(b)
	end
end

return Ingredient
local ingredient = require('lib.type.ingredient')

-- Class Meta
local IngredientArray = {}

-- Class Functions
function IngredientArray.new()
	local a = {}
	setmetatable(a, IngredientArray)
	IngredientArray.__index = IngredientArray
	return a
end

function IngredientArray:index(i)
	for k, v in ipairs(self) do
		if v == i then
			return k
		end
	end
	return nil
end

function IngredientArray:add(i)
	for k, v in ipairs(self) do
		if v == i then
			return i
		end
	end
	return table.insert(self, i)
end

return IngredientArray
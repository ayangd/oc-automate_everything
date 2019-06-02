local stringlib = require('lib.stringlib')
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
	if (dimension.width == 0) or (dimension.height == 0) then
		error('Crafting needs dimension!')
	end
	if (#pattern == 0) then
		error('Crafting needs pattern!')
	end
	if (getmetatable(result) ~= item) then
		error('Can\'t craft anything else beside item!')
	end
	
	local o = {}
	setmetatable(o, Crafting)
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
			itemsneeded = itemsneeded + v
		end
	end
	return itemsneeded
end

return Crafting
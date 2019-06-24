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
	if (dimension.width == nil) or (dimension.height == nil) then
		error('Crafting needs dimension!')
	end
	if (getmetatable(result) ~= item) then
		error('Can\'t put anything else into result beside item!')
	end
	if (result.size == 0) then
		error('Can\'t make zero item!')
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

-- Metamethods
function Crafting.__tostring(cr)
	local buff = string.format('(%dx%d) ', cr.dimension.width, cr.dimension.height) .. (cr.shaped and 'shaped ' or 'shapeless ') .. tostring(cr.result) .. ':\n'
	
	if cr.shaped then
		for c = 1, cr.dimension.width * cr.dimension.height do
			buff = buff .. string.format('[%d] %s\n', c, cr.pattern[c])
		end
	else
		for c = 1, #cr.pattern do
			buff = buff .. string.format('[%d] %s\n', c, cr.pattern[c])
		end
	end
	buff = buff:sub(1, #buff - 1)
	
	return buff
end

return Crafting
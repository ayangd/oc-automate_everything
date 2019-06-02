local stringlib = require('lib.stringlib')

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
		i.name = stringlib.strSplit(args[1])[1]
		i.damage = tonumber(stringlib.strSplit(args[1])[2])
		i.size = 1
		i.maxSize = 1
	elseif type(args[1]) == 'table' then
		i.name = args[1].name
		i.damage = math.floor(args[1].damage)
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
	return Item:new(self)
end

function Item:compareTo(i)
	-- Safety check. Reduces headache.
	if getmetatable(i) ~= Item then
		error('Attempting to compare with non-item object.')
	end

	if self.damage == nil then
		if self.name == i.name then
			return true
		else
			return false
		end
	else
		if (self.name == i.name) and (self.damage == i.damage) then
			return true
		else
			return false
		end
	end
end

function Item:compareDamage(i)
	-- Safety check. Reduces headache.
	if getmetatable(i) ~= Item then
		error('Attempting to compare with non-item object.')
	end
	
	if (self.name == i.name) and (self.damage == i.damage) then
		return true
	end
	return false
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
	if (getmetatable(a) ~= Item) and (getmetatable(b) ~= Item) then
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
	
	local n = a.clone()
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

return Item
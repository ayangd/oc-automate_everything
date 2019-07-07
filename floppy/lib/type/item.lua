local stringlib = require('lib.stringlib')

-- Class Meta
local Item = {
	name = '',
	damage = -1,
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
		if args[1] == '' then
			error('Empty item name.')
		end
		local splits = stringlib.split(args[1], '|')
		i.name = splits[1]
		i.damage = ((splits[2] == '*') and -1 or tonumber(splits[2])) or 0
		i.size = 1
		i.maxSize = 1
	elseif type(args[1]) == 'table' then
		i.name = args[1].name
		if args[1].damage ~= nil then
			i.damage = math.floor(args[1].damage)
		end
		i.size = math.floor(args[1].size) or 1
		i.maxSize = math.floor(args[1].maxSize) or 1
	elseif #args == 0 then
		error('Not expecting nil or empty argument.')
	else
		error('Invalid construction argument.')
	end
	
	return i
end

function Item:ignoreDamage()
	self.damage = -1
	return self
end

function Item:singleItem()
	local icl = self:clone()
	icl.size = 1
	return icl
end

function Item:clone()
	return Item.new(self)
end

function Item:compareTo(i)
	-- Safety check. Reduces headache.
	if getmetatable(i) ~= Item then
		error('Attempting to compare with ' .. type(i) .. '.')
	end

	if (self.damage == -1) or (i.damage == -1) then
		return self.name == i.name
	else
		return (self.name == i.name) and (self.damage == i.damage)
	end
end

function Item:compareDamage(i)
	-- Deprecated.
	local f = io.open('deprecatrace.log', 'w')
	f:write(debug.traceback() .. '\n')
	f:close()
	
	return Item:compareTo(i)
end

-- Metamethods
function Item.__eq(a, b)
	-- Don't do errors here. Craftingdb will freak out.
	if (getmetatable(a) ~= Item) or (getmetatable(b) ~= Item) then
		if not (((getmetatable(a) == item) and (getmetatable(b) == Ingredient)) or
				((getmetatable(a) == Ingredient) and (getmetatable(b) == item))) then
			return false
		else
			if getmetatable(a) == item then
				return b:check(a)
			else
				return a:check(b)
			end
		end
		return false
	end

	return a:compareTo(b)
end

function Item.__add(a, b)
	-- Safety check. Reduces headache.
	if (getmetatable(a) ~= Item) or (getmetatable(b) ~= Item) then
		error('Attempting to do comparison operation with different object type.')
	end

	local n = a:clone()
	if (a.name == b.name) and (a.damage == b.damage) then
		n.size = a.size + b.size
	else
		error(string.format('Can\'t add different items.'))
	end
	return n
end

function Item.__sub(a, b)
	-- Safety check. Reduces headache.
	if (getmetatable(a) ~= Item) and (getmetatable(b) ~= Item) then
		error('Attempting to do comparison operation with different object type.')
	end

	local n = a:clone()
	if (a.name == b.name) and (a.damage == b.damage) then
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
	
	local n = a:clone()
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
local item = require('lib.type.item')
local stringlib = require('lib.stringlib')
local tablelib = require('lib.tablelib')

-- Class Meta
local ItemCompound = {
	items = {}
}

-- Class Functions
function ItemCompound.parse(itemCompoundString)
	local ic = {}
	setmetatable(i, ItemCompound)
	ItemCompound.__index = ItemCompound
	
	for k, v in ipairs(stringlib.split(itemCompoundString)) do
		table.insert(ic.items, item.new(v))
	end
	
	return ic
end

function ItemCompound:check(i)
	-- Safety check. Reduces headache.
	if getmetatable(i) ~= item then
		error('Can\'t add ' .. type(i) .. ' to item compound.')
	end
	
	for k, v in ipairs(self.items) do
		if i == v then
			return true
		end
	end
	return false
end

function ItemCompound:add(i)
	-- Safety check. Reduces headache.
	if getmetatable(i) ~= item then
		error('Can\'t add ' .. type(i) .. ' to item compound.')
	end
	
	for k, v in ipairs(self.items) do
		if i == v then
			return v
		end
	end
	return table.insert(self.items, ~i:clone())
end

function ItemCompound:remove(i)
	-- Safety check. Reduces headache.
	if getmetatable(i) ~= item then
		error('Can\'t add ' .. type(i) .. ' to item compound.')
	end
	
	for k, v in ipairs(self.items) do
		if i == v then
			table.remove(self.items, v)
			return true
		end
	end
	return false
end

-- Metamethods
function ItemCompound.__tostring(itemCompound)
	table.sort(itemCompound.items, function(a, b) return a.name < b.name end)
	return tablelib.concat(itemCompound.items, ',')
end

function ItemCompound.__eq(a, b)
	-- Don't do errors here. Craftingdb will freak out.
	if (getmetatable(a) ~= ItemCompound) and (getmetatable(b) ~= ItemCompound) then
		return false
	end
	
	return tostring(a) == tostring(b)
end

return ItemCompound
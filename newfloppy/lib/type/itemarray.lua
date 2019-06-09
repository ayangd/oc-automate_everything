local item = require('lib.type.item')

-- Class Meta
local ItemArray = {}

-- Class Functions
function ItemArray.new()
	local o = {}
	setmetatable(o, ItemArray)
	ItemArray.__index = ItemArray
	return o
end

function ItemArray:has(i)
	for k, v in ipairs(self) do
		if v == i then
			if v.size >= i.size then
				return true
			end
		end
	end
	return false
end

function ItemArray:hasDamage(i)
	for k, v in ipairs(self) do
		if v:compareDamage(i) then
			if v.size >= i.size then
				return true
			end
		end
	end
	return false
end

function ItemArray:hasAll(ia)
	for k, v in ipairs(ia) do
		if not self:has(v) then
			return false
		end
	end
	return true
end

function ItemArray:count(i)
	local c = 0
	for k, v in ipairs(self) do
		if i == v then
			c = c + v.size
		end
	end
	return c
end

function ItemArray:add(i)
	for k, v in ipairs(self) do
		if v:compareDamage(i) then
			self[k] = self[k] + i
			return self[k]
		end
	end
	table.insert(self, i:clone())
	return i
end

function ItemArray:remove(i)
	for k, v in ipairs(self) do
		if i == v then
			return table.remove(self, k)
		end
	end
	return nil
end

function ItemArray:removeDamage(i)
	for k, v in ipairs(self) do
		if i:compareDamage(v) then
			return table.remove(self, k)
		end
	end
	return nil
end

function ItemArray:minus(i)
	local unresolvedItem = i:clone()
	for k, v in ipairs(self) do
		if i == v then
			unresolvedItem.size = v.size - unresolvedItem.size
			if unresolvedItem.size < 0 then
				self:remove(v)
				unresolvedItem.size = -unresolvedItem.size
			else
				v.size = unresolvedItem.size
				return nil
			end
		end
	end
	return unresolvedItem
end

function ItemArray:pop()
	return table.remove(self)
end

function ItemArray:index(i)
	for k, v in ipairs(self) do
		if i == v then
			return k
		end
	end
	return nil
end

function ItemArray:indexDamage(i)
	for k, v in ipairs(self) do
		if i.compareDamage(v) then
			return k
		end
	end
	return nil
end

function ItemArray:sort()
	table.sort(self, function(a, b) return a.name < b.name end)
	return self
end

-- Metamethods
function ItemArray.__add(a, b)
	-- Safety check. Reduces headache.
	if not ((getmetatable(a) == ItemArray) or (getmetatable(a) == item)) or not ((getmetatable(b) == ItemArray) or (getmetatable(b) == item)) then
		error('Attempting to add incompatible types other than ItemArray and Item. [' .. type(b) .. ']')
	end
	
	local o = ItemArray.new()
	if (getmetatable(a) == item) then
		local added = false
		for k, v in ipairs(o) do
			if a:compareDamage(v) then
				o[k] = o[k] + a
				added = true
				break
			end
		end
		if not added then
			o:add(a:clone())
		end
	else
		for ks, vs in ipairs(a) do
			local added = false
			for kd, vd in ipairs(o) do
				if vs:compareDamage(vd) then
					o[kd] = o[kd] + vs
				end
			end
		end
	end
	if (getmetatable(b) == item) then
		local added = false
		for k, v in ipairs(o) do
			if b:compareDamage(v) then
				o[k] = o[k] + b
				added = true
				break
			end
		end
		if not added then
			o:add(b:clone())
		end
	else
		for ks, vs in pairs(b) do
			local added = false
			for kd, vd in ipairs(o) do
				if vs:compareDamage(vd) then
					o[kd] = o[kd] + vs
				end
			end
		end
	end
end

function ItemArray.__mul(a, b)
	-- Safety check. Reduces headache.
	if (getmetatable(a) ~= ItemArray) and (type(b) ~= 'number') then
		error(string.format('Incompatible itemarray size scaling: %s * %s.', type(a), type(b)))
	end
	
	local o = ItemArray.new()
	for k, v in ipairs(self) do
		o[k] = self[k] * b
	end
	return o
end

return ItemArray
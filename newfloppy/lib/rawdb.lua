local item = require('lib.type.item')
local itemarray = require('lib.type.itemarray')

local stringlib = require('lib.stringlib')

-- Class Meta
local rawdb = {
	db = {}
}

-- Class Init
local rawdbpath = 'db/raw.db'

function rawdb.sort()
	table.sort(rawdb.db, function(a, b) return a.name < b.name end)
end

function rawdb.load()
	rawdb.db = {}
	local f = io.open(rawdbpath, 'r')
	local l = f:read('*l')
	while l ~= nil do
		table.insert(rawdb.db, ~item.new(l))
		l = f:read('*l')
	end
	rawdb.sort()
	f:close()
end
io.write('Loading rawdb... ')
rawdb.load()
local rawCount = 0
for k, v in ipairs(rawdb.db) do
	rawCount = rawCount + 1
end
io.write(string.format('%d loaded.\n', rawCount))

function rawdb.save()
	rawdb.db:sort()
	local f = io.open(rawdbpath, 'w')
	for k, v in ipairs(rawdb.db) do
		f:write(tostring(v) .. '\n')
	end
	f:close()
end

-- Class Functions
function rawdb.get(i)
	if getmetatable(i) ~= item then
		error('Can\'t find ' .. type(item) .. ' from rawdb.')
	end
	for k, v in ipairs(rawdb.db) do
		if i:compareDamage(v) then
			return v
		end
	end
	return nil
end

function rawdb.has(i)
	return rawdb.get(i) ~= nil
end

function rawdb.add(i)
	if getmetatable(i) ~= item then
		error('Can\'t add ' .. type(item) .. ' to rawdb.')
	end
	table.insert(rawdb.db, i)
	rawdb.sort()
	return i
end

function rawdb.remove(i)
	for k, v in ipairs(rawdb.db) do
		if compareDamage(v) then
			return table.remove(k)
		end
	end
	return nil
end

return rawdb
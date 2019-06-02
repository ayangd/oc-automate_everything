local item = require('lib.type.item')
local itemarray = require('lib.type.itemarray')

local stringlib = require('lib.stringlib')

-- Class Meta
local rawdb = {
	db = {}
}

-- Class Init
local rawdbpath = 'db/raw.db'
function rawdb.load()
	local f = io.open(rawdbpath, 'r')
	local l = f:read('*l')
	while l ~= nil do
		table.insert(rawdb.db, ~item.new(l))
		l = f:read('*l')
	end
	f:close()
end

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
	for k, v in ipairs(rawdb.db) do
		if i.compareDamage(v) then
			return v
		end
	end
	return nil
end

function rawdb.add(i)
	table.insert(rawdb.db, i)
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
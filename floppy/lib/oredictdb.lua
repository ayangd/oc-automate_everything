local stringlib = require('lib.stringlib')
local oredict = require('lib.type.oredict')
local itemcompound = require('lib.type.itemcompound')

-- Class Meta
local oredictdb = {
	db = {}
}

-- Class Init
local oredictdbpath = 'db/oredict.db'

function oredictdb:sorted()
	local a = {}
	for n in pairs(oredictdb.db) do table.insert(a, n) end
	table.sort(a)
	local i = 0
	return function()
		i = i + 1
		if a[i] == nil then
			return nil
		else
			return a[i], craftingdb.db[a[i]]
		end
	end
end

function oredictdb.load()
	local f = io.open(oredictdbpath, 'r')
	local l = f:read('*l')
	while l ~= nil do
		if l ~= '' then
			local splitted = stringlib.split('=')
			oredictdb.db[splitted[1]] = oredict.new(splitted[1], itemcompound.parse(splitted[2]))
		end
		l = f:read('*l')
	end
end
io.write('Loading oredictdb... ')
oredictdb.load()
local oredictCount = 0
for k, v in pairs(oredictdb.db) do
	oredictCount = oredictCount + 1
end
io.write(string.format('%d loaded.\n', oredictCount))

function oredictdb.save()
	local f = io.open(oredictdbpath, 'w')
	for k, v in oredictdb:sorted() do
		f:write(k .. '=' .. tostring(v) .. '\n')
	end
	f:close()
end

function oredictdb.get(name)
	for k, v in pairs(oredictdb.db) do
		if k == name then
			return v
		end
	end
	return nil
end

function oredictdb.add(od)
	oredictdb.db[od.name] = od
end

function oredictdb.remove(name)
	local removed = oredictdb.db[name]
	oredictdb.db[name] = nil
	return removed
end

return oredictdb
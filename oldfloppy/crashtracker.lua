local shell = require('shell')
local fs = require('filesystem')

local args = {...}
local path = shell.resolve(table.remove(args, 1))

if not fs.exists(path) then
	if fs.exists(path .. '.lua') then
		path = path .. '.lua'
	else
		print('File not found.')
		return
	end
end

local a, b = xpcall(loadfile(path), debug.traceback, table.unpack(args))
if not a then
	local f = io.open('crashtracker.txt', 'w')
	f:write(b)
	f:close()
	print('Crash collected.')
end
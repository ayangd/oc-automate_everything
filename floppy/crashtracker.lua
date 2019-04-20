local shell = require('shell')

local args = {...}

local function test()
	require(args[1])
end

local a, b = xpcall(test, debug.traceback)
if not a then
	local f = io.open('crashtracker.txt', 'w')
	f:write(b)
	f:close()
	print('Crash collected.')
end
local fs = require('filesystem')
local shell = require('shell')
local path = fs.realPath(shell.getWorkingDirectory()) .. '/util'
local res = fs.list(path)
local fo = io.open('defs.txt', 'w')
for i in res do
	fo:write(i .. '\r\n')
	local f = io.open(path .. '/' .. i, 'r')
	local l = f:read('*l')
	while l ~= nil do
		if l:sub(1,14) == 'local function' then
			fo:write('  ' .. l .. '\r\n')
		end
		l = f:read('*l')
	end
end
fo:close()
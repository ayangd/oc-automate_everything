-- Fire and Forget, for debugging.
-- Automatically unloads loaded library.

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

loadfile(path)(table.unpack(args))
for k, v in pairs(package.loaded) do
	if k:find('lib.') == 1 then
		package.loaded[k] = nil
	end
end
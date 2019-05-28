local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local files = {
	file = 'filecontent',
	folder = {
		file = 'filecontent'
	}
}

local function extractFiles(foldername, filetable)
	if not fs.isDirectory(foldername) then
		print('make folder "' .. foldername .. '"')
		fs.makeDirectory(foldername)
	end
	
	for filename, filecontent in pairs(filetable) do
		if type(filecontents) == 'table' then
			extractFiles(foldername .. '/' .. filename, filecontent)
		else
			print('extract "' .. filename .. '"')
			local f = io.open(foldername .. '/' .. filename, 'w')
			f:write(filecontent)
			f:close()
		end
	end
end

extractFiles(cd, files)

print('Done.')
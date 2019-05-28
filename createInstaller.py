import os

header = """local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local files = """

footer = """

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

print('Done.')"""

floppy = 'floppy'

def storeContent(filePath):
    fs = os.listdir(filePath)
    filecontentset = []
    for af in fs:
        if os.path.isfile(filePath + '/' + af):
            with open(filePath + '/' + af, 'r') as fstr:
                a = (af, fstr.read())
                filecontentset.append(a)
        elif os.path.isdir(filePath + '/' + af):
            filecontentset.append((af, storeContent(filePath + '/' + af)))
    return filecontentset

def addSlashes(filecontentset):
    newfilecontentset = []
    for fcs in filecontentset:
        if type(fcs[1]) == list:
            newfilecontentset.append((fcs[0], addSlashes(fcs[1])))
        else:
            newfilecontentset.append((fcs[0], fcs[1].replace('\\', '\\\\').replace('\'', '\\\'').replace('\n', '\\\n')))
    return newfilecontentset

def makeFileCompound(filecontentset):
    fc = '{'
    for i in range(0, len(filecontentset)):
        if type(filecontentset[i][1]) == list:
            fc += '[\'' + filecontentset[i][0] + '\']=' + makeFileCompound(filecontentset[i][1]) + ''
        else:
            fc += '[\'' + filecontentset[i][0] + '\']=\'' + filecontentset[i][1] + '\''
        if not i == len(filecontentset) - 1:
            fc += ','
    fc += '}'
    return fc

with open('installer.lua', 'w') as inst:
    inst.write(header + makeFileCompound(addSlashes(storeContent(floppy))) + footer)

import os

p1 = """local fs = require('filesystem')
local sh = require('shell')
local cd = sh.getWorkingDirectory()

local dict = """

p2 = """

local files = """

p3 = """

local function extractFiles(foldername, filetable)
	if not fs.isDirectory(foldername) then
		print('make folder "' .. foldername .. '"')
		fs.makeDirectory(foldername)
	end
	
	for filename, filecontent in pairs(filetable) do
		if type(filecontent) == 'table' then
			extractFiles(foldername .. '/' .. filename, filecontent)
		else
			print('extract "' .. filename .. '"')
			local f = io.open(foldername .. '/' .. filename, 'w')
			local filebuf = ''
			i = 1
			while i <= #filecontent do
				if string.byte(filecontent:sub(i,i)) >= 0x80 then
					local dictnum = (string.byte(filecontent:sub(i,i)) - 0x80) * 0x100 + string.byte(filecontent:sub(i+1,i+1)) - 0x80
					filebuf = filebuf .. dict[dictnum + 1]
					i = i + 1
				else
					filebuf = filebuf .. filecontent:sub(i,i)
				end
				i = i + 1
			end
			f:write(filebuf)
			f:close()
		end
	end
end

extractFiles(cd, files)

print('Done.')"""

floppy = 'floppy'

instAlnum = []

def storeContent(filePath):
    fs = os.listdir(filePath)
    filecontentset = []
    for af in fs:
        if os.path.isfile(filePath + '/' + af):
            with open(filePath + '/' + af, 'r') as fstr:
                a = (af, fstr.read(-1))
                filecontentset.append(a)
        elif os.path.isdir(filePath + '/' + af):
            filecontentset.append((af, storeContent(filePath + '/' + af)))
    return filecontentset

def makeFileCompound(filecontentset, instAlnum):
    fc = b'{'
    for i in range(0, len(filecontentset)):
        if type(filecontentset[i][1]) == list:
            fc += b'[\'' + filecontentset[i][0].encode() + b'\']=' + makeFileCompound(filecontentset[i][1], instAlnum)
        else:
            fc += b'[\'' + filecontentset[i][0].encode() + b'\']= [==[' + compress(filecontentset[i][1], instAlnum) + b']==]'
        if not i == len(filecontentset) - 1:
            fc += b','
    fc += b'}'
    return fc

def findAlnums(s):
    alnums = []
    resolved = ''
    i = 0
    while i < len(s):
        if (resolved + s[i]).isalnum():
            resolved += s[i]
        else:
            if len(resolved) > 3:
                if resolved not in alnums:
                    alnums.append(resolved)
            resolved = ''
        i += 1
    return alnums

def mergeAlnums(an1, an2):
    naln = []
    for a in an1:
        if a not in naln:
            naln.append(a)
    for b in an2:
        if b not in naln:
            naln.append(b)
    return naln

def getAllAlnums(filecontentset):
    an = []
    for i in range(0, len(filecontentset)):
        if type(filecontentset[i][1]) == list:
            an = mergeAlnums(an, getAllAlnums(filecontentset[i][1]))
        else:
            an = mergeAlnums(an, findAlnums(filecontentset[i][1]))
    return an

def makeDictCompound(an):
    dc = '{'
    for i in range(0, len(an)):
        dc += '\'' + an[i] + '\''
        if not i == len(an) - 1:
            dc += ','
    dc += '}'
    return dc

def compress(s, an):
    buffer = b''
    resolved = ''
    i = 0
    while i < len(s):
        if (resolved + s[i]).isalnum():
            resolved += s[i]
        else:
            if len(resolved) > 3:
                if resolved in an:
                    buffer += (an.index(resolved) + 0x8080).to_bytes(2,'big')
                    resolved = ''
            buffer += resolved.encode() + s[i].encode()
            resolved = ''
        i += 1
    buffer += resolved.encode()
    return buffer

instContentSet = storeContent(floppy)
instAlnum = getAllAlnums(instContentSet)

with open('installer.lua', 'wb') as inst:
    inst.write(p1.encode() + makeDictCompound(instAlnum).encode() + p2.encode() + makeFileCompound(instContentSet, instAlnum) + p3.encode())

local event = require('event')
local gpu = require('component').gpu

local function quickSave(filename, buffer)
	local f = io.open(filename, 'w')
	f:write(buffer)
	f:close()
end

local function strSplit(s, delim)
  delim = delim or '%s'
  local t = {}
  for str in string.gmatch(s, '([^'..delim..']+)') do
    table.insert(t, str)
  end
  return t
end

local function pagedPrint(s)
	local screenWidth, screenHeight = gpu.getResolution()
	local function lineCount(str)
		count = 1
		for i = 1, #str do
			if str:sub(i, i) == '\n' then
				count = count + 1
			end
		end
		return count
	end
	local function brokeLines(str)
		local t = {}
		local l = ''
		for i = 1, #str do
			if str:sub(i, i) == '\n' then
				t[#t+1] = l
				l = ''
			elseif #l == screenWidth - 1 then
				t[#t+1] = l .. str:sub(i, i)
				l = ''
			else
				l = l .. str:sub(i, i)
			end
		end
		if l ~= '' then t[#t+1] = l end
		return t
	end
	local function modulo(a, b) return a - math.floor(a / b) * b end

	local stay = true
	local brokenTableBuffer = brokeLines(s)
	for k, v in pairs(brokenTableBuffer) do
		if stay then
			io.write(v)
			stay = false
		else
			io.write('\n' .. v)
			if (#v == screenWidth) then stay = true end
		end
		if modulo(k, screenHeight) == 0 then
			local evt, _, key, __ = event.pull()
			while ((evt ~= 'key_down') or (key ~= 32.0)) do evt,_,key,__=event.pull() end
		end
	end
	io.write('\n')
end

local function printTable(tb)
	local screenWidth, screenHeight = gpu.getResolution()
	screenWidth, screenHeight = math.floor(screenWidth), math.floor(screenHeight)
	local buf = ''

	local function tab(tabulation)
		return string.rep('  ', tabulation)
	end
	local function val(v)
		if type(v) == 'string' then
			return '\'' .. v .. '\''
		else
			return tostring(v)
		end
	end
	local function key(k)
		if type(k) == 'string' then
			return k
		else
			return tostring(k)
		end
	end
	local function tableLength(t)
		count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	local function createTable(t, tabulation)
		if type(t) ~= 'table' then return 'nil' end
		if next(t) == nil then return '{}' end
		local tabulation = tabulation or 0
		buf = '{'
		tabulation = tabulation + 1
		local k, v = next(t, nil)
		while k do
			if type(v) == 'table' then
				buf = buf .. '\n' .. tab(tabulation) .. key(k) .. '= ' .. createTable(v, tabulation + 1)
			else
				buf = buf .. '\n' .. tab(tabulation) .. key(k) .. '= ' .. val(v)
			end
			if next(t, k) ~= nil then
				buf = buf .. ','
			end
			k, v = next(t, k)
		end
		tabulation = tabulation - 1
		buf = buf .. '\n' .. tab(tabulation) .. '}'
		return buf
	end

	pagedPrint(createTable(tb))
end

local function getSpaceKey()
	local evt, _, key, __ = event.pull()
	while ((evt ~= 'key_down') or (key ~= 32.0)) do evt,_,key,__=event.pull() end
end

local function hasData(t)
	for k, v in pairs(t) do
		return true
	end
	return false
end

local function isEmpty(t)
	return not hasData(t)
end

return {
	quickSave = quickSave,
	strSplit = strSplit,
	pagedPrint = pagedPrint,
	printTable = printTable,
	getSpaceKey = getSpaceKey,
	hasData = hasData,
	isEmpty = isEmpty
}
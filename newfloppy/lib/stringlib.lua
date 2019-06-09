local event = require('event')
local component = require('component')
if component.gpu == nil then
	print('Missing gpu!')
	return
end
local gpu = component.gpu

-- Class Meta
local stringlib = {}

-- Class Functions
function stringlib.split(s, delim)
	delim = delim or '%s'
	local t = {}
	for str in string.gmatch(s, '([^'..delim..']+)') do
		table.insert(t, str)
	end
	return t
end

function stringlib.pagedPrint(s)
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
	local function mod(a, b)
		return a - math.floor(a / b) * b
	end

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
		if mod(k, screenHeight) == 0 then
			event.pull('key_down', nil, 32.0)
		end
	end
	io.write('\n')
end

return stringlib
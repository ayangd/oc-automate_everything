local function allMatch(s, p)
	t = {}
	for x in s:gmatch(p) do
		table.insert(t, x)
	end
	return t
end

local function notContains(s, mt)
	for k, v in ipairs(mt) do
		if s:find(v) ~= nil then
			return false
		end
	end
	return true
end

local function bracketContent(bs)
	local function bro(s) -- bracket open
		return (s == '[') or (s == '(') or (s == '<') or (s == '{')
	end
	local function brc(s) -- bracket close
		return (s == ']') or (s == ')') or (s == '>') or (s == '}')
	end

	local stripped = bs:sub(2, #bs - 1):gsub(', ', ',')
	local bracketLevel = 0
	local indexStart = 1
	local childs = {}
	for i = 1, #stripped do
		if bro(stripped:sub(i,i)) then
			bracketLevel = bracketLevel + 1
		elseif brc(stripped:sub(i,i)) then
			bracketLevel = bracketLevel - 1
		elseif stripped:sub(i,i) == ',' then
			if bracketLevel == 0 then
				local st = stripped:sub(indexStart, i - 1):gsub(',', ', ')
				table.insert(childs, st)
				indexStart = i + 1
			end
		end
	end
	local st = stripped:sub(indexStart, #bs):gsub(',', ', ')
	table.insert(childs, st)
	return childs
end

local function arrRange(arr, f, t)
	local tb = {}
	for i = f, t do
		table.insert(tb, arr[i])
	end
	return tb
end

local function tableConcat(t, s)
	local buf = ''
	for k, v in ipairs(t) do
		buf = buf .. tostring(v) .. ((next(t, k) == nil) and '' or s)
	end
	return buf
end

-- Old table foreach, so useful.
local function foreach(t, f, ...)
	local res = {}
	for k, v in ipairs(t) do
		res[k] = f(v, ...)
	end
	return res
end

-- Item Normalize, converting item format to the database format.
local function iNormalize(iname)
	local p = allMatch(iname:gsub('[<>]', ''), '[^:]+')
	return p[1] .. ':' .. p[2] .. ((p[3] == nil) and '' or (((iname:match('ore:') == nil) and '|' or ':') .. p[3]))
end

-- Item Normalize too, but check if more than one item fits.
local function iNormExt(iname)
	if iname:find('|') == nil then
		return iNormalize(iname)
	else
		return tableConcat(foreach(allMatch(iname:gsub(' | ', '|'), '[^|]+'), iNormalize), ',')
	end
end

local function tableIndex(t, obj)
	for k, v in ipairs(t) do
		if obj == v then
			return k
		end
	end
	return nil
end

local function inTable(t, obj)
	return tableIndex(t, obj) ~= nil
end

-- 'Item output name' 'item output quantity' 'sd=shaped/sl=shapeless' 'wh' 'item shape' 'item recipe array|metadata'
local conditionalFilter = {'.onlyDamaged', '.onlyWithTag', '.withTag', '.onlyStack', 'liquid:'}
local function craftingConvert(srec)
	if srec:match('recipes%..-%(.+%);') == nil then
		return false, srec
	end
	local shaped = srec:find('Shapeless') == nil
	local shapedstr = shaped and 'sd' or 'sl'
	local c = srec:match('recipes%..-%(.+%);'):match('%(.-,.-,.+%)')
	local c = '(' .. tableConcat(arrRange(bracketContent(c), 2, 3), ', ') .. ')'
	local args = bracketContent(c)
	if bracketContent(args[2])[1] == '' then
		return false, srec
	end
	if notContains(c, conditionalFilter) and args[1] ~= "null" then
		local itemc = allMatch(args[1]:gsub(' * ','*'), '[^%*]+')
		local item = iNormalize(itemc[1])
		local itemAmount = tonumber(itemc[2]) or 1
		local wh = ''
		local itemstr = ''
		if shaped then
			wh = tostring(#bracketContent(bracketContent(args[2])[1])) .. tostring(#bracketContent(args[2]))
			local items = {}
			for yi, y in ipairs(bracketContent(args[2])) do
				for xi, x in ipairs(bracketContent(y)) do
					if not inTable(items, x) then
						if x ~= 'null' then
							table.insert(items, x)
						end
					end
				end
			end
			local itemArrangement = ''
			for yi, y in ipairs(bracketContent(args[2])) do
				for xi, x in ipairs(bracketContent(y)) do
					itemArrangement = itemArrangement .. (tableIndex(items, x) or '0')
				end
			end
			itemstr = itemArrangement .. ' ' .. tableConcat(foreach(items, iNormExt), ' ')
		else
			wh = '00'
			local items = {}
			for ii, i in ipairs(bracketContent(args[2])) do
				if not inTable(items, i) then
					if i ~= 'null' then
						table.insert(items, i)
					end
				end
			end
			local itemArrangement = ''
			for ii, i in ipairs(bracketContent(args[2])) do
				itemArrangement = itemArrangement .. (tableIndex(items, i) or '0')
			end
			itemstr = itemArrangement .. ' ' .. tableConcat(foreach(items, iNormExt), ' ')
		end
		return true, string.format("%s %s %s %s %s", item, itemAmount, shapedstr, wh, itemstr)
	else
		return false, srec
	end
end

local function oredictConvert(sod)
	if sod:match('<ore:.->=.+') == nil then
		return false, sod
	end
	local ore = sod:match('<ore:.->=.+')
	local ore = ore:sub(1, #ore - 1)
	local orename = iNormalize(allMatch(ore, '[^=]+')[1])
	local oredef = iNormExt(allMatch(ore, '[^=]+')[2])
	return true, string.format('%s=%s', orename, oredef)
end

local craftingdbf = io.open('crafting.db', 'w')
local oredictdbf = io.open('oredict.db', 'w')
local failedf = io.open('failed.txt', 'w')
local crafttweakerlog = io.open('crafttweaker.log', 'r')
local userInput = ''
local craftingCount, oredictCount, failedCount = 0, 0, 0
while userInput ~= nil do
	if userInput:find('=%[crafting%]=>') ~= nil then
		local converted, result = craftingConvert(userInput)
		if converted then
			craftingdbf:write(result .. '\n')
			craftingCount = craftingCount + 1
		else
			failedf:write(result .. '\n')
			failedCount = failedCount + 1
		end
	elseif userInput:find('=%[ore%]=>') then
		local converted, result = oredictConvert(userInput)
		if converted then
			oredictdbf:write(result .. '\n')
			oredictCount = oredictCount + 1
		else
			failedf:write(result .. '\n')
			failedCount = failedCount + 1
		end
	end
	userInput = crafttweakerlog:read('*l')
	--print(userInput)
	io.write('\x1b[160D' .. string.format('craftingdb: %d, oredictdb: %d, fails: %d.', craftingCount, oredictCount, failedCount))
end
print('\x1b[160D' .. string.format('Wrote %d lines of craftingdb, %d lines of oredictdb, and %d lines failed to be parsed.', craftingCount, oredictCount, failedCount))

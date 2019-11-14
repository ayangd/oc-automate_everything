local tablelib = {}

function tablelib.clone(t)
	-- Safety check. Reduces headache.
	if type(t) ~= 'table' then
		error('Attempting to clone thing other than table.')
	end

	local newtable = {}
	for k, v in pairs(t) do
		newtable[k] = v
	end
	
	return newtable
end

function tablelib.cloneAll(t)
	-- Safety check. Reduces headache.
	if type(t) ~= 'table' then
		error('Attempting to clone thing other than table.')
	end

	local newtable = {}
	for k, v in pairs(t) do
		if type(v) == 'table' then
			newtable[k] = tablelib.cloneAll(v)
		else
			newtable[k] = v
		end
	end
	
	return newtable
end

function tablelib.concat(t, splitter)
	local buf = ''
	for k, v in ipairs(t) do
		buf = buf .. tostring(v)
		if next(t, k) ~= nil then
			buf = buf .. splitter
		end
	end
	return buf
end

function tablelib.str(tb, name)
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

	local function createTable(t, tabulation, name)
		if type(t) ~= 'table' then return 'nil' end
		if next(t) == nil then return '{}' end
		local tabulation = tabulation or 0
		local buf = ''
		if name == nil then
			buf = buf .. '{'
		else
			buf = buf .. name .. ' = {'
		end
		tabulation = tabulation + 1
		local k, v = next(t, nil)
		while k do
			if type(v) == 'table' then
				buf = buf .. '\n' .. tab(tabulation) .. key(k) .. ' = ' .. createTable(v, tabulation + 1)
			else
				buf = buf .. '\n' .. tab(tabulation) .. key(k) .. ' = ' .. val(v)
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

	return createTable(tb, 0, name)
end

return tablelib
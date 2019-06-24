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

return tablelib
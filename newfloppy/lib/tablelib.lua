local tablelib = {}

function tablelib.clone(t)
	-- Safety check. Reduces headache.
	if type(t) ~= 'table' then
		error('Attempting to clone thing other than table.')
	end

	local newtable = {}
	for k, v in pairs(t)
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
	for k, v in pairs(t)
		if type(v) == 'table' then
			newtable[k] = tablelib.cloneAll(v)
		else
			newtable[k] = v
		end
	end
	
	return newtable
end

return tablelib
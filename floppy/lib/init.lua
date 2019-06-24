-- Lib base. Run first.

-- Override type
local original_type = type
function type(v)
	local otype = original_type(v)
	if otype == 'table' then
		if v.type ~= nil then
			return v.type
		end
	end
	return otype
end
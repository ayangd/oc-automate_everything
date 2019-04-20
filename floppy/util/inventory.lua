local invctrl = require('component').inventory_controller
local robot = require('robot')

local function select(slot)
	return robot.select(slot)
end

local function getInfo(slot)
	local t = invctrl.getStackInInternalSlot(slot)
	for k, v in pairs(t) do
		if type(v) == 'number' then
			if v == math.floor(v) then
				t[k] = math.floor(v)
			end
		end
	end
	return t
end

local function getMinInfo(slot)
	local t = getInfo(slot)
	local nt = {name = t.name, damage = t.damage, size = t.size}
	return nt
end

local function find(name, damage)
	local itemPos = {}
	local slot = 1
	local function selectSlot() robot.select(slot) end
	local x, y = xpcall(selectSlot, debug.traceback)
	while x do
		if (getInfo(slot).name == name) and (getInfo(slot).damage == damage) then itemPos[#itemPos+1] = slot end
		slot = slot + 1
	end
	return itemPos
end

return {
	select = select,
	getInfo = getInfo,
	getMinInfo = getMinInfo,
	find = find
}
-- ayangd's Mine V1.0
-- Made by ayangd

-- Import required modules
geo = require("component").geolyzer
robot = require("robot")
sides = require("sides")
shell = require("shell")
computer = require("computer")

-- Parse command line arguments
args = shell.parse(...)
if #args < 2 then
	print("Tell me where am I facing and how deep can I dig.")
	return
end
facing = args[1]
deep = tonumber(args[2])

-- If some ore is skipped, it can be broken tool or bedrock.
skipped = 0

-- Take first table content and return the first content and the remaining table
-- If table is nil, return nil
-- If table is not a table, return the passed argument back (Unpacking has already done)
function div(t)
	if t == nil then return nil end
	if type(t) == 'table' then
		a = t[1]
		table.remove(t, 1)
		return a, table.unpack(t)
	end
	return t
end

-- Wrap function inside functions, so they will automatically go back to its initial state.
function ru(fu, ar) robot.up(); fu(div(ar)); robot.down(); end
function rd(fu, ar) robot.down(); fu(div(ar)); robot.up(); end
function rl(fu, ar) robot.turnLeft(); fu(div(ar)); robot.turnRight(); end
function rr(fu, ar) robot.turnRight(); fu(div(ar)); robot.turnLeft(); end
-- Forward function moved below!
function rb(fu, ar) robot.back(); fu(div(ar)); robot.forward(); end

-- Wrap a swing function that makes sure the block or an entity is gone. Otherwise, repeat.
-- Try 10 times. If it still can't, just ignore.
function sw(fu)
	try = 0
	fures, fue = fu()
	while ((not fures) and (fue == 'block')) or ((fures) and (fue == 'entity')) do
		if (try >= 10) then
			skipped = skipped + 1
			break
		end
		try = try + 1
		print(fures, fue)
		computer.beep(300, 0.1)
		computer.beep(100, 0.1)
		os.sleep(0.8)
		fures = fu()
	end
end

-- Gravels falling down prevents the robot from going back. Dig it!
function rf(fu, ar) robot.forward(); fu(div(ar)); if not robot.back() then rl(rl, {sw, robot.swing}) robot.back() end end

-- Wrap move functions to make sure nothing is in the way.
function fobs(fu, ar) if robot.detect() then sw(robot.swing); end; rf(fu, ar); end
function uobs(fu, ar) if robot.detectUp() then sw(robot.swingUp); end; ru(fu, ar); end
function dobs(fu, ar) if robot.detectDown() then sw(robot.swingDown); end; rd(fu, ar); end

-- Return if the value is within ore hardness or not.
-- Weirdly, fluid blocks has hardness 100 and bedrock has hardness -1.
-- Noise is about +-0.5 within 4 blocks from the robot.
-- Iron ore, gold ore, has 3 hardness.
function isOre(v) if v > 2 and v < 45 then return true else return false end end

-- Make sure the robot faces the right direction
-- Since the geolyzer's scan is in fixed coordinate direction (world coordinate direction)
function faceTo(face, fu, ar)
	if facing == 'south' then
		if face == 'east' then
			facing = face
			rl(fu, ar)
			facing = 'south'
		elseif face == 'west' then
			facing = face
			rr(fu, ar)
			facing = 'south'
		elseif face == 'north' then
			facing = face
			rr(rr, {fu, ar})
			facing = 'south'
		else
			fu(div(ar))
		end
	elseif facing == 'east' then
		if face == 'south' then
			facing = face
			rr(fu, ar)
			facing = 'east'
		elseif face == 'north' then
			facing = face
			rl(fu, ar)
			facing = 'east'
		elseif face == 'west' then
			facing = face
			rr(rr, {fu, ar})
			facing = 'east'
		else
			fu(div(ar))
		end
	elseif facing == 'north' then
		if face == 'east' then
			facing = face
			rr(fu, ar)
			facing = 'north'
		elseif face == 'west' then
			facing = face
			rl(fu, ar)
			facing = 'north'
		elseif face == 'south' then
			facing = face
			rr(rr, {fu, ar})
			facing = 'north'
		else
			fu(div(ar))
		end
	elseif facing == 'west' then
		if face == 'north' then
			facing = face
			rr(fu, ar)
			facing = 'west'
		elseif face == 'south' then
			facing = face
			rl(fu, ar)
			facing = 'west'
		elseif face == 'east' then
			facing = face
			rr(rr, {fu, ar})
			facing = 'west'
		else
			fu(div(ar))
		end
	end
end

-- Wraps face function and going forward without failure together
function moveToward(face, fu, ar)
	faceTo(face, fobs, {fu, ar})
end

-- Scan for neighbouring ore by the robot (1 block far from the robot)
function nextOre()
	computer.beep(1000, 0.01)
	tn = geo.scan(-1, -1, -1, 3, 3, 3)
	if isOre(tn[5]) then
		computer.beep(1500, 0.01)
		dobs(nextOre)
		nextOre()
	end
	if isOre(tn[11]) then
		computer.beep(1500, 0.01)
		moveToward('north', nextOre)
		nextOre()
	end
	if isOre(tn[13]) then
		computer.beep(1500, 0.01)
		moveToward('west', nextOre)
		nextOre()
	end
	if isOre(tn[15]) then
		computer.beep(1500, 0.01)
		moveToward('east', nextOre)
		nextOre()
	end
	if isOre(tn[17]) then
		computer.beep(1500, 0.01)
		moveToward('south', nextOre)
		nextOre()
	end
	if isOre(tn[23]) then
		computer.beep(1500, 0.01)
		uobs(nextOre)
		nextOre()
	end
end

-- Moves to the desired relative coordinate
function relCoordMove(x, z, fu, ar)
	fui, ari = fu, ar
	if x > 0 then
		for i = 1, x do
			fui, ari = moveToward, {'east', fui, ari}
		end
	elseif x < 0 then
		for i = 1, math.abs(x) do
			fui, ari = moveToward, {'west', fui, ari}
		end
	end
	if z > 0 then
		for i = 1, z do
			fui, ari = moveToward, {'south', fui, ari}
		end
	elseif z < 0 then
		for i = 1, math.abs(z) do
			fui, ari = moveToward, {'north', fui, ari}
		end
	end
	fui(div(ari))
end

-- Just maps value to other scale
function map(vmin1, vmax1, vmin2, vmax2, val)
	return (val - vmin1) / (vmax1 - vmin1) * (vmax2 - vmin2) + vmin2
end

-- Scans periodically from 1 block far to 3 blocks far
function steppedScan()
	for i = 1, 3 do
		-- Message: Starting to scan i block(s) far.
		computer.beep(220 * i * 2, 0.01)
		computer.beep(220 * i, 0.01)
		s = i*2 + 1
		t = geo.scan(-i, -i, 0, s, s, 1)
		l = 0
		gout = false
		for j = -i, i do
			m = 0
			for k = -i, i do
				if ((j == -i) or (j == i)) or ((k == -i) or (k == i)) then
					if isOre(t[l * s + m + 1]) then computer.beep(100, 0.01); relCoordMove(k, j, nextOre); gout = true; break; end
				end
				m = m + 1
			end
			if gout then break end
			l = l + 1
		end
		-- Message: Done scanning i block(s) far.
		computer.beep(220 * i, 0.01)
		computer.beep(220 * i * 2, 0.01)
	end
end

-- Scans for a 3x3 flat area to see if there's some ore around
function quickScan()
	t = geo.scan(-3, -3, 0, 7, 7, 1)
	for i = 1, 49 do
		if isOre(t[i]) then
			computer.beep(1320) -- Message: I found some ore nearby!
			steppedScan()
			break
		end
	end
end

---------------------------
--                       --
--   The main program!   --
--                       --
---------------------------
down = 0

for depth = 1, deep do
	if not robot.detect() then robot.place() end
	if robot.detectDown() then if not robot.swingDown() then break end end -- Stop if the robot can't mine down further
	robot.down()
	down = down + 1
	quickScan()
end

for depth = 1, down do
	robot.up()
end

for i = 1, 5 do
	-- Message: I'm done.
	computer.beep(220 * i, 0.01)
end

print(string.format('Skipped %d ores.', skipped))

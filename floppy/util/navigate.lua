local robot = require('robot')
local sides = require('sides')
local importdir = (...):match("(.-)[^%.]+$")
local data = require(importdir .. 'data')

local faces = {'north', 'west', 'south', 'east', [1] = 'north', [2] = 'west', [3] = 'south', [4] = 'east'}

local robotPosition = {
  x = 0,
  y = 0,
  z = 0,
  f = 0
}

local function loadRobotPosition()
  local fin = io.open('robot.info', 'r')
  local dat = data.strSplit(fin:read('*l'))
  local x, y, z, f = tonumber(dat[1]),
                     tonumber(dat[2]),
                     tonumber(dat[3]),
                     tonumber(dat[4])
  fin:close()
  robotPosition.x, robotPosition.y, robotPosition.z, robotPosition.f = x, y, z, f
end
loadRobotPosition()

local function saveRobotPosition()
  local fout = io.open('robot.info', 'w')
  local x, y, z, f = robotPosition.x, robotPosition.y, robotPosition.z, robotPosition.f
  fout:write(tostring(x)..' '..tostring(y)..' '..tostring(z)..' '..tostring(f))
  fout:close()
end

local function move(direction)
  loadRobotPosition()
  if direction == sides.down then
    local res = robot.down()
    if res then
      robotPosition.y = robotPosition.y - 1
    end
    saveRobotPosition()
    return res
  elseif direction == sides.up then
    local res = robot.up()
    if res then
      robotPosition.y = robotPosition.y + 1
    end
    saveRobotPosition()
    return res
  elseif direction == sides.back then
    local res = robot.back()
    if res then
      if     robotPosition.f == 1 then robotPosition.z = robotPosition.z + 1
      elseif robotPosition.f == 2 then robotPosition.x = robotPosition.x + 1
      elseif robotPosition.f == 3 then robotPosition.z = robotPosition.z - 1
      elseif robotPosition.f == 4 then robotPosition.x = robotPosition.x - 1
      end
    end
    saveRobotPosition()
    return res
  elseif direction == 3 then
    local res = robot.forward()
    if res then
      if     robotPosition.f == 1 then robotPosition.z = robotPosition.z - 1
      elseif robotPosition.f == 2 then robotPosition.x = robotPosition.x - 1
      elseif robotPosition.f == 3 then robotPosition.z = robotPosition.z + 1
      elseif robotPosition.f == 4 then robotPosition.x = robotPosition.x + 1
      end
    end
    saveRobotPosition()
    return res
  elseif direction == sides.left then
    local res = robot.turnLeft()
    if res then
      robotPosition.f = robotPosition.f + 1
      if robotPosition.f == 5 then robotPosition.f = 1 end
    end
    saveRobotPosition()
    return res
  elseif direction == sides.right then
    local res = robot.turnRight()
    if res then
      robotPosition.f = robotPosition.f - 1
      if robotPosition.f == 0 then robotPosition.f = 4 end
    end
    saveRobotPosition()
    return res
  else
    return false
  end
end

return {
  -- Fields
  faces = faces,
  robotPosition = robotPosition,

  -- Functions
  loadRobotPosition = loadRobotPosition,
  saveRobotPosition = saveRobotPosition,
  move = move
}
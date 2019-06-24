local nav = require('util/navigate')

local function inputNumber(prompt)
  prompt = prompt or ''
  i = 0
  while true do
    io.write(prompt)
    i = tonumber(io.read())
    if i == nil then
      print('Not a good number.')
    else
      break
    end
  end
  return i
end

print('Tell me where am I now.')
local x, y, z= inputNumber('x: '), inputNumber('y: '), inputNumber('z: ')

print('Tell me where am I facing.')
print('[1] North\n[2] West\n[3] South\n[4] East')
local f = 0
while true do
  io.write('f: ')
  f = tonumber(io.read())
  if f == nil then
    print('Not a good number.')
  elseif (f < 1) or (f > 4) then
    print('Which facing?')
  else
    break
  end
end

print('Thank you. Now, I\'ll probably never get lost anymore.')

rp = nav.robotPosition
rp.x, rp.y, rp.z, rp.f = x, y, z, f
nav.saveRobotPosition()
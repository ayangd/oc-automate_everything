local nav = require('util/navigate')
nav.loadRobotPosition()

local x, y, z, f = nav.robotPosition.x,
                   nav.robotPosition.y,
                   nav.robotPosition.z,
                   nav.robotPosition.f
print('I am at ('..tostring(x)..','..
                   tostring(y)..','..
                   tostring(z)..'), facing '..
                   nav.faces[f]..'.')
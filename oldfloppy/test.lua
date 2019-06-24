local b = function() print('me first!') end

local function a()
  b()
end

local function b()
  print('b called')
end

a()
--Movement API, attach bundled cable to Motor.
--[[
By default Direction colors are as follows;
UP is white
DOWN is orange
EAST(RIGHT) is magenta
WEST(LEFT) is yellow
NORTH(FORWARDS) is blue
SOUTH(BACKWARDS) is lime
]]--
--Attach cable to CPU(Computer Case)

local API = {}
local move = {}

--Declare required component libraries

local component = require("component")
local colors = require("colors")
local sides = require("sides")
local rs = component.redstone --get primrary redstone component
local trigger = rs.setBundledOutput
--Trigger is for movement

moveStatus = "STATIONARY"

function API.move(direction)
  if direction == west {
    trigger(sides.bottom,colors.yellow,255)
    os.sleep(2)
    trigger(sides.bottom,colors.yellow,0)
  }
  elseif direction == east {
  	trigger(sides.bottom,colors.magenta,255)
  	os.sleep(2)
  	trigger(sides.bottom,colors.magenta,0)
  }
  elseif direction == south {
  	trigger(sides.bottom,colors.lime,255)
  	os.sleep(2)
  	trigger(sides.bottom,colors.lime,0)
  }
  elseif direction == north {
  	trigger(sides.bottom,colors.blue,255)
  	os.sleep(2)
  	trigger(sides.bottom,colors.blue,0)
  }
  elseif direction == up {
  	trigger(sides.bottom,colors.white,255)
  	os.sleep(2)
  	trigger(sides.bottom,colors.white,0)
  }
  elseif direction == down {
  	trigger(sides.bottom,colors.orange,255)
  	os.sleep(2)
  	trigger(sides.bottom,colors.orange,0)
  }
end
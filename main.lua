local camera = require "camera"
local gs = require "gameState"
local h = require "helpers"
array = require "array"

lg = love.graphics
lk = love.keyboard

tx = 0
ty = 0

local c, dtx, dty, speed, mouseX, mouseY

function love.load()
  
  currentScene = nil
  
  c = camera.new(800, 600)
  tx = 0
  ty = 0
  dtx = 0
  dty = 0
  
  speed = 5
  
  gs.loadAssets()
  
end

function love.update(dt)
  
  checkMotion(speed)
  
  mouseX, mouseY = love.mouse.getPosition()

  bg.x, bg.y, tx, ty, mouseX, mouseY = c.updateTransform(tx, ty, dtx, dty, bg.x, bg.y, bg.w, bg.h, mouseX, mouseY)

end

function love.draw()
  
  lg.translate(tx, ty)
  lg.scale(zoom)
  
  lg.draw(bg.img)
  lg.draw(chest.img)
  
  lg.printf("   ("..mouseX..", "..mouseY..")", mouseX, mouseY, 200)

end

function checkMotion(speed)
  
  if lk.isDown("w") then
    dty = speed
  elseif lk.isDown("s") then
    dty = -speed
  else
    dty = 0
  end
  
  if lk.isDown("a") then
    dtx = speed
  elseif lk.isDown("d") then
    dtx = -speed
  else
    dtx = 0
  end
  
end

function love.mousepressed(x, y, button, istouch, presses)
  
  if h.checkShapeOverlap(chest.shape, x, y) then
    print("yes")
  else
    print("no")
  end

end


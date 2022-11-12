local camera = require "camera"
local push = require "push"
local gs = require "gameState"

lg = love.graphics
lk = love.keyboard

local c, tx, ty, dtx, dty, speed, windowWidth, windowHeight
local fullScreen, windowAdjustmentNotMadeYet

function love.load()
  
  local gameWidth, gameHeight = 800, 600
  local windowWidth, windowHeight = love.window.getDesktopDimensions()
  if love.system.getOS() == "Web" then
    windowWidth, windowHeight = 800, 600
  end
  
  push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {
      fullscreen = love.system.getOS() ~= "Web" or false,
      resizable = false,
      pixelperfect = true,
      stretched = false})
  
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

  bg.x, bg.y, tx, ty = c.updateTransform(tx, ty, dtx, dty, bg.x, bg.y, bg.w, bg.h)

end

function love.draw()
  if fullScreen == false and windowAdjustmentNotMadeYet then
    windowWidth, windowHeight = 1200, 800
    love.window.setMode(windowWidth, windowHeight)
    windowAdjustmentNotMadeYet = false
  end
  
  push:start()
  
  lg.translate(tx, ty)
  lg.scale(zoom)
  
  lg.draw(bg.img)
  lg.draw(chest.img)
  
  push:finish()

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

function love.keyreleased(key, scancode)
  
  if key == "x" or key == "escape" and love.system.getOS() ~= "Web" then
    push:switchFullscreen()
    if fullScreen == false then
      fullScreen = true
    else
      fullScreen = false
      windowAdjustmentNotMadeYet = true
    end
  end
end

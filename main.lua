camera = require "camera"

lg = love.graphics
lk = love.keyboard

function love.load()
  
  --move this later, it's here for testing
  bg = {}
  bg.img = lg.newImage("/assets/level-one/background.png")
  bg.x = 0
  bg.y = 0
  bg.w = 3200
  bg.h = 2400
  
  lg.setBackgroundColor(1, 1, 1, 1)
  
  c = camera.new(800, 600)
  tx = 0
  ty = 0
  dtx = 0
  dty = 0

end

function love.update(dt)
  
  checkMotion(5)

  bg.x, bg.y, tx, ty = c.update(tx, ty, dtx, dty, bg.x, bg.y, bg.w, bg.h)

end

function love.draw()
  
  lg.translate(tx, ty)
  
  lg.draw(bg.img)

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
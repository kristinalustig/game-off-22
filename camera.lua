C = {}
C.__index = C

function C.new(w, h, x, y)

  local self = setmetatable({
      
      width = w,
      height = h
      
    }, C)

  return self

end

function C.updateTransform(tx, ty, dx, dy, bgx, bgy, bgw, bgh, mx, my)
  
  if ((bgx + bgw + dx >= 800) and (bgx + dx <= 0)) then
    tx = tx + dx
    bgx = bgx + dx
    mx = mx - bgx
  end
  
  if ((bgy + bgh + dy >= 600) and (bgy + dy <= 0)) then
    ty = ty + dy
    bgy = bgy + dy
    my = my - bgy
  end
  
  return bgx, bgy, tx, ty, mx, my

end


function C.createAutomatedMovement(xStart, xEnd, yStart, yEnd, zoomStart, zoomEnd, duration)
  
  --for any sweeping camera motions I want to be able to set them up and run them as part of update
  
end

return C
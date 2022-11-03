C = {}
C.__index = C

function C.new(w, h, x, y)

  local self = setmetatable({
      
      width = w,
      height = h
      
    }, C)

  return self

end

function C.update(translateX, translateY, deltaX, deltaY, bgXOrigin, bgYOrigin, bgWidth, bgHeight)
  
  --if the background's X origin + the width is less than the camera width, keep the translation the same
  if ((bgXOrigin + bgWidth + deltaX >= 800) and (bgXOrigin + deltaX <= 0)) then
    translateX = translateX + deltaX
    bgXOrigin = bgXOrigin + deltaX
  end
  
  if ((bgYOrigin + bgHeight + deltaY >= 600) and (bgYOrigin + deltaY <= 0)) then
    translateY = translateY + deltaY
    bgYOrigin = bgYOrigin + deltaY
  end
  
  return bgXOrigin, bgYOrigin, translateX, translateY

end


function C.createAutomatedMovement(xStart, xEnd, yStart, yEnd, zoomStart, zoomEnd, duration)
  
  --for any sweeping camera motions I want to be able to set them up and run them as part of update
  
end

return C
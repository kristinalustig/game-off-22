H = {}

function H.checkShapeOverlap(shape, mx, my)
  
  return shape:testPoint(0, 0, 0, mx, my)
  
end


return H
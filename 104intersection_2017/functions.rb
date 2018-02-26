def find_delta(a , b ,c)
  delta = b**2 - (4 * a * c)
  return delta
end

def find_b(xp, yp, zp, xv, yv, zv)
  b = 0
  if xv != 0
    b += 2 * xp * xv
  end
  if yv != 0
    b += 2 * yp * yv
  end
  if zv != 0
    b += 2 * zp * zv
  end
  return b
end

def find_a(xp, yp, zp, xv, yv, zv)
  a = 0
  if xv != 0
    a += xv**2
  end
  if yv != 0
    a += yv**2
  end
  if zv != 0
    a += zv**2
  end
  return a
end

def find_c(xp, yp, zp, xv, yv, zv, p)
  c = 0
  c += xp**2 + yp**2 + zp**2 -p**2
  return c
end

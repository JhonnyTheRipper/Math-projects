$LOAD_PATH.unshift('.')
require "functions.rb"


def sphere(xp, yp, zp, xv, yv, zv, p)
  b = find_b(xp, yp, zp, xv, yv, zv)
  a = find_a(xp, yp, zp, xv, yv, zv)
  c = find_c(xp, yp, zp, xv, yv, zv, p)
  delta = find_delta(a, b ,c)
  if delta < 0
    puts "No intersection point."
  elsif delta == 0
    var = -b / (2 * a)
    puts "1 intersection point :"
    x = xp + var * xv
    y = yp + var * yv
    z = zp + var * zv
    puts "(#{'%.03f' % x}, #{'%.03f' % y}, #{'%.03f' % z})"
  elsif delta > 0
    min = (-b - Math.sqrt(delta)) / (2 * a)
    plu = (-b + Math.sqrt(delta)) / (2 * a)
    puts "2 intersection points :"
    puts "(#{'%.03f' % (xp + plu * xv)}, #{'%.03f' % (yp + plu * yv)}, #{'%.03f' % (zp + plu * zv)})"
    puts "(#{'%.03f' % (xp + min * xv)}, #{'%.03f' % (yp + min * yv)}, #{'%.03f' % (zp + min * zv)})"
  end
end

def cylinder(xp, yp, zp, xv, yv, zv, p)
  if zv == 1
    puts "There is an infinite number of intersection points."
    exit
  end
  b  = find_b(xp, yp, 0, xv, yv, 0)
  a = find_a(xp, yp, 0, xv, yv, 0)
  c = find_c(xp, yp, 0, xv, yv, 0, p)
  delta = find_delta(a, b, c)
  if delta < 0
    puts "No intersection point."
  elsif delta == 0
    var = -b / (2 * a)
    puts "1 intersection point :"
    x = xp + var * xv
    y = yp + var * yv
    z = zp + var * zv
    puts "(#{'%.03f' % x}, #{'%.03f' % y}, #{'%.03f' % z})"
  elsif delta > 0
    min = (-b - Math.sqrt(delta)) / (2 * a)
    plu = (-b + Math.sqrt(delta)) / (2 * a)
    puts "2 intersection points :"
    puts "(#{'%.03f' % (xp + plu * xv)}, #{'%.03f' % (yp + plu * yv)}, #{'%.03f' % (zp + plu * zv)})"
    puts "(#{'%.03f' % (xp + min * xv)}, #{'%.03f' % (yp + min * yv)}, #{'%.03f' % (zp + min * zv)})"
  end
end

def cone(xp, yp, zp, xv, yv, zv, p)
  p = p*Math::PI/180
  cotan = 1/Math.tan(p)
  cotan = cotan**2
  a = find_a(xp, yp, 0, xv, yv, 0)
  b = find_b(xp, yp, 0, xv, yv, 0)
  c = find_c(xp, yp, 0, xv, yv, 0, 0)
  a *= cotan
  b *= cotan
  c *= cotan
  az = find_a(0, 0, zp, 0,0, zv)
  bz = find_b(0, 0, zp, 0,0, zv)
  cz = find_c(0, 0, zp, 0,0, zv, 0)
  a -= az
  b = b - bz
  c -= cz

  delta = find_delta(a, b, c)
  if delta < 0
    puts "No intersection point."
  elsif delta == 0
    var = -b / (2 * a)
    puts "1 intersection point :"
    x = xp + var * xv
    y = yp + var * yv
    z = zp + var * zv
    puts "(#{'%.03f' % x}, #{'%.03f' % y}, #{'%.03f' % z})"
  elsif delta > 0
    min = (-b - Math.sqrt(delta)) / (2 * a)
    plu = (-b + Math.sqrt(delta)) / (2 * a)
    puts "2 intersection points :"
    puts "(#{'%.03f' % (xp + plu * xv)}, #{'%.03f' % (yp + plu * yv)}, #{'%.03f' % (zp + plu * zv)})"
    puts "(#{'%.03f' % (xp + min * xv)}, #{'%.03f' % (yp + min * yv)}, #{'%.03f' % (zp + min * zv)})"
  end

end

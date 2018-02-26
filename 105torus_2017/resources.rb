
def biser_me(a0, a1, a2, a3, a4, n)
  d = 0
  x1 = 0.0;
  x2 = 1.0;
  while d < n do
    xm = (x1.abs + x2.abs) / 2
    a = a4 * x1**4 + a3 * x1**3 + a2 * x1**2 + a1 * x1**1 + a0
    b = a4 * x2**4 + a3 * x2**3 + a2 * x2**2 + a1 * x2**1 + a0
    c = a4 * xm**4 + a3 * xm**3 + a2 * xm**2 + a1 * xm**1 + a0
    d = xm.to_s.length.to_i - 2
    puts "x = #{xm}"
    if a * c < 0
      x2 = xm
    else
      x1 = xm
    end
  end
end

def newtone(a0, a1, a2, a3, a4, n)
  x0 = 0.5
  d = 0
  while d < n do
    y = a4 * x0**4 + a3 * x0**3 + a2 * x0**2 + a1 * x0**1 + a0
    yprime = 4 * a4 * x0**3 + 3 * a3 * x0**2 + 2 * a2 * x0**1 + a1
    x1 = x0 - y/yprime
    x1 = x1.round(n)
    puts "x = #{x1}"
    d = x1.to_s.length.to_i - 2
    x0 = x1
  end
end

def f(x, a0, a1, a2, a3, a4)
  y = a4 * x**4 + a3 * x**3 + a2 * x**2 + a1 * x**1 + a0
  return y
end

def secant(a0, a1, a2, a3, a4, n)
  x0 = 0
  x1 = 1
  d = 0
  while d < n do
    x = x0 - f(x0, a0, a1, a2, a3, a4) * ((x0 - x1) / (f(x0, a0, a1, a2, a3, a4) - f(x1, a0, a1, a2, a3, a4)))
    x = x.round(n)
    puts "x = #{x}"
    d = x.to_s.length.to_i - 2
    x0 = x1
    x1 = x
  end
end

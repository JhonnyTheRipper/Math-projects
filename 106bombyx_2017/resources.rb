
def k_rate(n, i0, i1)
  k = 1.00

  while k <= 4.00 do
    counter = 1
    i = n
    x = i
    while counter < i0 do
      x1 = k * x * ((1000.0 - x) / 1000.0)
      x = x1
      counter += 1
    end

    while counter <= i1 do
      x1 = k * x * ((1000.0 - x) / 1000.0)
      x = x1.round(2)
      res = x
      puts "#{'%.02f' % k} #{'%.02f' % res}"
      counter += 1
    end
    k = k + 0.01
  end
end

def zero_to_hundred(n , k)
  counter = 1
  x = n
  res = x.round(2)
  while counter <= 100 do
    puts "#{counter} #{'%.02f' % res}"
    x1 = x * k * ((1000.0 - x) / 1000.0)
    x = x1.round(2)
    res = x
    counter += 1
  end
end

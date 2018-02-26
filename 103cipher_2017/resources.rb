def message_matrix(rows, cols, message)
  array = Array.new(rows) {Array.new(cols, 0)}
  ar = message.codepoints.to_a
  x = 0
  y = 0
  k = 0
  while y < rows do
    x = 0
    while x < cols do
      array[y][x] = ar[k]
      if array[y][x] == nil
        array[y][x] = 0
      end
      k += 1
      x += 1
    end
    y += 1
  end
  return array
end


def matrix(len, key)
  array = Array.new(len) { Array.new(len, 0)}
  ar = key.codepoints.to_a
  x = 0
  y = 0
  k = 0
  while y < len do
    x = 0
    while x < len do
      array[y][x] = ar[k]
      if array[y][x] == nil
        array[y][x] = 0
      end
      k += 1
      x += 1
    end
    y += 1
  end
  return array
end

def print_matrix(arr, len)
  y = 0
  while y < len do
    x = 0
    while x < len do
      printf("%d\t", arr[y][x])
      x += 1
    end
    y += 1
    print "\n"
  end
end

def printmessmatrix(arr, rows, cols)
  y = 0
  while y < rows do
    x = 0
    while x < cols do
      printf("%d\t", arr[y][x])
      x += 1
    end
    y += 1
    print "\n"
  end
end

def matrix_mult(mesarr, array, cols, row)
  res = Array.new(row) { Array.new(cols, 0)}
  x = 0
  y = 0
  n = 1
  while y < row do
    x = 0
    while x < cols do
      n = 1
      res[y][x] = mesarr[y][0] * array[0][x] # + mesarr[y][1] * array[1][x] +mesarr[y][2] * array[2][x]
      while n < cols do
        res[y][x] = res[y][x] + mesarr[y][n] * array[n][x]
        n += 1
      end
      x += 1
    end
    y += 1
  end
  return res
end

def print_message (res)
  i = 0
  y = 1
  printf("%s", res[0][0])
  while res[i] != nil
    while res[i][y] != nil
      printf(" %s", res[i][y])
      y += 1
    end
    y = 0
    i += 1
  end
  puts
end

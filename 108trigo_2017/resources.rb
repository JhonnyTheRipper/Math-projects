def matrix_create(len, ar)
	array = Array.new(len) { Array.new(len, 0)}
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

def factorial(n=0)
	(1..n).inject(:*)
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

def matrix_addition(matrix, matrix_1, matrix_size)
	res = Array.new(matrix_size) {Array.new(matrix_size, 0)}
	x = 0;
	y = 0;
	while y < matrix_size do
		x = 0
		while x < matrix_size do
			res[y][x] = matrix[y][x] + matrix_1[y][x]
			x += 1
		end
		y += 1
	end
	return res
end

def matrix_divide(matrix, number, matrix_size)
	res = Array.new(matrix_size) {Array.new(matrix_size, 0)}
	x = 0;
	y = 0;
	while y < matrix_size do
		x = 0
		while x < matrix_size do
			res[y][x] = matrix[y][x] / number
			x += 1
		end
		y += 1
	end
	return res
end

def print_matrix(arr, len)
  y = 0
  while y < len do
    x = 0
    while x < len do
      printf("%.2f\t", arr[y][x])
      x += 1
    end
    y += 1
    print "\n"
  end
end

def matrix_suppr(matrix, sup, matrix_size)
	res = Array.new(matrix_size) {Array.new(matrix_size, 0)}
	x = 0;
	y = 0;
	while y < matrix_size do
		x = 0
		while x < matrix_size do
			res[y][x] = matrix[y][x] - sup[y][x]
			x += 1
		end
		y += 1
	end
	return res
end

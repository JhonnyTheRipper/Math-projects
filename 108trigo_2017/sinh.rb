$LOAD_PATH.unshift('.')
require "resources.rb"

def sinh_cal(matrix, matrix_size)
  init = Marshal.load(Marshal.dump(matrix))
  counter = 2
  while counter < 100 do
    fact = factorial(counter + 1)
    deno = matrix_mult(matrix, matrix, matrix_size, matrix_size)
    for cc in 1..counter - 1 do
      deno = matrix_mult(deno, matrix, matrix_size, matrix_size)
    end
    deno = matrix_divide(deno, fact, matrix_size)
    init = matrix_addition(deno, init, matrix_size)
    counter = counter + 2
  end
  print_matrix(init, matrix_size)
end

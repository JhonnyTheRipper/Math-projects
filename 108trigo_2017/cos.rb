$LOAD_PATH.unshift('.')
require "resources.rb"

def cos_cal(matrix, matrix_1, matrix_size)
  init = Marshal.load(Marshal.dump(matrix_1))
  counter = 1
  spe_countre  = 0
  while counter < 100 do
    fact = factorial(counter + 1)
    deno = matrix_mult(matrix, matrix, matrix_size, matrix_size)
    for cc in 1..counter - 1 do
      deno = matrix_mult(deno, matrix, matrix_size, matrix_size)
    end
    deno = matrix_divide(deno, fact, matrix_size)
    if spe_countre % 2 == 0
      init = matrix_suppr(init, deno, matrix_size)
    else
      init = matrix_addition(deno, init, matrix_size)
    end
    counter = counter + 2
    spe_countre += 1
  end
  print_matrix(init, matrix_size)
end

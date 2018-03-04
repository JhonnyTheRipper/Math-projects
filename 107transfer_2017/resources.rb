def function(array)
  counter = 0
  puts "0 -> 0.00000"
  while counter <= 1.00 do
    counter = counter + 0.001
    len = array[0].length
    l = 0.0
    while len != 0 do
      f = array[0][len - 1].to_f
      l = l + (f * counter ** (len-1))
      len = len - 1
    end
    puts "#{'%.03f' % counter} -> #{'%.05f' % l}"
  end
end


def function_2(array)
  counter = 0
  puts "0 -> 0.00000"
  while counter <= 1.00 do
    counter = counter + 0.001
    len = array[0].length
    len_2 = array[1].length
    l = 0.0
    j = 0.0
    while len != 0 do
      f = array[0][len - 1].to_f
      l = l + (f * counter ** (len-1))
      len = len - 1
    end

    while len_2 != 0 do
      f = array[1][len_2 - 1].to_f
      j = j + (f * counter ** (len_2-1))
      len_2 = len_2 - 1
    end
    l = l / j
    puts "#{'%.03f' % counter} -> #{'%.05f' % l}"
  end
end

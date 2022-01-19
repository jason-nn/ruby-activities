arr = [1, 3, 5, 7, 9, 11]
number = 3

def num_in_arr(num, arr)
  return (' ' + arr.join(' ') + ' ').include? (' ' + num.to_s + ' ')
end

puts num_in_arr(number, arr)

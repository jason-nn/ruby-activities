# def increment_string(input)
#   nums = %w[0 1 2 3 4 5 6 7 8 9]
#   input_letters = input.split('').group_by { |i| nums.include? i }[false]
#   input_nums = input.split('').group_by { |i| nums.include? i }[true]
#   return input + '1' if !input_nums

#   incremented = (input_nums.join('').to_i + 1).to_s
#   length_diff = input_nums.length - incremented.length

#   if length_diff > 0
#     return input_letters.join('') + '0' * length_diff + incremented
#   else
#     return input_letters.join('') + incremented
#   end
# end

# def increment_string(input)
#   nums = %w[0 1 2 3 4 5 6 7 8 9]

#   index = input.length - 1

#   reverse = input.split('').reverse

#   reverse.each do |character|
#     if !nums.include? character
#       string = input[0..index]
#       nums = input[index + 1..input.length]
#       increment = (nums.to_i + 1).to_s

#       difference = nums.length - increment.length

#       if difference > 0
#         return string + '0' * difference + increment
#       else
#         return string + increment
#       end
#     end
#     index -= 1
#   end
# end

def increment_string(input)
  nums = %w[0 1 2 3 4 5 6 7 8 9]
  index = input.length - 1
  reverse = input.split('').reverse

  reverse.each do |character|
    break if !nums.include? character
    index -= 1
  end

  string = input[0, index + 1].to_s
  nums = input[index + 1, input.length - index].to_s
  increment = (nums.to_i + 1).to_s

  difference = nums.length - increment.length
  if difference > 0
    return string + '0' * difference + increment
  else
    return string + increment
  end
end

pp increment_string 'foo'
pp increment_string 'foobar23'
pp increment_string 'foo0042'
pp increment_string 'foo9'
pp increment_string 'foo099'
pp increment_string 'f00bar1'
pp increment_string 'f00b4r1'
pp increment_string '0'
pp increment_string '001'
pp increment_string ''

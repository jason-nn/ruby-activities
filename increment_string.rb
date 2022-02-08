def increment_string(input)
  nums = %w[0 1 2 3 4 5 6 7 8 9]
  input_letters = input.split('').group_by { |i| nums.include? i }[false]
  input_nums = input.split('').group_by { |i| nums.include? i }[true]
  return input + '1' if !input_nums

  incremented = (input_nums.join('').to_i + 1).to_s
  length_diff = input_nums.length - incremented.length

  if length_diff > 0
    return input_letters.join('') + '0' * length_diff + incremented
  else
    return input_letters.join('') + incremented
  end
end

pp increment_string 'foo'
pp increment_string 'foobar23'
pp increment_string 'foo0042'
pp increment_string 'foo9'
pp increment_string 'foo099'

def iq_test(numbers)
  split = numbers.split(' ')
  group = split.group_by { |num| num.to_i % 2 == 0 }
  return split.index(group[true][0]) + 1 if group[true].length == 1
  return split.index(group[false][0]) + 1 if group[false].length == 1
end

pp iq_test '2 4 7 8 10'

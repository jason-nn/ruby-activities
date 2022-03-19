arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts arr.group_by { |num| num <=> 5 }

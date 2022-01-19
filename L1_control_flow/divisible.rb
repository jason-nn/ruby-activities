arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

output = (arr.group_by { |num| num % 2 == 0 })[true]

pp output

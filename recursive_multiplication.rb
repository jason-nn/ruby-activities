def multiply(a, b)
  return a if b == 1
  return a + multiply(a, b - 1)
end

puts multiply(5, 10)
puts multiply(2, 3)
puts multiply(7, 19)

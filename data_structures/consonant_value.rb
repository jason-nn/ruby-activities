def solve(s)
  return(
    s
      .split(/[aeiou]/)
      .map { |i| i.split('').reduce(0) { |a, v| a + v.ord - 96 } }
      .max
  )
end

p solve('strength')
p solve('zodiac')

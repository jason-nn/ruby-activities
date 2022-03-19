def is_square(x)
  i = 0

  while i * i <= x
    return true if i * i == x
    i += 1
  end

  return false
end

# Linear solution

# def is_square(x)
#   x < 0 ? false : (x ** 0.5) % 1 == 0
# end

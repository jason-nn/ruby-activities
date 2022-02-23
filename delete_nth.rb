def delete_nth(array, max)
  hash = {}
  output = []
  array.each do |number|
    hash[number] = 0 if !hash[number]
    hash[number] += 1
    output << number if hash[number] <= max
  end
  return output
end

pp delete_nth([1, 1, 3, 3, 7, 2, 2, 2, 2], 3)

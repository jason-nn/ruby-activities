def find_smallest_int(arr)
  min = arr[0]
  arr.each { |num| min = num if num < min }
  return min
end

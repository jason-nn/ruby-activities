def find_uniq(arr)
  grouped = arr.group_by { |i| i == arr[0] }
  return grouped[true][0] if grouped[true].length == 1
  return grouped[false][0] if grouped[false].length == 1
end

pp find_uniq([1, 1, 1, 2, 1, 1])

def is_sorted_and_how(arr)
  return 'yes, ascending' if arr == arr.sort
  return 'yes, descending' if arr == arr.sort { |a, b| b <=> a }
  return 'no'
end

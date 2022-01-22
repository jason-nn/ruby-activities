def count_positives_sum_negatives(arr)
  return [] if arr == nil || arr == []
  return [
    if arr.group_by { |num| num > 0 }[true].respond_to? :length
      arr.group_by { |num| num > 0 }[true].length
    else
      0
    end,
    if arr.group_by { |num| num > 0 }[false].respond_to? :sum
      arr.group_by { |num| num > 0 }[false].sum
    else
      0
    end
  ]
end

pp count_positives_sum_negatives(nil)
pp count_positives_sum_negatives([])
pp count_positives_sum_negatives(
     [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15],
   )

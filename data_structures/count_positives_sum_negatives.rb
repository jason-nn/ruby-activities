def count_positives_sum_negatives(arr)
  return [] if arr == nil || arr == []

  grouped = arr.group_by { |num| num > 0 }
  positive = grouped[true]
  negative = grouped[false]

  return [
    if positive.respond_to? :length
      positive.length
    else
      0
    end,
    if negative.respond_to? :sum
      negative.sum
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

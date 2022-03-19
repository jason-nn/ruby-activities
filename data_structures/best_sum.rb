def choose_best_sum(t, k, ls)
  return ls.combination(k).map { |arr| arr.sum }.select { |sum| sum <= t }.max
end

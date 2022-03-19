def up_array(arr)
  return nil if arr.length < 1 || arr.any? { |num| num < 0 || num > 9 }
  return (arr.join.to_i + 1).to_s.split('').map { |num| num.to_i }
end

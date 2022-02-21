def gimme(arr)
  return arr.find_index arr.sort[arr.length / 2]
end

pp gimme [2, 3, 1]
pp gimme [5, 10, 14]

def is_isogram(string)
  arr = []
  string.each_char do |letter|
    return false if arr.include? letter.downcase
    arr << letter.downcase
  end
  return true
end

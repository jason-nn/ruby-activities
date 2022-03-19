def unique_in_order(iterable)
  arr = []
  if iterable.respond_to? :each_char
    iterable.each_char { |i| arr << i if arr.last != i }
  else
    iterable.each { |i| arr << i if arr.last != i }
  end
  return arr
end

pp unique_in_order('AAAABBBCCDAABBB')

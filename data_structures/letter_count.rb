def letter_count(str)
  output = {}
  str.each_char do |i|
    if output[i.to_sym]
      output[i.to_sym] += 1
    else
      output[i.to_sym] = 1
    end
  end
  return output
end

pp letter_count 'jason'

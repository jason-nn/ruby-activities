def disemvowel(str)
  return str.split('').group_by { |i| %w[a e i o u].include? i.downcase }[false].join('')
end

puts disemvowel 'This website is for losers LOL!'

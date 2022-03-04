def foo(str)
  bar =
    str.downcase.gsub(' ', '').split('').tally.values.group_by { |i| i === 1 }
  return bar[true].length < 2 && bar[false].all? { |i| i % 2 == 0 }
end

pp foo 'Tact Coa'

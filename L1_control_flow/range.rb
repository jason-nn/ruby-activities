print 'Enter a number: '
num = gets.chomp.to_i

if num > 100
  puts 'Number is greater than 100'
elsif num >= 51
  puts 'Number is between 51 and 100'
elsif num >= 0
  puts 'Number is between 0 and 50'
else
  puts 'Number is less than 0'
end

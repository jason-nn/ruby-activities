puts 'How old are you?'
age = gets.chomp.to_i

years = [10, 20, 30, 40]

years.each do |year|
  puts "In #{year} years you will be:"
  puts age + year
end

def encode(s)
  s.gsub(/[aeiou]/, 'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5')
end

def decode(s)
  s.gsub(/[12345]/, '1' => 'a', '2' => 'e', '3' => 'i', '4' => 'o', '5' => 'u')
end

puts encode('hello')
puts decode('h2ll4')

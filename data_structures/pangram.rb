def pangram?(string)
  string
    .split('')
    .map { |n| n.match?(/[a-zA-Z]/) ? n.downcase : nil }
    .compact
    .uniq
    .count == 26
end

p pangram?('The quick brown fox jumps over the lazy dog.')
p pangram?('This is not a pangram.')

def reverse_alternate(string)
  string
    .split
    .each_with_index
    .map { |value, index| index.odd? ? value.reverse : value }
    .join(' ')
end

p reverse_alternate('Iam really hope it works this time...')

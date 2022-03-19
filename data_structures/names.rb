def list(names)
  return '' if names.length == 0
  return names[0][:name] if names.length == 1
  arr = names.map { |hash| hash[:name] }
  return arr[0..-2].join(', ') + ' & ' + arr.last
end

pp list([{ name: 'Bart' }, { name: 'Lisa' }, { name: 'Maggie' }])
pp list([{ name: 'Bart' }, { name: 'Lisa' }])
pp list([{ name: 'Bart' }])
pp list([])

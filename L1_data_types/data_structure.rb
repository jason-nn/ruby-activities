contact_data = [
  ['john@email.com', '123 Main St.', '555-123-4567'],
  ['avion@email.com', '404 Not Found Dr.', '123-234-3454'],
]

labels = %i[email address phone]

contacts = { 'John Cruz' => {}, 'Avion School' => {} }

contact_count = 0

contacts.keys.each do |key|
  label_count = 0

  labels.each do |label|
    contacts[key][label] = contact_data[contact_count][label_count]
    label_count += 1
  end

  contact_count += 1
end

puts contacts

def century(year)
  return year / 100 if year % 100 == 0
  return year / 100 + 1
end

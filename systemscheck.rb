grades = [75, 100, 85, 65, 84, 87, 95]
total = 0
count = 0
highest = 0
lowest = 0

grades.each do |numbers|
  total += numbers
  count += 1
end

grades.each do |high|
  if highest == 0
    highest = high
  elsif high > highest
    highest = high
  end
end

grades.each do |low|
  if lowest == 0
    lowest = low
  elsif low < lowest
    lowest = low
  end
end

puts "The scores are #{grades}"
puts "The average of the test scores is #{total/count}"
puts "The highest score is #{highest}"
puts "The lowest score is #{lowest}"
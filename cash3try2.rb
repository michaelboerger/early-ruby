
require "csv"
require "pry"
data = []
input = 0

#get the csv to a array of hashes
CSV.foreach("products.csv", headers: true) do |row|
  data << row.to_hash
end

def currency_formatter(amount)
  sprintf("$%.2f", amount)
end

def ordering (data=false)
  input = gets.chomp.to_i
  menu_selection(input, data)
end


def menu_selection (input, data=0)
until input == 4
  if input == 1
    puts data[0]
    ordering(data)
  elsif input == 2
    puts data[1]
    ordering(data)
  elsif input == 3
    puts data[2]
    ordering(data)
  elsif input == 4
    puts "THING"
  else
    puts "hahahha this is not real"
    ordering
  end
end
puts "end o loop"
test_meth
end

def test_meth
  puts "WHAT UP"
end

puts "1) Add item - $5.00 - Light"
puts "2) Add item - $7.50 - Medium"
puts "3) Add item - $9.75 - Bold"
puts "4) Complete Sale"
puts "5) Reporting"

input = ordering(data)
puts "HI"
require 'csv'
require 'pry'

scores = []
weeks = {}

CSV.foreach('scores.csv', headers: true) do |row|
  scores << row
end

puts scores
require 'csv'
require_relative 'array_mods'
require 'pry'

def csv_to_array(filename)
  csv = CSV::parse(File.open('data.csv', 'r:ISO-8859-1') {|line| line.read })
  fields = csv.shift
  fields = fields.map {|f| f.downcase.gsub(" ", "_")}
  records = csv.collect { |record| Hash[*fields.zip(record).flatten ] }
  return records
end

all_movies = csv_to_array('data.csv')

unsorted = []
all_movies = all_movies.sort_by { |row| row[:movie_id] }.each do |row|
  unsorted << [row["movie_id"].to_i, row["rating"].to_i]
end

# movie_id_and_rating = Hash[unsorted].each do |x|
#   [unsorted[0], unsorted[1]]
# end





movie_id = gets.chomp.to_i
movie_ratings = []

unsorted.each do |row|
  if row[0] == movie_id
    movie_ratings << row[1]
  end
end

def ratings_avg(movie_ratings)
  sum = 0
  movie_ratings.each { |b| sum += b }
  average_movie_rating = (sum.to_f / movie_ratings.count.to_f).round(1)
end

r = ratings_avg(movie_ratings)
puts "#{r}"

puts "#{movie_ratings}"

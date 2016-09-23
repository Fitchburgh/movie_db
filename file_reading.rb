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

movie_id_and_rating = []
all_movies = all_movies[0..10].sort_by { |movie| movie[:movie_id] }.each do |movie|
  movie_id_and_rating << [movie["movie_id"].to_i, movie["rating"].to_i]
  # movie_id_and_rating <<
end

puts "#{movie_id_and_rating}"

# movie_id_and_rating.select.each_with_index { |_, i| i.odd? }
# if movie_id_and_rating.select.each_with_index { |_, i| i.even? } == 1
#   puts "hi"
# elsif movie_id_and_rating.select.each_with_index { |_, i| i.odd? } == 1
#   puts "no"
# # end

tomato = gets.chomp.to_i
if movie_id_and_rating.odd_values == tomato
  puts "hi"
end





# csv = csv_row.fields.to_csv( options )
# puts test_movies
# ITS WORRRRRKINGGG!!!

# new_hash = {}
# all_movies.each { |i| new_hash[i] = hash.delete(i)}

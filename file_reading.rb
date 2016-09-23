require 'csv'
require_relative 'array_mods'

def csv_to_array(filename)
    csv = CSV::parse(File.open('data.csv', 'r:ISO-8859-1') {|line| line.read })
    fields = csv.shift
    fields = fields.map {|f| f.downcase.gsub(" ", "_")}
    movies_ratings_users = csv.collect { |record| Array[*fields.zip(record).flatten ] }
    return movies_ratings_users
end

all_movies = csv_to_array('data.csv')

all_movies[1] = all_movies.vget_odd_indexes


puts "#{all_movies[1]}"
# ITS WORRRRRKINGGG!!!

# new_hash = {}
# all_movies.each { |i| new_hash[i] = hash.delete(i)}

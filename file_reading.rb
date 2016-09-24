require 'csv'
require_relative 'array_mods'
require 'pry'

# This file should run first to build the databases and read the files.
# This might be a run main on its own in order to startup the system.

def csv_to_array(filename)
  csv = CSV.parse(File.open(filename, 'r:ISO-8859-1') { |line| line.read })
  fields = csv.shift
  fields = fields.map { |f| f.downcase.gsub(' ', '_') }
  records = csv.collect { |record| Hash[*fields.zip(record).flatten] }
  return records
end

# all_movies = csv_to_array('data.csv')


def all_movie_sort(all_movies, unsorted)
  all_movies = all_movies.sort_by { |row| row[:movie_id] }.each do |row|
    unsorted << [row['movie_id'].to_i, row['rating'].to_i]
  end
end

def movie_to_array(filename)
  csv = CSV.parse(File.open(filename, 'r:ISO-8859-1') { |line| line.read })
  fields = csv.shift
  fields = fields.map { |f| f.gsub(' ', '_') }
  records = csv.collect { |record| Hash[*fields.zip(record).flatten] }
  return records
end
# movie_by_id = movie_to_array('item.csv')

def movie_by_id_compile(all_movies_info, unsorted_info)
  temp = all_movies_info.sort_by { |row| row[:movie_id] }.each do |row|
  unsorted_info << [row['movie_id'].to_i, row['title'].to_s]
  end
end

# this func needs to have movie_ratings array.  gives final ratings of movie.
# def ratings_by_id
#   unsorted.each do |row|
#     if row[0] == movie_id
#       movie_ratings << row[1]
#     end
#   end
# end

# # requires ratings_by_id to be run ahead of time in order to get avg.
# # call this func to get the avg ratings.  set to variable.
# def get_avg_rating(movie_ratings)
#   sum = 0
#   movie_ratings.each { |b| sum += b }
#   average_movie_rating = (sum.to_f / movie_ratings.count.to_f).round(1)
# end

# r = get_avg_rating(movie_ratings)

# puts "#{r}"

# puts "#{movie_ratings}"

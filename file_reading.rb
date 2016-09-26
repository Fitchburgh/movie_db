require 'csv'
require 'pry'

# This file should run first to build the databases and read the files.
# This might be a run main on its own in order to startup the system.
def bootup(movie_id_and_rating, unsorted_info, user_id_and_ratings)

  csv = CSV.parse(File.open('data.csv', 'r:ISO-8859-1') { |line| line.read })
  fields = csv.shift
  fields = fields.map { |f| f.downcase.gsub(' ', '_') }
  all_movies = csv.collect { |record| Hash[*fields.zip(record).flatten] }

  all_movies.sort_by { |user| user[:user_id] }.each do |user|
    user_id_and_ratings << [user['user_id'].to_i, user['movie_id'].to_i, user['rating'].to_i]
  end

  # movie_id_and_rating = []
  all_movies.sort_by { |movie| movie[:movie_id] }.each do |movie|
    movie_id_and_rating << [movie['movie_id'].to_i, movie['rating'].to_i]
  end

  csv = CSV.parse(File.open('item.csv', 'r:ISO-8859-1') { |line| line.read })
  fields = csv.shift
  fields = fields.map { |f| f.gsub(' ', '_') }
  movie_titles = csv.collect { |record| Hash[*fields.zip(record).flatten] }

  # movie_by_id = movie_to_array('item.csv')

  movie_titles.sort_by { |row| row[:movie_id] }.each do |row|
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




#this stopped working...
# # req unsorted array
# def all_movie_sort(all_movies, unsorted)
#   unsorted = all_movies[1..10].sort_by { |row| row[:movie_id] }.each do |row|
#     unsorted << [row['movie_id'].to_i, row['rating'].to_i]
#     return unsorted
#   end
# end

require_relative 'movie'
require_relative 'user'
require_relative 'rating'
require 'csv'
require_relative 'file_reading'
require_relative 'array_mods'


def main
  print "\n"
  print "\n"
  print "\n"
  print "\n"
  puts 'Welcome to ShytFlyx!  Booting up the database...'
  print "\n"
  print "\n"
  print "\n"
  # running all initial startup database structuring

  movie_id_and_rating = []
  unsorted_info = []
  bootup(movie_id_and_rating, unsorted_info)
  # pulling all movieID's and sorting them

  # # initializing the first movie ID to gather details for

  puts 'Please enter a MovieID to begin: '
  movie_id = gets.chomp.to_i
  new_movie = Movie.new(movie_id)
  new_rating = Rating.new(movie_id)

  new_movie.title_by_id(unsorted_info, movie_id)
  puts "Movie's ID: #{new_movie.movie_id}\nMovie's Title:  #{new_movie.title}"
  average_movie_rating = []

  new_rating.ratings_by_id(movie_id_and_rating, movie_id)
  new_rating.get_avg_rating(new_rating.movie_ratings)
  puts "With #{new_rating.movie_ratings.count} reviews, #{new_movie.title} has an average rating of: #{new_rating.average_movie_rating}."
  # puts "Should be movie rating #{movie_rating}"
end

main if __FILE__ == $PROGRAM_NAME

# all_movies_ratings = csv_to_array('data.csv')
# unsorted_ratings = []
# tomato = all_movie_sort(all_movies_ratings, unsorted_ratings)
# puts "tomato = #{tomato}"
#
# # pulling in all movie titles and ID's associated.
# all_movies_info = movie_to_array('item.csv')
# unsorted_info = [] # NEEDS TO BE NAMED BETTER USING THIS FOR SMALLER FILE SIZE
# movie_by_id_compile(all_movies_info, unsorted_info)
#

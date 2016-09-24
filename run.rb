require_relative 'movie'
require_relative 'user'
require_relative 'rating'
require 'csv'
require_relative 'file_reading'
require_relative 'array_mods'


def main
  puts "Welcome to ShitFlyx!  Booting up the database..."
  # running all initial startup database structuring

  # pulling all movieID's and sorting them
  all_movies_ratings = csv_to_array('data.csv')
  unsorted_ratings = []
  sorted_ratings = all_movie_sort(all_movies_ratings, unsorted_ratings)
  Rating.new

  # pulling in all movie titles and ID's associated.
  all_movies_info = movie_to_array('item.csv')
  unsorted_info = [] # NEEDS TO BE NAMED BETTER USING THIS FOR SMALLER FILE SIZE
  movie_by_id_compile(all_movies_info, unsorted_info)

  # initializing the first movie ID to gather details for
  print "\n"
  print "\n"
  print "\n"
  print "\n"
  puts "Please enter a MovieID to begin: "
  movie_id = gets.chomp.to_i
  new_movie = Movie.new(movie_id)
  movie_title = 0
  # setting variables for functions.
  movie_ratings = []
  # gathering .gets data


  new_movie.title_by_id(unsorted_info, movie_id)
  puts "Should be movie title:  #{new_movie.title}"

  movie_rating = ratings_by_id(unsorted_ratings, movie_id)

  puts "Should be movie rating #{movie_rating}"

end

main if __FILE__ == $PROGRAM_NAME

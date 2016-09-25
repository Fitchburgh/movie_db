require_relative 'movie'
require_relative 'user'
require_relative 'rating'
require 'csv'
require_relative 'file_reading'
require_relative 'array_mods'


def main
  print "\n\n\n\n"
  puts 'Welcome to ShytFlyx!  Booting up the database...'
  print "\n\n\n"
  # running all initial startup database structuring

  movie_id_and_rating = []
  unsorted_info = []
  user_id_and_ratings = []
  specific_users_ratings = {}
  # bootup method grabs all movies, users, and ratings and does some sorting.
  # see associated class for more information
  bootup(movie_id_and_rating, unsorted_info, user_id_and_ratings)

  loop do
    puts "\n\n\n\n"
    puts "Please enter 1-(4?) for the following options: "
    puts "1 ≈ Check a MovieID for associated title and ratings."
    puts "2 ≈ Check a UserID for associated reviews"
    option_input = gets.chomp.to_i
    if option_input == 1
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
    elsif option_input == 2
      puts 'Please enter a UserID to begin: '
      user_id = gets.chomp.to_i
      new_user = User.new
      new_user.users_total_ratings(user_id_and_ratings, user_id)
      temp = new_user.ratings_per_movie
      puts "UserID #{user_id} has:\n#{temp.count} reviews"
      puts 'Title by movieID? Y/N'
      answer = gets.chomp.downcase
      if answer == 'n'
        puts "Type Q to quit or any other key to see all options:"
        answer2 = gets.chomp.downcase
        if answer2 == 'q'
          exit
        else
        end
      elsif
        answer == 'y'
        # add finding title by movie ID.
      end
    end
  end



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

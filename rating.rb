require 'csv'
require_relative 'user'
require_relative 'movie'
require_relative 'run'


class Rating
  def initialize
  end

  def averages_ratings(movie_id, rating)
    # get all ratings based on movie_id
    # add all those ratings
    # divide by # of ratings.

  end
  def Rating.get_rating(movie_id)
    ratings = []
    CSV.foreach('data.csv', 'r:ISO-8859-1') {|row| ratings << row[0]}
    ratings[2].split('|')
    puts "hi"
  end

end

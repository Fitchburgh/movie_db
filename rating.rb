require 'csv'
require_relative 'user'
require_relative 'movie'
require_relative 'run'
require_relative 'file_reading'
require_relative 'array_mods'


class Rating
  def initialize
  end

  # this func needs to have movie_ratings array.  gives final ratings of movie.

  def ratings_by_id(unsorted, movie_id)
    unsorted.each do |row|
      if row[0] == movie_id
        movie_ratings << row[1]
      end
    end
  end

  # requires ratings_by_id to be run ahead of time in order to get avg.
  # call this func to get the avg ratings.  set to variable.

  def get_avg_rating(movie_ratings)
    sum = 0
    movie_ratings.each { |b| sum += b }
    average_movie_rating = (sum.to_f / movie_ratings.count.to_f).round(1)
  end
end

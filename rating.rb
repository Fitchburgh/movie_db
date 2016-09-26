require 'csv'

class Rating
  attr_reader :movie_id, :movie_ratings, :average_movie_rating
  def initialize(*args)
    @movie_id, @movie_ratings, @average_movie_rating = *args
  end

  # this func needs to have movie_ratings array.  gives final ratings of movie.

  def ratings_by_id(unsorted, movie_id)
    @movie_ratings = []
    unsorted.each do |row|
      if row[0] == movie_id
        @movie_ratings << row[1]
      end
    end
  end

  # requires ratings_by_id to be run ahead of time in order to get avg.
  # call this func to get the avg ratings.  set to variable.

  def get_avg_rating(movie_ratings)
    sum = 0
    movie_ratings.each { |b| sum += b }
    @average_movie_rating = (sum.to_f / @movie_ratings.count.to_f).round(1)
  end
end

require 'CSV'
require_relative 'rating'
require_relative 'user'
require_relative 'run'
require_relative 'file_reading'
require_relative 'array_mods'

class Movie
  def initialize(movie_id, rating) #title, genre, rating, release_date)
    @movie_id = movie_id
    # @title = title
    # @genre = genre
    @rating = rating
    # @release_date = release_date
  end



end

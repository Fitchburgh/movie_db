require 'CSV'
require_relative 'rating'
require_relative 'user'
require_relative 'run'


output = CSV.foreach('item.csv', 'r:ISO-8859-1').map do |row|
  row.to_csv(:col_sep => ", ")
end
puts output[0]
puts "hi"

class Movie
  def initialize(movie_id, rating) #title, genre, rating, release_date)
    @movie_id = movie_id
    # @title = title
    # @genre = genre
    @rating = rating
    # @release_date = release_date
  end
end

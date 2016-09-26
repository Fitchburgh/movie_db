require 'CSV'

class Movie

  attr_reader :movie_id, :rating, :title

  def initialize(*args) #title, genre, rating, release_date)
    @movie_id, @title, @genre, @rating, @release_date = *args
  end

  def title_by_id(temp1, movie_id)
    temp1.each do |row|
      if row[0] == @movie_id
        @title = row[1]
      end
    end
  end




end

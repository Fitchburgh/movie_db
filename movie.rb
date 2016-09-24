require 'CSV'
require_relative 'rating'
require_relative 'user'
require_relative 'run'
require_relative 'file_reading'
require_relative 'array_mods'

class Movie

  attr_reader :movie_id, :rating, :title

  def initialize(*args) #title, genre, rating, release_date)
    @movie_id, @title, @genre, @rating, @release_date = *args
  end

  def title_by_id(temp1, movie_id)
    temp1.each do |row|
      if row[0] == @movie_id
        puts "movie id = #{row[0]}"
        puts "title = #{row[1]}"
        @title = row[1]
      end
    end
  end




end

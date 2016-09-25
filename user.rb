require 'pry'
require 'csv'
require_relative 'rating'
require_relative 'movie'
require_relative 'run'
require_relative 'file_reading'
require_relative 'array_mods'

class User

  attr_reader :user_id, :gender, :job, :ratings_per_movie

  def initialize(*args) # age, gender, job)
    @user_id, @gender, @job, @ratings_per_movie = *args
  end

  def users_total_ratings(user_id_and_ratings, user_id)
    @ratings_per_movie = []
    user_id_and_ratings.each do |idsort|
      if idsort[0] == user_id
        @ratings_per_movie <<  [idsort[1], idsort[2]]
      end
    end
  end





end

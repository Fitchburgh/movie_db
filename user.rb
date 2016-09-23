require 'csv'
require_relative 'rating'
require_relative 'movie'
require_relative 'run'
require_relative 'file_reading'
require_relative 'array_mods'

class User

  attr_reader :user_id, #:age, :gender, :job

  def initialize(user_id) # age, gender, job)
    @user_id = user_id
    # @age = age
    # @gender = gender
    # @job = job
  end

  def get_user_id()

  end

  col_data = []
  CSV.foreach('user.csv', 'r:ISO-8859-1') {|row| col_data << row[0]}
  user_id =  col_data[1].split('|')

end

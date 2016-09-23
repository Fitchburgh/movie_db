require_relative '../run'
require_relative '../user'
require_relative '../movie'
require_relative '../rating'
require_relative 'array_mods'
require_relative 'file_reading'
require 'csv'

# describe Movie do
#   it "creates an object in the class movie with params" do
#     movie1 = Movie.new(1, 'Toy Story', 'Animation', 4, '1995')
#     expect(movie1).to eq(movie1(1, 'Toy Story', 'Animation', 4, '1995'))
#   end
#
# end

# describe User do
#   user1 = User.new
#   it 'creates an object in the movie class' do
#     expect(user1).to be_a(User)
#   end
# end
#
describe Rating do
  it 'creates an obj in the rating class' do
    rating1 = Rating.new
    expect(rating1).to be_a(Rating)
  end
  it 'averages ratings' do
    movie1 = Movie.new(1) #this is our gets.chomp for movide_id.
    expect(movie1.rating).to eq(4)
  end

end

# describe 'user.rb' do
#   before do
#     @tomato = User.new(2, 53, 'other')
#   end
#   it 'to initalize a new obj in class user' do
#
#     expect(@tomato.age).to eq(53)
#
#   end
#   it 'return gender when given user id' do
#     expect(@tomato.gender).to eq('F')
#   end
#
#   # it "validates that user input is integer" do
#   #
#   #   expect(@tomato.get_user_id).to eq(2)
#   # end
# end















#

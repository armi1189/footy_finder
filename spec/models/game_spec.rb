require 'rails_helper'

RSpec.describe Game, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end


# require 'rails_helper'
# require 'games_helper'
# require 'users_helper_spec'

# describe Game, type: :model do
#   it { is_expected.to have_many(:users).dependent(:destroy) }

#   it "is not valid unless it has a unique name" do
#     Game.create(name: "Game 1")
#     game = Game.new(name: "Game 1")
#     expect(game).to have(1).error_on(:name)
#   end

#   it "is throwing an error on 11th player trying to join a game" do
#     Game.create(name: "Game 1")
#     game = Game.new(name: "Game 1")
#     create_ten_users
#     expect(create_user).to have_content('Game is full')
#   end

#   it "wont let you join a game you have already joined" do
#     Game.create(name: "Game 1")
#     game = Game.new(name: "Game 1")
#     create_user
#     click_link 'Join Game'
#   end
# end

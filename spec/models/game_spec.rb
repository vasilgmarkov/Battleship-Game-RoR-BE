require 'rails_helper'
# Test suite for the Game model
RSpec.describe Game, type: :model do

  # Association test
  # ensure Game model has a 1:m relationship with the GamePlayer model
  it {should have_many(:game_player).dependent(:destroy) }

end

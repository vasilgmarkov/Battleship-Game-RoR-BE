require 'rails_helper'

RSpec.describe Ship, type: :model do
  # Association test
  # ensure an ship record belongs to a single game_player
  it { should belong_to(:game_player) }
end

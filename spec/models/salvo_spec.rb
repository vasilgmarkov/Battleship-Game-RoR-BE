require 'rails_helper'

RSpec.describe Salvo, type: :model do
  # Association test
  # ensure an salvo record belongs to a single game_player
  it { should belong_to(:game_player) }
end

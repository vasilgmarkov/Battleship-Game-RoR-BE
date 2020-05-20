require 'rails_helper'

RSpec.describe Score, type: :model do
  # Association test
  # ensure an game_player record belongs to a single user and game record
  it { should belong_to(:user) }
  it { should belong_to(:game) }
end

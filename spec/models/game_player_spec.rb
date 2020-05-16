require 'rails_helper'
#Test suite for the GamePlayer model
RSpec.describe GamePlayer, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:user) }
  it { should belong_to(:game) }
end

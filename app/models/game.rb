class Game < ApplicationRecord
    # model association
    has_many :game_player, dependent: :destroy
    has_many :score, dependent: :destroy
end

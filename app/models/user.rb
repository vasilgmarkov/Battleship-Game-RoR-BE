class User < ApplicationRecord
    # model association
    has_many :game_player, dependent: :destroy

    # validations

    validates_presence_of :name, :email, :password_digest
end

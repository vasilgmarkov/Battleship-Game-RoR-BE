class GamePlayer < ApplicationRecord
  # model association
  
  belongs_to :user
  belongs_to :game

  has_many :ship, dependent: :destroy
  has_many :salvo, dependent: :destroy
end

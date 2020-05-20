module Gameview
  def get_user(id)
    @user = User.find(id).attributes.except("password_digest", "created_at", "updated_at")
  end
  def get_game_players(id)
    @gamePlayers = GamePlayer.where(game_id:id)
  end
end
class GamePlayersController < ApplicationController
    before_action :set_game_player, only: [:show]

    def show
        @json = {
            "game_id": @gamePlayer.game_id,
            "game_players": get_game_players(@gamePlayer.game_id).map{|u| {gamePlayerId: u.id, user: get_user(u.user_id)} },
            "ships": get_ships(@gamePlayer.id).map{|ship| {
                ship_type: ship.ship_type,
                locations: ship.locations.split(",")
            }},
            "salvos": get_salvo(@gamePlayer.id).map{|salvo| {
                turn: salvo.turn,
                locations: salvo.locations.split(",")
            }}
        }
        json_response(@json)
        # render json: @gamePlayer.to_json(:include => { :user => { :except => :password_digest } }, :except => [:user_id, :game_id])
        #render json: @gamePlayer.to_json(:include=> [:user, :game], :except => [:user_id])
    end

    private
    def get_ships(id)
        @ships = Ship.where(game_player_id: id)
    end
    def get_salvo(id)
        @salvos = Salvo.where(game_player_id: id)
    end
    def set_game_player
        @gamePlayer = GamePlayer.find(params[:id])
    end
end

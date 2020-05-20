class GamesController < ApplicationController
    before_action :set_game, only: [:show]

    # GET /games
    def index
        @games = Game.all
        #render json: @games , include: [:game_player] 
        @json = @games.map{|game| {
            "game_id": game.id,
            "game_players": get_game_players(game.id).map{|u| {gamePlayerId: u.id, user: get_user(u.user_id)} }
        }}
        render json: @json
    end

    # POST /games
    def create
        @game = Game.create!
        json_response(@game, :created)
    end

    # GET /games/:id
    def show
        json_response(@game)
    end


    private

    def set_game
        @game = Game.find(params[:id])
    end
end

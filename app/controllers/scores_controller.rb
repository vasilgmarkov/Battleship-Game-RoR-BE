class ScoresController < ApplicationController
    def index
        #@scores = User.joins(:score).group('users.id').order('SUM(scores.points) ').select { |m| m.user_id == 5 }
        #@scores = User.joins(:score).group(:name).order('sum_points DESC').sum(:points)
        @scores = User.joins(:score).group('users.id').select("users.id, users.name, sum(scores.points) as points_summ, count(scores.points) tot_games, count(case scores.points when '1.0' then 1 else null end) as win, count(case scores.points when '0.0' then 1 else null end) as lose, count(case scores.points when '0.5' then 1 else null end) as draw").order('points_summ DESC')
        render json: @scores
    end
end

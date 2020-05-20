Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'leaderboard', action: :index, controller: 'scores'
  get 'game_view/:id', action: :show, controller: 'game_players'
  resources :game_players
  resources :users, :games do
    resources :game_players
  end
end

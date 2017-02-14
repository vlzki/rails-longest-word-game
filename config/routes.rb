Rails.application.routes.draw do

  root 'wordgame#game'
  get 'game' => 'wordgame#game'
  get 'score' => 'wordgame#score'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

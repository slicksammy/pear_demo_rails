Rails.application.routes.draw do
  get 'snake/index'
  get 'game/play', to: 'game#play'
  root 'snake#index'
  resources :credit_cards
end

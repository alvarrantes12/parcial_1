Rails.application.routes.draw do
  #get 'pokemons/index'
  resources :pokemon_trainers
  resources :pokemons
  root "dashboards#index"
end

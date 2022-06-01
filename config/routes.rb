Rails.application.routes.draw do
  resources :captured_pokemons
  #get 'pokemons/index'
  resources :pokemon_trainers
  resources :pokemons
  root "dashboards#index"
end

Rails.application.routes.draw do
  resources :pokemon_trainers
  resources :pokemons
  root "dashboards#index"
end
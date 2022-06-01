Rails.application.routes.draw do
  resources :captured_pokemons
  resources :pokemons
  resources :pokemon_trainers
  root "dashboards#index"
end

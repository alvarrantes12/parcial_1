Rails.application.routes.draw do
  resources :captured_pokemons
  resources :pokemon_trainers
  resources :pokemons
  root "dashboards#index"

  #scope module: :api do
   # resources :captured_pokemons

  #end

end

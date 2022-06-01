Rails.application.routes.draw do
  resources :captured_pokemon_apis
  resources :captured_pokemons
  resources :pokemon_trainers
  resources :pokemons
  
  scope module: :api, path: 'api' do
    resources :captured_pokemons 
  end

  root "dashboards#index"
end

Rails.application.routes.draw do
  resources :pokemons
  resources :captured_pokemons
  resources :pokemon_trainers
  root "dashboards#index"

  scope module: :api, path: "api" do
    resources :captured_pokemons
  end
end

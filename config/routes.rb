Rails.application.routes.draw do
  resources :captured_pokemons
  resources :pokemons
  resources :pokemon_trainers
  scope module: :api, path: "api" do
    resources :captured_pokemons
  end
  root "dashboards#index"
end

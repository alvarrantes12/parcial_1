Rails.application.routes.draw do
  resources :pokemon_trainers
  resources :pokemons
  resources :captured_pokemons

  scope module: :api, path: "api" do
    resources :captured_pokemons
  end

  root "dashboards#index"
end

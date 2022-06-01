Rails.application.routes.draw do
  scope module: :api, path: "api" do
    resources :captured_pokemons
  end

  resources :captured_pokemons
  resources :pokemons
  resources :pokemon_trainers
  root "dashboards#index"
end

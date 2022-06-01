Rails.application.routes.draw do
  resources :pokemon_trainers
  root "dashboards#index"
end

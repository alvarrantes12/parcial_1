Rails.application.routes.draw do
  resources :pokemon_trainrs
  root "dashboards#index"
end

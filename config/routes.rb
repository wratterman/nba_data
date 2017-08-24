Rails.application.routes.draw do
  root "welcome#index"

  resources :teams, only: [:index, :show]
  resources :players, only: [:index, :show]
end

Rails.application.routes.draw do
  root "welcome#index"

  resources :teams, only: [:index, :show]
end

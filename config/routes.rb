Rails.application.routes.draw do
  resources :registrations, only: [:create]

  root to: 'home#index'
end

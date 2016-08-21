Rails.application.routes.draw do
  resources :registrations, only: [:create, :index]

  root to: 'home#index'
end

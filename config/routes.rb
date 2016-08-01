require 'sidekiq/web'

Rails.application.routes.draw do
  resources :buildings, only: [:index]
  resources :persons, only: [:index]

  mount Sidekiq::Web, at: '/sidekiq'
end

Rails.application.routes.draw do
  root to: 'events#index'

resources :events, only: [:index, :show, :edit, :new]
resources :awards, only: [:index, :show, :edit, :new]

end

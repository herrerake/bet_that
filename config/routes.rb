Rails.application.routes.draw do
  root to: 'events#index'

  resources :events do
    resources :awards
  end

end

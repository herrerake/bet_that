Rails.application.routes.draw do
  root to: 'events#index'

  resources :events do
    resources :comments
  end

end

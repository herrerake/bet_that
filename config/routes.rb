Rails.application.routes.draw do
  root to: 'events#index'
  resources :events do
    resources :comments, only: [:new, :create, :destroy]
  end
  resources :users
  resource :session

end

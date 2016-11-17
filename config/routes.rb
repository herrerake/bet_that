Rails.application.routes.draw do
  resources :events do
    resources :comments, only: [:new, :create, :destroy]
  end
  resources :users
  resource :session

end

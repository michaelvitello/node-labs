Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :computers do
    resources :specs, only: [:update, :destroy]
    resources :components, only: [:index]
    resources :orders, only: [:create]
  end

  resources :orders, only: [:show] do
   resources :payments, only: [:new, :create]
  end
end

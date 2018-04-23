Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :computers do
    resources :components, only: [:index]
  end
  resources :configurations, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

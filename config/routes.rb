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

   # error pages
  %w( 404 422 500 503 ).each do |code|
    get code, :to => "errors#show", :code => code
  end

  get '*unmatched_route', to: 'errors#show', code: 404
end

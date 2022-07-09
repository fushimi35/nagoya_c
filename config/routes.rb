Rails.application.routes.draw do

  root :to => 'users#index'
  resources :users
  resources :recipes, except: [:index] do
    resources :comments, only: [:create, :destroy, :index]
  end

  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout
end

Rails.application.routes.draw do
  resources :users, only: %i[show new edit create update destroy]

  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout
end

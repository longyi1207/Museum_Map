Rails.application.routes.draw do
  get 'user_session/new'
  resources :users
  resources :exhibits
  resources :staffs
  resources :hunts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "user_session#new"
  post   '/login',   to: 'user_session#create'
  delete '/logout',  to: 'user_session#destroy'
end

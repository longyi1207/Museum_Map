Rails.application.routes.draw do
  get 'user_session/new'
  resources :users
  resources :exhibits
  resources :staffs
  resources :hunts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'application#home'
  get    '/user/login',   to: 'user_session#new'
  post   '/user/login',   to: 'user_session#create'


  get    '/admin/login',   to: 'staff_session#new'
  post   '/admin/login',   to: 'staff_session#create'
  get    '/admin/signup',   to: 'staffs#new'

  get '/logout', to: 'application#destroy_session'

end

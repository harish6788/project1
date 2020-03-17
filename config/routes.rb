Rails.application.routes.draw do
  # get 'users/edit'
  # get 'users/show'
  # get 'lists/edit'
  root :to => 'pages#home'
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :lists
  resources :alllist
end

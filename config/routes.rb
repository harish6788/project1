Rails.application.routes.draw do
  get 'lists/edit'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :lists
  resources :alllist
end

Rails.application.routes.draw do
    
  root 'pages#home'  
  
  get '/home', to: 'pages#home'
  
  get '/videos', to: 'pages#videos' 

  resources :recipes do
    member do
      post 'like'
    end
  end
  
  resources :chefs, except: [:new, :destroy]
  
  get '/register', to: 'chefs#new'
  
  get '/login', to: 'logins#new'
  post '/login', to: 'logins#create'
  get '/logout', to: 'logins#destroy'
  
  resources :styles
  resources :ingredients
  
end

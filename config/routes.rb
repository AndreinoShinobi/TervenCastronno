Rails.application.routes.draw do

  root 'web_pages#home'

  resources :events
  resources :contacts, only: [:new, :create]

  get '/home',       to: 'web_pages#home'
  get '/our_events', to: 'web_pages#our_events'
  get '/who_we_are', to: 'web_pages#who_we_are'
  get '/contacts',   to: 'contacts#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'



end

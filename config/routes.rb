Rails.application.routes.draw do
  root 'web_pages#home'

  get '/home', to: 'web_pages#home'
  get '/our_events', to: 'web_pages#our_events'
  get '/who_we_are', to: 'web_pages#who_we_are'
  get '/contacts', to: 'web_pages#contacts'

  # scope admin
  resources :events
end

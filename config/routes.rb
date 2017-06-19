Rails.application.routes.draw do
  root 'sessions#home'
  resources :sessions
  resources :users
  resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
end

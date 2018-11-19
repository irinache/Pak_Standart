Rails.application.routes.draw do
  get 'prices/index'

  get 'sessions/new'

  root 'static_pages#home'
  get  '/contact',    to: 'static_pages#contact'
  get  '/news',    to: 'articles#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :articles
  resources :users
  resources :prices
end

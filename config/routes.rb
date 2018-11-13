Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/contact',    to: 'static_pages#contact'
  get  '/news',    to: 'articles#index'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :articles
  resources :users
end

Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get  '/contact',    to: 'static_pages#contact'
  get  '/news',    to: 'articles#index'
  resources :articles
end

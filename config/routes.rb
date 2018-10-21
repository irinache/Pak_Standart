Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'main_page/main_page'

  resources :articles

  root 'main_page#main_page'
end

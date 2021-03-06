Rails.application.routes.draw do
  devise_for :users
  root 'items#search'
  resources :items, only: %i[search create destroy]
  resources :users, only: %i[show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

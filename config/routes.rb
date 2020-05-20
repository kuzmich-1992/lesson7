Rails.application.routes.draw do
  devise_for :users
  resources :questions
  resources :users
  resources :posts
end

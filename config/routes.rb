Rails.application.routes.draw do
  devise_for :users, controllers: {
  	sessions:'users/sessions'
  }
  resources :questions, only: [:index]
  resources :users
  resources :posts
  resources :assessments, only: [:new, :create]
end
 
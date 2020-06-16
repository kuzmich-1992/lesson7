Rails.application.routes.draw do
  
  devise_for :users, controllers: {
  	sessions:'users/sessions',
  	sign_in: 'login',
  	sign_out: 'logout'

  }
  
  resources :questions
  resources :users
  resources :posts
  resources :assessments
  resources :variants
  resources :adposts

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
 
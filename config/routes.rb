Rails.application.routes.draw do
  devise_for :users
  resources :userlogins

  resources :users
  resources :answers
  resources :questions
  resources :levels
  resources :universities
  resources :labels
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



root 'questions#index'

end

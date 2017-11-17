Rails.application.routes.draw do
  get 'welcome/index'
  resources :questions do
    resources :answers
  end
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html    root 'welcome/index'
  root 'questions#index'
  #agrego las rutas de las preguntas y demas clases porque no te las crea por defecto 

  resources :answers
  resources :questions
  resources :levels
  resources :universities
  resources :labels
  resources :comments
  
end

Rails.application.routes.draw do
  resources :helps
  resources :permits
  resources :comment_questions
  resources :comment_answers
  get 'users/show'  
  get 'questions/mifacu'
  get 'welcome/index'
  get "universities/blogico" => "universities#blogico"
  get "tags/blogico" => "tags#blogico"
  get 'questions/mispreguntas'

  
  resources :questions do
    resources :answers
  end
  resources :questions do
    resources :comment_questions
  end

  resources :questions do
    member do
      put :asigna_mejor_respuesta
    end
  end
  resources :answers do
    resources :comment_answers
  end

  resources :answers do
    member do 
      put "like" => "answers#upvote"
      put "unlike" => "answers#downvote"
    end 
  end

  resources :comment_questions do
    member do 
      put "like" => "comment_questions#upvote"
      put "unlike" => "comment_questions#downvote"
    end
  end

  resources :comment_answers do
    member do 
      put "like" => "comment_answers#upvote"
      put "unlike" => "comment_answers#downvote"
    end
  end
  resources :questions do
    member do 
      put "like" => "questions#upvote"
      put "unlike" => "questions#downvote"
    end
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html    root 'welcome/index'
  root 'questions#index'
  #agrego las rutas de las preguntas y demas clases porque no te las crea por defecto 

  resources :answers
  resources :levels
  resources :universities
  resources :tags
  resources :comments
  
end

Rails.application.routes.draw do
  resources :nivels
  resources :facultads
  resources :etiqueta
  resources :respuesta
  resources :comentarios
  resources :pregunta
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

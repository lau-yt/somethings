class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

    acts_as_voter #los usuarios votan respuestas, pero esas respuestas van a usuarios 
    #(ver si se puede agregar acts_as_votable para un user)
    acts_as_votable

  	belongs_to :university, optional: true
	has_many :questions
	has_many :comments
	has_many :answers
	has_many :level
	
	has_many :points

	default_scope -> { order :apellido }

	#validates :terms_of_service, acceptance: true



	
	validates :nombre, :presence => {:message => "Usted debe ingresar un nombre"}, length: {minimum: 2, maximum: 20, :message => "El nombre debe tener entre 2 y 20 caracteres"}

	validates :apellido, :presence => {:message => "Usted debe ingresar un apellido"}, length: {minimum: 2, maximum: 20, :message => "El apellido debe tener entre 2 y 20 caracteres"}
	validates :email, :presence => {:message => "El email no puede estar en blanco!"}, :uniqueness => {:message => "Usted ha ingresado un mail ya usado! Intente con otro"}
	validates :password, presence: {:message => "La contraseña no puede estar en blanco!"}, length: {minimum: 5, maximum: 120, :message => "La contraseña debe tener minimo 5 caracteres!"}, on: :create
	validates :password, length: {minimum: 5, maximum: 120, :message => "La contraseña debe tener minimo 5 caracteres!"}, on: :update, allow_blank: true
end



# 
# bundle exec rake assets:precompile 
# añadir a git : git . add + git commit -m "assets precompilado"
# git push heroku master

# heroku run rake db:migrate lo mismo para seeds 

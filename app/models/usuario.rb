class Usuario < ApplicationRecord
	belongs_to :facultad, optional: true
	has_many :preguntas
	has_many :comentarios
	has_many :respuestas
	default_scope -> { order :apellido }

	#validates :terms_of_service, acceptance: true


	validates :nombre, presence: true
	validates :contr, presence: true
	validates :mail, presence: true
	validates :apellido, presence: true



	validates :mail, uniqueness: { message: 'ingrese otro correo' }
	
	validates :contr,  presence: true, length: { maximum: 20 }
	validates :contr,  presence: true, length: { minimum: 1 }
	

	validates :nombre,  presence: true, length: { maximum: 8 }
	validates :nombre,  presence: true, length: { minimum: 1 }
	 
	validates :apellido,  presence: true, length: { maximum: 8 }
	validates :apellido,  presence: true, length: { minimum: 1 } 
	
end

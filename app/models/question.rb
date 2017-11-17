class Question < ApplicationRecord
	has_many :answers
#has_many :labels #una pregunta puede tener varias etiquetas
	has_many :tags
	has_many :comments #una pregunta puede tener varios comentarios 
	#belongs_to :user #una pregunta unicamente puede pertencer a UN usuario

	#agregado 8/11 campos que guardaran el id de cada etiqueta, pongo sus dependencias 
	#belong_to :etiqueta 
	

	validates :descripcion, :presence => {:message => "Usted debe ingresar una descripcion"}, length: {minimum: 1, maximum: 254, :message => "La descripcion debe tener entre 1 y 254 caracteres!"}
	validates :Titulo, :presence => {:message => "Usted debe ingresar un titulo!"}, length: {minimum: 1, maximum: 60, :message => "El titulo debe tener entre 1 y 60 caracteres!"}

end

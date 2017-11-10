class Question < ApplicationRecord

has_many :labels #una pregunta puede tener varias etiquetas
	has_many :comments #una pregunta puede tener varios comentarios 
	belongs_to :user #una pregunta unicamente puede pertencer a UN usuario

	#agregado 8/11 campos que guardaran el id de cada etiqueta, pongo sus dependencias 
	#belong_to :etiqueta 
	

	validates :descripcion,  presence: true, length: { maximum: 254 } #agregar un msje de error 
	validates :descripcion,  presence: true, length: { minimum: 1 } 

	validates :titulo,  presence: true, length: { maximum: 25 }
	validates :titulo,  presence: true, length: { minimum: 1 } 
end

class Preguntum < ApplicationRecord
	has_many :etiquetas #una pregunta puede tener varias etiquetas
	has_many :comentarios #una pregunta puede tener varios comentarios 
	belongs_to :usuario #una pregunta unicamente puede pertencer a UN usuario

	validates :descripcion, lenght:{ minimum:1, maximum:254}  #agregar un msje de error 
	validates :titulo, lenght:{ minimum:1, maximum:25} 

end

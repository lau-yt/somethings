class Answer < ApplicationRecord
	belongs_to :question
	validates :descripcion, :presence => {:message => "La respuesta no puede estar en blanco!"}, length: {minimum: 2, maximum: 150, :message => "La respuesta debe tener entre 2 y 150 caracteres"}

end

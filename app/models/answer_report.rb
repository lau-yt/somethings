class AnswerReport < ApplicationRecord
	belongs_to :answer 	
	validates :titulo, :presence => {:message => "No puedes dejarlo en blanco!"}, length: {maximum: 550, :message => "Debe tener como maximo 255 caracteres!"}
end

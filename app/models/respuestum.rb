class Respuestum < ApplicationRecord
	belongs_to :pregunta
	has_many :comentarios
	belongs_to :usuario

	validates :desc, lenght:{ minimum:1, maximum:254}  
end

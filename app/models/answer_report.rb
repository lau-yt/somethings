class AnswerReport < ApplicationRecord
	belongs_to :answer 	
	validates :titulo, :presence => {:message => "No puedes dejarlo en blanco!"}
end

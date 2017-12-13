class QuestionReport < ApplicationRecord
	belongs_to :question 	
	validates :titulo, :presence => {:message => "No puedes dejarlo en blanco!"}
end

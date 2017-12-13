class CommentReportQuestion < ApplicationRecord
	belongs_to :comment_question 	
	validates :titulo, :presence => {:message => "No puedes dejarlo en blanco!"}, length: {maximum: 550, :message => "Debe tener como maximo 255 caracteres!"}
end

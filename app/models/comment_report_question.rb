class CommentReportQuestion < ApplicationRecord
	belongs_to :comment_question 	
	validates :titulo, :presence => {:message => "No puedes dejarlo en blanco!"}
end

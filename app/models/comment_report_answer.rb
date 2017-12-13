class CommentReportAnswer < ApplicationRecord
	belongs_to :comment_answer 	
	validates :titulo, :presence => {:message => "No puedes dejarlo en blanco!"}

end

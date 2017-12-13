class CommentQuestion < ApplicationRecord
	belongs_to :user #pertenece a un unico user
	belongs_to :question #este comentario perteneces a una unica pregunta
	has_many :comment_report_questions	
	acts_as_votable
	validates :descripcion, :presence => {:message => "El comentario no puede estar en blanco!"}, length: {minimum: 2, maximum: 550, :message => "El comentario debe tener entre 2 y 550 caracteres"}
end

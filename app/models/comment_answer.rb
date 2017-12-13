class CommentAnswer < ApplicationRecord
	belongs_to :user #pertenece a un unico user
	belongs_to :answer #este comentario perteneces a una unica pregunta	
	acts_as_votable
	has_many :comment_report_answers, :dependent => :delete_all	 # si se elimina el comentario, el reporte desaparece tambien (es eliminado)
	validates :descripcion, :presence => {:message => "El comentario no puede estar en blanco!"}, length: {minimum: 2, maximum: 550, :message => "El comentario debe tener entre 2 y 550 caracteres"}
end

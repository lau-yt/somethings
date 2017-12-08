class Permit < ApplicationRecord
	validates :create_question_answer, presence: {:message => "No puede estar en blanco!"}
	validates :votes_pos, presence: {:message => "No puede estar en blanco!"}
	validates :votes_neg, presence: {:message => "No puede estar en blanco!"}
	validates :comment, presence: {:message => "No puede estar en blanco!"}
	validates :adm_tag, presence: {:message => "No puede estar en blanco!"}
	validates :adm_uni, presence: {:message => "No puede estar en blanco!"}
	validates :modificar_contenido, presence: {:message => "No puede estar en blanco!"}
end

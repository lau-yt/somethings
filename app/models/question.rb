class Question < ApplicationRecord
	has_many :answers
#has_many :labels #una pregunta puede tener varias etiquetas
	#has_many :tags
	#belongs_to :tag
	has_many :comment_questions #una pregunta puede tener varios comentarios 
	belongs_to :user #una pregunta unicamente puede pertencer a UN usuario
	acts_as_votable
	has_and_belongs_to_many :tags
	belongs_to :university, optional: true, counter_cache: true


	
	scope :fecha, -> { order("created_at desc") }
	scope :facu, -> (university_id) {where(:university_id => university_id)}
	scope :mio, -> (user_id) {where(:user_id => user_id)}
	scope :min, -> {order("answers_count ASC" )}
	


	validates :descripcion, :presence => {:message => "Usted debe ingresar una descripcion"}, length: {minimum: 1, maximum: 254, :message => "La descripcion debe tener entre 1 y 254 caracteres!"}
	validates :titulo, :presence => {:message => "Usted debe ingresar un titulo!"}, length: {minimum: 1, maximum: 60, :message => "El titulo debe tener entre 1 y 60 caracteres!"}
	validate :tags_between_one_and_five

		def self.search(query)
			Question.where("titulo LIKE :q OR descripcion LIKE :q", { q: "%#{query}%" })
		end
	#recibe el id de univerisdad del usuario log
	
	
	private

	def tags_between_one_and_five
		if tags.size > 5 || tags.size < 1
			errors.add(:tags, "debe tener al menos una etiqueta y a lo sumo cinco etiquetas")
		end
	end
end

class Answer < ApplicationRecord

belongs_to :question
	has_many :comments
	belongs_to :user


	 validates :descripcion,  presence: true, length: { maximum: 254 }
	validates :descripcion,  presence: true, length: { minimum: 1 } 



end

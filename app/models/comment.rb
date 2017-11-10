class Comment < ApplicationRecord

	belongs_to :user #pertenece a un unico user
	belongs_to :answer
	belongs_to :question    
	

	validates :titulo,  presence: true, length: { maximum: 25 }
	validates :titulo,  presence: true, length: { minimum: 1 } 

 
	validates :descripcion,  presence: true, length: { maximum: 254 }
	validates :descripcion,  presence: true, length: { minimum: 1 } 


end

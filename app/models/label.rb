class Label < ApplicationRecord

		belongs_to :question
		 
		validates :nombre,  presence: true, length: { maximum: 254 }
		validates :nombre,  presence: true, length: { minimum: 1 } 

end

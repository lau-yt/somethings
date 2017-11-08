class Nivel < ApplicationRecord
	has_many :usuarios #un nivel puede pertener a varios users 

	validates :nombre,  presence: true, length: { maximum: 25 }
	validates :nombre,  presence: true, length: { minimum: 1 } 
	
end

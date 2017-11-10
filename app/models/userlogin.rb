class Userlogin < ApplicationRecord
	validates :mail, presence: true
	validates :contr,  presence: true 
end

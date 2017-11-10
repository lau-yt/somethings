class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

belongs_to :university, optional: true
	has_many :questions
	has_many :comments
	has_many :answers
	default_scope -> { order :apellido }

	#validates :terms_of_service, acceptance: true



	

	validates :nombre,  presence: true, length: { maximum: 8 }
	validates :nombre,  presence: true, length: { minimum: 1 }
	 
	validates :apellido,  presence: true, length: { maximum: 8 }
	validates :apellido,  presence: true, length: { minimum: 1 } 
	

end

class University < ApplicationRecord

has_many :users #una facultad puede pertenecer a varios users
has_many :questions
end

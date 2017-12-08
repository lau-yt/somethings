class University < ApplicationRecord

has_many :users #una facultad puede pertenecer a varios users
has_many :questions

scope :noeliminados, -> {where(marca: false) }
scope :max, -> {order("questions_count DESC")}

end

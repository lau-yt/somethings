class University < ApplicationRecord

has_many :users #una facultad puede pertenecer a varios users
has_many :questions

validates :nombre, :presence => {:message => "Usted debe ingresar un nombre!"}, length: {minimum: 1, maximum: 40, :message => "El nombre debe tener entre 1 y 40 caracteres!"}
validates :ubicacion, :presence => {:message => "Usted debe ingresar una ubicacion!"}, length: {minimum: 1, maximum: 40, :message => "La ubicacion debe tener entre 1 y 40 caracteres!"}


scope :noeliminados, -> {where(marca: false) }
scope :max, -> {order("questions_count DESC")}

end

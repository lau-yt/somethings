class Etiquetum < ApplicationRecord
		belongs_to :pregunta
		validates :nombre, lenght:{ minimum:1, maximum:254}  
		validates :nombre, presence:true  
end

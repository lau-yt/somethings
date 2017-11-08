class Comentario < ApplicationRecord
	belongs_to :usuario #pertenece a un unico user
	belongs_to :respuesta
	belongs_to :pregunta    
	validates :titulo,lenght:{minimum:1,maximum:25}  
	validates :titulo,presence:true  
	validates :descripcion,lenght:{minimum:1,maximum:254}  
	validates :descripcion,presence:true  
	       
end

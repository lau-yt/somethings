# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creo las Facultades"
University.create(nombre: 'UNLP Facultad de Ingenieria', ubicacion:'buenos aires' )
University.create(nombre: 'UBA Facultad de Informatica', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de Arturo Jaureche', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de Avellaneda de la Provincia de Buenos Aires', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de Catamarca', ubicacion:'Catamarca' )
University.create(nombre: 'Facultad Nacional de General San Martín', ubicacion:'' )
University.create(nombre: 'Facultad Nacional de Formosa', ubicacion:'formosa' )
University.create(nombre: 'Facultad Nacional de Córdoba', ubicacion:'cordoba' )
University.create(nombre: 'Facultad Nacional de General Sarmiento', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de José Clemente Paz', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de Lomas de Zamora', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de Río Negro', ubicacion:'rio negro' )
University.create(nombre: 'UTN Facultad de Informatica', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional del Sur', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de Mar del Plata', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de Quilmes', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de Tres de Febrero', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Nacional de Tierra del Fuego', ubicacion:'tierra del fuego' )
University.create(nombre: 'Facultad Austral', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Católica Argentina (UCA)', ubicacion:'buenos aires' )
University.create(nombre: 'Facultad Torcuato Di Tella', ubicacion:'buenos aires' )


puts "Creo las Etiquetas"
Tag.create(nombre: 'matematicas')
Tag.create(nombre: 'literatura')
Tag.create(nombre: 'historia')
Tag.create(nombre: 'musica')
Tag.create(nombre: 'ingles')
Tag.create(nombre: 'fisica')
Tag.create(nombre: 'metodologia')
Tag.create(nombre: 'biologia')
Tag.create(nombre: 'microbiologia')
Tag.create(nombre: 'quimica')
Tag.create(nombre: 'fisiologia')
Tag.create(nombre: 'psicologia')




puts "Creando puntos para usuarios"
Point.create(puntos: '14', user_id: '2')
Point.create(puntos: '19', user_id: '3')
Point.create(puntos: '99', user_id: '4')
Point.create(puntos: '299', user_id: '5')
Point.create(puntos: '999', user_id: '6')




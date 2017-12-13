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


puts "Creo permisos"
Permit.create(votes_pos: '15', comment: '20',  create_question_answer: '1', votes_neg: '100', adm_tag: '300', adm_uni: '500', modificar_contenido: '1000' )


puts "Creo las ayudas"
Help.create(titulo: 'Votos', descripcion: 'Los votos pueden ser positivos o negativos. Comenzaras con votos positivos y mientras mejor reputacion tengas por tu participacion en la pagina conseguiras poder votar negativamente!')
Help.create(titulo: 'Comentarios', descripcion: 'Cuando llegues a cierta cantidad de puntos en tu cuenta, podras comentar tanto preguntas como respuestas')
Help.create(titulo: 'Administrar etiquetas', descripcion: 'Podras crear etiquetas, eliminar y modificarlas. Esta opcion se encontrara en Ver perfil cuando cumplas los puntos necesarios!')
Help.create(titulo: 'Administrar facultades', descripcion: 'Podras agregar, eliminar y modificar facultades al sitio de Educanlink! Esta opcion se encontrara en Ver perfil cuando cumplas los puntos necesarios!')
Help.create(titulo: 'Modificar contenidos', descripcion: 'La opcion de editar y eliminar contenidos ya sean comentarios, preguntas y respuestas estara disponible al cumplir los puntos necesarios!')
Help.create(titulo: 'Administrar denuncias', descripcion: 'Podras leer las denuncias de usuarios de menor puntaje y aplicar una medida correspondiente en caso de ser necesario!')
Help.create(titulo: 'Eliminar cuenta del sitio', descripcion: 'Podras eliminar la cuenta de un usuario de menor puntaje en caso de que sea necesario')


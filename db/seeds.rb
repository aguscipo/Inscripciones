cloud=Tema.create :nombre => 'CLOUD'
soa=Tema.create :nombre => 'SOA'
bpm=Tema.create :nombre => 'BPM'
ws=Tema.create :nombre => 'WS'

conferencia=TipoPresentacion.create :nombre => 'Conferencia'
poster=TipoPresentacion.create :nombre => 'Poster'


usuario1= Usuario.create :nombre => 'Agustin', :apellido => 'Cipollone', :usuario => 'agus', :password => 'agus'
usuario2= Usuario.create :nombre => 'Juan', :apellido => 'Perez', :usuario => 'juan', :password => 'juan'

t1=Trabajo.create :titulo => 'Introduccion a Cloud Computing', :estado=>"ingresado",:nro_trabajo => 1000, :autor => usuario1.nombre + ' ' + usuario1.apellido, :resumen => 'Computación en la nube, conocida también como servicios en la nube, informática en la ... Cloud computing es un nuevo modelo de prestación de servicios de negocio...', :tema => cloud.nombre, :correo => 'agustincipollone@gmail.com', :correo_gmail =>'agustincipollone@gmail.com', :tipo_presentacion => conferencia.nombre
t2=Trabajo.create :titulo => 'Introduccion a SOA', :estado=>"ingresado",:nro_trabajo => 1001, :autor => usuario2.nombre + ' ' + usuario2.apellido, :resumen => 'La Arquitectura Orientada a Servicios (SOA, siglas del inglés Service Oriented Architecture) es un paradigma de arquitectura para diseñar y desarrollar sistemas distribuidos...', :tema => soa.nombre, :correo => 'godygodoy@gmail.com', :correo_gmail =>'godygodoy@gmail.com', :tipo_presentacion => conferencia.nombre
t3=Trabajo.create :titulo => 'Introduccion a SOA', :estado=>"ingresado",:nro_trabajo => 1002, :autor => usuario2.nombre + ' ' + usuario2.apellido, :resumen => 'La Arquitectura Orientada a Servicios (SOA, siglas del inglés Service Oriented Architecture) es un paradigma de arquitectura para diseñar y desarrollar sistemas distribuidos...', :tema => cloud.nombre, :correo => 'agus_cipo_lp@hotmail.com', :correo_gmail =>'agus@gmail.com', :tipo_presentacion => conferencia.nombre

revisor1= Revisor.create :nombre => 'Agustin', :apellido => 'Cipollone', :usuario => 'agus', :password => 'agus', :tema_id=>cloud.id
revisor2= Revisor.create :nombre => 'Agustin', :apellido => 'Aguirre', :usuario => 'agustin', :password => 'agustin', :tema_id=>ws.id
revisor3= Revisor.create :nombre => 'Andres', :apellido => 'Perez', :usuario => 'andres', :password => 'andres', :tema_id=>bpm.id
revisor4= Revisor.create :nombre => 'Federico', :apellido => 'Archuby', :usuario => 'archu', :password => 'archu', :tema_id=>soa.id

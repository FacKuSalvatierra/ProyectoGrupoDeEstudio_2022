create database valoracionfinal;

use valoracionfinal;

create table dueno (dni INT not null auto_increment,
nombre varchar(50), apellido varchar(50), telefono varchar(50), direccion varchar(50), primary key(dni));

create table perro (id_perro int not null auto_increment,
nombre varchar(50), fecha_nac date, sexo varchar(50),dni_dueno int not null,
 primary key(id_perro), foreign key(dni_dueno) references dueno(dni) );
 
create table historial (id_historial int not null auto_increment, fecha date, Perro int not null,
 descripcion varchar(500), monto int , primary key(id_historial),foreign key(Perro) references perro(id_perro) );

insert into dueno (dni, nombre, apellido, telefono,direccion) values ('23546987','Maria','Perez','4789689','Pueyrredon 811');

INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES ('14', 'Fido', '2012/12/12', 'Macho', '23546987');

insert into dueno (dni, nombre, apellido, telefono,direccion) values ('28957346','Juan','Perez','4789689','Belgrano 101');

INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES ('10', 'Puppy', '2012/12/12', 'Macho', '28957346');

/* Seleccione la actividad numero 8*/

insert into historial (id_historial, fecha, Perro, descripcion,monto) values ('1','2015/04/08','10', 'Servicio/Consulta', '4800');

create database trabajofinal;

use trabajofinal;

create table dueno (dni INT not null auto_increment, nombre varchar(50), apellido varchar(50), telefono varchar(50), direccion varchar(50), primary key(dni));

create table perro (id_perro int not null auto_increment, nombre varchar(50), fecha_nac date, sexo varchar(50), dni_dueno int not null, primary key(id_perro), foreign key(dni_dueno) references dueno(dni));

create table historial (id_historial int not null auto_increment, fecha date, Perro int not null, descripcion varchar(500), monto int, primary key(id_historial), foreign key(Perro) references perro(id_perro));

Insert into dueno (dni, nombre, apellido, telefono, direccion) values ('5453453', 'Maria', 'Funes', '35439545', 'Rivadavia 42');

Insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) values ('3', 'Puppy', '2020/03/25', 'Macho', '5453453');

/*Actividad_4*/
Update perro set fecha_nac= '2020/04/25' where id_perro = 3;

Select * from perro;

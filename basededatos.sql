create database peluqueriaCanina;

use peluqueriaCanina;

create table dueno (dni INT not null auto_increment,
nombre varchar(45), apellido varchar(45), telefono varchar(45), direccion varchar(45), primary key(dni));

create table perro (id_perro int not null auto_increment,
nombre varchar(45), fecha_nac date, sexo varchar(45),dni_dueno int not null,
 primary key(id_perro), foreign key(dni_dueno) references dueno(dni) );
 
create table historial (id_historial int not null auto_increment, fecha date, Perro int not null,
 descripcion varchar(300), monto int , primary key(id_historial),foreign key(Perro) references perro(id_perro) );

/*Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.*/
insert into dueno (dni, nombre, apellido, telefono,direccion) values ('31499503','Alex','Salvatierra','03886498397','Jujuy 145');

insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) VALUES ('1', 'Toby', '2020/08/08', 'Macho', '31499503');


/* 9-Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123*/

UPDATE dueno SET direccion='Libertad 123' WHERE dni= 31499503;



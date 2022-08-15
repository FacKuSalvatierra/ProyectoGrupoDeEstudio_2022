Create table Perro(
ID_Perro int not null auto_increment,
Nombre varchar(20),
Fecha_nac date,
Sexo varchar(10),
DNI_Dueno int not null,
primary key (ID_Perro),
foreign key (DNI_Dueno) references Dueno(DNI)
);

insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
values (22333444, 'Cristobal', 'Araoz', '02975443322', 'Manuel Dorrego 269'); 

insert into Perro (Nombre, Fecha_nac, Sexo, DNI_Dueno)
values ('Mauricio', '2005-03-24', "Macho", 22333444);

/* Con la función truncate se vacía el historial y se resetea de manera automática el ID*/
truncate historial;
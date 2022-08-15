use peluqueria_mysql;



CREATE TABLE Dueno
(
	DNI int not null unique,
    Nombre varchar (30),
    Apellido varchar (30),
    Telefono varchar (30),
    Direccion varchar (50),
    primary key (DNI)
);

INSERT INTO Dueno (DNI, Nombre, Apellido,Telefono, Direccion) VALUES
(40286834, 'Enzo','Sosa','3517883139','Aguirre Cámara 529'),
(40438682,'Facundo','Gimenez','3844548774','Aguirre Cámara 498'),
(40834286,'Milagros','Zalazar','1165931242','La Tablada 3030');

 CREATE TABLE Perro
 (
	ID_Perro int not null unique,
    DNI_Dueno int,
    Nombre_P varchar (20),
    Fecha_nac date,
    Sexo varchar (10),
    primary key (ID_Perro),
    foreign key (DNI_Dueno) references Dueno(DNI)
    );
    
    
    INSERT INTO Perro (ID_Perro, DNI_Dueno,Nombre_P,Fecha_nac,Sexo) VALUES
    (1,40286834,'Milton','2018-03-26','macho'),
    (2,40438682,'Kiara','2019-05-10','hembra'),
    (3,40834286,'Luli','2020-10-17','hembra');
    
    
CREATE TABLE Historial
(
	ID_Historial int not null unique,
    Fecha date,
    Perro_ID int,
    Descripcion varchar (100),
    Monto int,
    primary key (ID_Historial),
    foreign key (Perro_ID) references Perro(ID_Perro)
    );
    
    
    INSERT INTO Historial (ID_Historial, Fecha, Perro_ID, Descripcion,Monto ) VALUES
    (3,'2015-05-26',2,'corte de uñas','1500.00'),
	(2,'2018-05-26',1,'control general','3500.00'),
	(1,'2020-05-26',3,'vacuna antirabica','2300.00');
    
   
    
    SELECT * FROM dueno d
    inner join perro p on d.DNI= P.DNI_Dueno
    inner join historial h on p.ID_Perro= h.Perro_ID
     /*Ejercicio 3 de Base De Datos*/
    SELECT * FROM Historial WHERE Fecha<'2018-03-27';
    
    DELETE FROM Historial where ID_Historial=3
    DELETE FROM Perro where ID_Perro=2
    
    
    
    
    

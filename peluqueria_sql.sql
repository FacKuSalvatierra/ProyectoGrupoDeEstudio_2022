use peluqueria;

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
('40286834', 'Enzo','Sosa','3517883139','Aguirre Cámara 529');
INSERT INTO Dueno VALUES ('40438682','Facundo','Gimenez','3844548774','Aguirre Cámara 498');

 CREATE TABLE Perro
 (
	ID_Perro int not null unique,
    Nombre_P varchar (20),
    Fecha_nac date not null,
    Sexo varchar (10),
    DNI_dueno int not null
    );
    
INSERT INTO Perro (ID_Perro,Nombre_P,Fecha_nac,Sexo,DNI_dueno) VALUES
 ('247','Milton','2019-03-26','macho','40286834');
    
select * from Dueno, Perro;
    
    
    
    
    
    
    
    
    
    
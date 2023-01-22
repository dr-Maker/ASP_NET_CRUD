--create database crud_mvc
use crud_mvc

GO
CREATE TABLE Estado_Usuario(
IdEstado NUMERIC IDENTITY(1,1) PRIMARY KEY NOT NULL,
Estado VARCHAR(255) NOT NULL
)

GO
CREATE TABLE Rol_Usuario(
IdRol NUMERIC IDENTITY(1,1) PRIMARY KEY NOT NULL,
Rol VARCHAR(255) NOT NULL
)


GO
CREATE TABLE Usuario(
IdUsuario NUMERIC IDENTITY(10000,1) PRIMARY KEY NOT NULL,
Usuario VARCHAR(100) NOT NULL,
Clave VARCHAR(255) NOT NULL, 
IdStatus NUMERIC NOT NULL,
IdRol NUMERIC NOT NULL,
FOREIGN KEY (IdStatus) REFERENCES Estado_Usuario(IdEstado),
FOREIGN KEY (IdRol) REFERENCES Rol_Usuario(IdRol)
)


INSERT Estado_Usuario(Estado) VALUES ('Activo');
INSERT Estado_Usuario(Estado) VALUES ('Inactivo');


INSERT Rol_Usuario(Rol) VALUES ('Administrador');


INSERT Usuario(Usuario,Clave,IdStatus,IdRol) VALUES('Admin','12345',1,1)


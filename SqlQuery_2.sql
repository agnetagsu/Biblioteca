CREATE DATABASE biblioteca;

CREATE TABLE Tema(
ClaveTema SMALLINT NOT NULL PRIMARY KEY,
Nombre varchar(40) NOT NULL,
PRIMARY KEY (ClaveTema)
);
CREATE TABLE Autor(
ClaveAutor INT NOT NULL PRIMARY KEY,
Nombre varchar(60) NOT NULL,
);
CREATE TABLE Editorial(
ClaveEditorial SMALLINT NOT NULL PRIMARY KEY,
Nombre varchar(60) NOT NULL,
Direccion varchar(60) NOT NULL,
Telefono VARCHAR(15) NOT NULL,
);
CREATE TABLE Libro(
ClaveLibro int NOT NULL PRIMARY KEY,
Título varchar(60) NOT NULL,
Idioma VARCHAR(15) NOT NULL,
Formato varchar(15) NOT NULL,
ClaveEditorial SMALLINT FOREIGN KEY REFERENCES Editorial(ClaveEditorial)
);
CREATE TABLE Ejemplar(
ClaveEjemplar int NOT NULL PRIMARY KEY,
ClaveLibro int FOREIGN KEY REFERENCES Libro(ClaveLibro),
NumeroOrden SMALLINT NOT NULL,
Edicion SMALLINT NOT NULL,
Ubicacion VARCHAR(15),
CategoriaLibro CHAR
);
CREATE TABLE Socio(
ClaveSocio INT NOT NULL PRIMARY KEY,
Nombre varchar(60) NOT NULL,
Direccion varchar(60) NOT NULL,
Telefono VARCHAR(15) NOT NULL,
CategoriaSocio CHAR
);
CREATE TABLE Prestamo(
ClaveSocio int FOREIGN KEY REFERENCES Socio(ClaveSocio),
ClaveEjemplar int FOREIGN KEY REFERENCES Ejemplar(ClaveEjemplar),
NumeroOrden SMALLINT NOT NULL,
Fecha_prestamo DATE NOT NULL,
Fecha_prestamo DATE NOT NULL,
Notas BLOB
);
CREATE TABLE Trata_sobre(
ClaveLibro int FOREIGN KEY REFERENCES Libro(ClaveLibro),
ClaveTema smallint FOREIGN KEY REFERENCES Tema(ClaveTema)
);
CREATE TABLE Escrito_por(
ClaveLibro int FOREIGN KEY REFERENCES Libro(ClaveLibro),
ClaveAutor int FOREIGN KEY REFERENCES Autor(ClaveAutor)
);



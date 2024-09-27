CREATE TABLE Libro (
    ID_Libro INT PRIMARY KEY,
    Titulo VARCHAR(255),     Autor VARCHAR(255),
    Año_Publicacion INT,
    ISBN VARCHAR(20) );
CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(20) );
CREATE TABLE Prestamo (
    ID_Prestamo INT PRIMARY KEY,
    ID_Libro INT,
    ID_Cliente INT,
    Fecha_Prestamo DATE,
    Fecha_Devolucion DATE,
    FOREIGN KEY (ID_Libro) REFERENCES Libro(ID_Libro),
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente) );

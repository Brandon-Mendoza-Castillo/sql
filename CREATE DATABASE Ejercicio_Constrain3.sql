CREATE DATABASE Ejercicio_Constraints_3;

USE Ejercicio_Constraints_3;

CREATE TABLE Productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    codigo_barras VARCHAR(50) NOT NULL UNIQUE,
    precio DECIMAL(10, 2) CHECK (precio > 0),
    stock INT NOT NULL DEFAULT 100
);
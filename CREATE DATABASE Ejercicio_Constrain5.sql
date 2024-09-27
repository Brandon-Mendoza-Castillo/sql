CREATE DATABASE Ejercicio_Constraints_5;

USE Ejercicio_Constraints_5;

CREATE TABLE Empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    salario DECIMAL(10, 2) CHECK (salario >= 3000 AND salario <= 50000)
);

CREATE TABLE Productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    codigo_barras VARCHAR(50) NOT NULL UNIQUE,
    precio DECIMAL(10, 2) CHECK (precio > 0)
);

CREATE TABLE Ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    producto_id INT,
    fecha DATE CHECK (fecha <= CURDATE()),
    cantidad INT CHECK (cantidad > 0),
    FOREIGN KEY (empleado_id) REFERENCES Empleados(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);
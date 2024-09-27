CREATE DATABASE Ejercicio_Constraints_4;

USE Ejercicio_Constraints_4;

CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cantidad_productos INT CHECK (cantidad_productos >= 1),
    total DECIMAL(10, 2) CHECK (total >= cantidad_productos * 10)
);
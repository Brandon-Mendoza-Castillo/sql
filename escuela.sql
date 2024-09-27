CREATE TABLE Alumno(
id_alumno INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR (30) NOT NULL ,
apeido1 VARCHAR(30) NOT NULL,
apeido2 VARCHAR(30) NOT NULL,
fecha_nacimiento DATE 
);

CREATE TABLE curso(
id_curso INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(30) NOT NULL,
creditos INT CHECK(creditos>0)
);


CREATE TABLE inscripcion(
id_alumno INT,
id_curso INT,
PRIMARY KEY(id_alumno,id_curso),
FOREIGN KEY (id_alumno) REFERENCES
alumno(id_alumno) ON UPDATE
CASCADE ON DELETE RESTRICT,
FOREIGN KEY (id_curso) REFERENCES
curso(id_curso) ON UPDATE
CASCADE ON DELETE RESTRICT
);
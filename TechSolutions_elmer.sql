DROP DATABASE TechSolutions;
CREATE DATABASE TechSolutions;

USE TechSolutions;

CREATE TABLE tbDepartamentos(
id_departamento INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre_departamento VARCHAR(50) NOT NULL,
descripcion VARCHAR(250) NOT NULL 
);

CREATE TABLE tbEmpleados(
id_empleado INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre_empelado VARCHAR (50) NOT NULL,
apellido_empelado VARCHAR (50) NOT NULL,
cargo_empleado VARCHAR (50) NOT NULL,
salario DOUBLE NOT NULL,
fecha_inicio DATE NOT NULL,
id_departamento INT,
CONSTRAINT fk_empleados_departamento
FOREIGN KEY (id_departamento)
REFERENCES tbDepartamentos(id_departamento)
);

CREATE TABLE tbProyectos(
id_proyecto INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre_proyecto VARCHAR(50) NOT NULL,
descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE tbAsignacion_proyectos(
id_Asiganacion_proyecto INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
id_empleado INT NOT NULL,
CONSTRAINT fk_asignacion_empelados
FOREIGN KEY (id_empleado)
REFERENCES tbEmpleados(id_empleado),
id_proyecto INT NOT NULL,
CONSTRAINT fk_asignacion_proyecto
FOREIGN KEY (id_proyecto)
REFERENCES tbProyectos(id_proyecto)
);
SELECT * FROM tbProyectos;
SELECT * FROM tbEmpleados;
SELECT * FROM tbDepartamentos;
SELECT * FROM tbAsignacion_proyectos;
CREATE DATABASE prueba3;

USE prueba3;

CREATE TABLE empresas (
  id_empresas INT AUTO_INCREMENT NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  direccion VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_empresas)
);
CREATE TABLE persona_contacto (
  id_persona_contacto INT AUTO_INCREMENT NOT NULL,
  email VARCHAR(40) NOT NULL,
  telefono VARCHAR(9) NOT NULL,
  fk_id_empresas INT NOT NULL,
  PRIMARY KEY (id_persona_contacto),
  FOREIGN KEY (fk_id_empresas) REFERENCES empresas(id_empresas)
);


CREATE TABLE alumno (
  id_alumno INT AUTO_INCREMENT NOT NULL,
  nombre VARCHAR(40) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  dni CHAR (9) UNIQUE NOT NULL,
  empresa_asignada INT NOT NULL,
  tipo_practicas VARCHAR(40) NOT NULL,
  PRIMARY KEY (id_alumno),
  FOREIGN KEY (empresa_asignada) REFERENCES empresas(id_empresas)
);

CREATE TABLE practicas (
  id_practicas INT AUTO_INCREMENT NOT NULL,
  mañana BOOLEAN NOT NULL,
  tarde BOOLEAN NOT NULL,
  completo BOOLEAN NOT NULL,
  fk_id_empresas INT NOT NULL,
  fk_id_alumno INT NOT NULL,
  PRIMARY KEY (id_practicas),
  FOREIGN KEY (fk_id_empresas) REFERENCES empresas(id_empresas),
  FOREIGN KEY (fk_id_alumno) REFERENCES alumno(id_alumno)
);
INSERT INTO empresas (id_empresas, nombre, direccion) VALUES
  (1, 'Infotaller', 'calle paraiso 9'),
  (2, 'Programa2', 'calle felix 5');
  
INSERT INTO persona_contacto (id_persona_contacto, email, telefono, fk_id_empresas) VALUES
  (1, 'alfonsoperez@gmail.com', '283949328', 1),
  (2, 'germanlinares@gmail.com', '873829374', 2);
  
INSERT INTO Alumno (id_alumno, nombre, apellido, dni, empresa_asignada, tipo_practicas) VALUES
  (1, 'Maria', 'Carmona', '27384628S', 2, 'mañana'),
  (2,'Luis', 'Gutierrez', '94862823F', 2, 'tarde'),
  (3,'Francisco', 'Lopez', '73926492C', 1, 'completo');
  
INSERT INTO practicas (id_practicas, mañana, tarde, completo, fk_id_empresas, fk_id_alumno) VALUES
  (1,1,0,0,2,1),
  (2,0,1,0,2,2),
  (3,0,0,1,1,3);
  
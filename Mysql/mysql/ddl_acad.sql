-- Crear DB y usarla
CREATE DATABASE IF NOT EXISTS acad_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE acad_db;

-- Tabla ESTUDIANTE
CREATE TABLE IF NOT EXISTS estudiante (
  estudiante_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE,
  fecha_nac DATE
) ENGINE=InnoDB;

-- Tabla PROFESOR
CREATE TABLE IF NOT EXISTS profesor (
  profesor_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  departamento VARCHAR(100)
) ENGINE=InnoDB;

-- Tabla CURSO
CREATE TABLE IF NOT EXISTS curso (
  curso_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  creditos INT NOT NULL DEFAULT 3
) ENGINE=InnoDB;

-- Tabla MATERIA
CREATE TABLE IF NOT EXISTS materia (
  materia_id INT AUTO_INCREMENT PRIMARY KEY,
  curso_id INT NOT NULL,
  nombre_materia VARCHAR(150) NOT NULL,
  semestre INT,
  CONSTRAINT fk_materia_curso FOREIGN KEY (curso_id) REFERENCES curso(curso_id) ON DELETE RESTRICT
) ENGINE=InnoDB;

-- Tabla INSCRIPCION (tabla intermedia para N:M estudiante-materia)
CREATE TABLE IF NOT EXISTS inscripcion (
  inscripcion_id INT AUTO_INCREMENT PRIMARY KEY,
  estudiante_id INT NOT NULL,
  materia_id INT NOT NULL,
  fecha_inscripcion DATE NOT NULL DEFAULT CURRENT_DATE,
  CONSTRAINT fk_inscripcion_estudiante FOREIGN KEY (estudiante_id) REFERENCES estudiante(estudiante_id) ON DELETE CASCADE,
  CONSTRAINT fk_inscripcion_materia FOREIGN KEY (materia_id) REFERENCES materia(materia_id) ON DELETE CASCADE,
  UNIQUE KEY uq_est_mat (estudiante_id, materia_id)
) ENGINE=InnoDB;

-- Tabla NOTA
CREATE TABLE IF NOT EXISTS nota (
  nota_id INT AUTO_INCREMENT PRIMARY KEY,
  inscripcion_id INT NOT NULL,
  nota DECIMAL(5,2) NOT NULL CHECK (nota >= 0 AND nota <= 5), -- MySQL 8 permite CHECK
  fecha_evaluacion DATE,
  CONSTRAINT fk_nota_inscripcion FOREIGN KEY (inscripcion_id) REFERENCES inscripcion(inscripcion_id) ON DELETE CASCADE
) ENGINE=InnoDB;

USE acad_db;

INSERT INTO profesor (nombre, departamento) VALUES
('Dr. Luis Martinez', 'Matemáticas'),
('Mg. Carolina Diaz', 'Programación');

INSERT INTO curso (nombre, creditos) VALUES
('Ingeniería de Software', 4),
('Matemáticas Discretas', 3);

INSERT INTO materia (curso_id, nombre_materia, semestre) VALUES
(1, 'Programación I', 1),
(1, 'Ingeniería de Requerimientos', 2),
(2, 'Teoría de Grafos', 2);

INSERT INTO estudiante (nombre, email, fecha_nac) VALUES
('Sofia Ramirez', 'sofia.r@example.com', '2002-05-12'),
('Juan Lopez', 'juan.l@example.com', '2001-11-20');

-- Inscripciones
INSERT INTO inscripcion (estudiante_id, materia_id) VALUES
(1, 1),
(2, 1),
(1, 3);

-- Notas
INSERT INTO nota (inscripcion_id, nota, fecha_evaluacion) VALUES
(1, 4.50, '2025-10-01'),
(2, 3.75, '2025-10-01');

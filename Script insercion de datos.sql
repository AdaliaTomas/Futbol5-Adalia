-- DATOS DE LA TABLA CLIENTE 

INSERT INTO Cliente (Nombre, Nacimiento, Edad, Email, Telefono) VALUES
('Juan Perez', '1985-04-23', 39, 'juan.perez@example.com', '555-1234'),
('Maria Lopez', '1990-08-15', 34, 'maria.lopez@example.com', '555-5678'),
('Carlos Gomez', '1978-11-02', 45, 'carlos.gomez@example.com', '555-8765'),
('Laura Sanchez', '1992-06-30', 32, 'laura.sanchez@example.com', '555-4321'),
('Ana Martinez', '1988-03-14', 36, 'ana.martinez@example.com', '555-6789'),
('Luis Hernandez', '1982-12-09', 41, 'luis.hernandez@example.com', '555-3456'),
('Sofia Diaz', '1995-01-21', 29, 'sofia.diaz@example.com', '555-2345'),
('Pedro Torres', '1983-09-27', 40, 'pedro.torres@example.com', '555-8769'),
('Marta Ruiz', '1987-05-19', 37, 'marta.ruiz@example.com', '555-7890'),
('Jose Garcia', '1981-07-03', 43, 'jose.garcia@example.com', '555-4567'),
('Carla Fernandez', '1993-10-08', 30, 'carla.fernandez@example.com', '555-9876'),
('Miguel Rodriguez', '1986-02-25', 38, 'miguel.rodriguez@example.com', '555-5432'),
('Elena Moreno', '1991-12-13', 29, 'elena.moreno@example.com', '555-6543'),
('Jorge Morales', '1979-04-05', 45, 'jorge.morales@example.com', '555-3210'),
('Laura Cruz', '1984-11-22', 39, 'laura.cruz@example.com', '555-2109'),
('Roberto Vega', '1980-08-11', 43, 'roberto.vega@example.com', '555-1098'),
('Natalia Romero', '1994-01-30', 30, 'natalia.romero@example.com', '555-0987'),
('Daniel Ortiz', '1989-06-18', 34, 'daniel.ortiz@example.com', '555-8907'),
('Gabriela Vazquez', '1985-09-23', 38, 'gabriela.vazquez@example.com', '555-6780'),
('Alberto Herrera', '1987-10-15', 36, 'alberto.herrera@example.com', '555-8763'),
('Pedro Martinez', '1985-11-22', 38, 'pedro.martinez@example.com', '555-1235'),
('Julia Fernandez', '1994-03-29', 30, 'julia.fernandez@example.com', '555-1236'),
('Victor Salazar', '1980-09-09', 43, 'victor.salazar@example.com', '555-1237'),
('Veronica Ramirez', '1992-01-11', 32, 'veronica.ramirez@example.com', '555-1238'),
('Ricardo Vega', '1986-06-15', 37, 'ricardo.vega@example.com', '555-1239'),
('Gabriela Ortega', '1989-12-20', 34, 'gabriela.ortega@example.com', '555-1240'),
('Fernando Castillo', '1991-05-17', 33, 'fernando.castillo@example.com', '555-1241'),
('Isabel Sanchez', '1984-08-25', 39, 'isabel.sanchez@example.com', '555-1242'),
('Eduardo Ruiz', '1996-02-14', 28, 'eduardo.ruiz@example.com', '555-1243'),
('Carmen Torres', '1983-10-30', 40, 'carmen.torres@example.com', '555-1244'),
('Ricardo Morales', '1979-07-09', 45, 'ricardo.morales@example.com', '555-1245'),
('Alicia Moreno', '1987-03-18', 37, 'alicia.moreno@example.com', '555-1246'),
('Manuel Jimenez', '1992-09-29', 31, 'manuel.jimenez@example.com', '555-1247'),
('Susana Castro', '1988-01-25', 36, 'susana.castro@example.com', '555-1248'),
('Laura Rodriguez', '1994-07-12', 29, 'laura.rodriguez@example.com', '555-1249');

-- DATOS DE LA TABLA FRANQUICIA

INSERT INTO Franquicia (Nombre, Direccion, Email, Telefonos) VALUES
('Gymbro Central', 'Calle Principal 123', 'central@gymbro.com', '555-1000'),
('Gymbro Norte', 'Avenida Norte 456', 'norte@gymbro.com', '555-2000'),
('Gymbro Sur', 'Calle Sur 789', 'sur@gymbro.com', '555-3000'),
('Gymbro Este', 'Avenida Este 101', 'este@gymbro.com', '555-4000'),
('Gymbro Oeste', 'Calle Oeste 112', 'oeste@gymbro.com', '555-5000'),
('Gymbro Downtown', 'Centro 133', 'downtown@gymbro.com', '555-6000'),
('Gymbro Uptown', 'Altos 145', 'uptown@gymbro.com', '555-7000'),
('Gymbro City', 'Ciudad 156', 'city@gymbro.com', '555-8000'),
('Gymbro Village', 'Pueblo 167', 'village@gymbro.com', '555-9000'),
('Gymbro Plaza', 'Plaza 178', 'plaza@gymbro.com', '555-1100');

-- DATOS DE LA TABLA EMPLEADOS

INSERT INTO Empleados (ID_Franquicia, Nombre, Telefono, Email, Descripcion) VALUES
(1, 'Carlos Perez', '555-1111', 'carlos.perez@gymbro.com', 'Instructor de Yoga'),
(2, 'Ana Lopez', '555-2222', 'ana.lopez@gymbro.com', 'Entrenadora de Pilates'),
(3, 'Luis Gomez', '555-3333', 'luis.gomez@gymbro.com', 'Entrenador Personal'),
(4, 'Sofia Martinez', '555-4444', 'sofia.martinez@gymbro.com', 'Instructor de Musculación'),
(5, 'Pedro Sanchez', '555-5555', 'pedro.sanchez@gymbro.com', 'Entrenador Funcional'),
(6, 'Laura Hernandez', '555-6666', 'laura.hernandez@gymbro.com', 'Instructora de Aeróbic'),
(7, 'Jorge Torres', '555-7777', 'jorge.torres@gymbro.com', 'Entrenador de Crossfit'),
(8, 'Marta Ruiz', '555-8888', 'marta.ruiz@gymbro.com', 'Instructora de Zumba'),
(9, 'Jose Fernandez', '555-9999', 'jose.fernandez@gymbro.com', 'Entrenador de Boxeo'),
(10, 'Carla Garcia', '555-1010', 'carla.garcia@gymbro.com', 'Entrenadora de Natación'),
(1, 'Miguel Rodriguez', '555-2020', 'miguel.rodriguez@gymbro.com', 'Instructor de Yoga'),
(2, 'Elena Morales', '555-3030', 'elena.morales@gymbro.com', 'Entrenadora de Pilates'),
(3, 'Daniel Vega', '555-4040', 'daniel.vega@gymbro.com', 'Entrenador Personal'),
(4, 'Gabriela Cruz', '555-5050', 'gabriela.cruz@gymbro.com', 'Instructora de Musculación'),
(5, 'Roberto Romero', '555-6060', 'roberto.romero@gymbro.com', 'Entrenador Funcional'),
(6, 'Natalia Ortiz', '555-7070', 'natalia.ortiz@gymbro.com', 'Instructora de Aeróbic'),
(7, 'Alberto Herrera', '555-8080', 'alberto.herrera@gymbro.com', 'Entrenador de Crossfit'),
(8, 'Sandra Diaz', '555-9090', 'sandra.diaz@gymbro.com', 'Instructora de Zumba'),
(9, 'Ricardo Morales', '555-0111', 'ricardo.morales@gymbro.com', 'Entrenador de Boxeo');

-- TABLA DE MEMBRESIA

INSERT INTO Membresia (Tipo, Descripcion, Precio) VALUES
('Básica', 'Acceso limitado a las instalaciones del gimnasio, sin clases grupales.', 29.99),
('Estándar', 'Acceso completo a las instalaciones del gimnasio y a todas las clases grupales.', 49.99),
('Premium', 'Acceso completo a las instalaciones del gimnasio, todas las clases grupales, y sesiones ilimitadas con entrenadores personales.', 79.99);

-- DATOS DE LA TABLA TIPO RESERVA

INSERT INTO TipoReserva (Tipo, Descripcion, Disponible, Cancelacion) VALUES
('Indoor', 'Reservas para actividades en espacios interiores', TRUE, '2024-07-30 12:00:00'),
('Aire Libre', 'Reservas para actividades al aire libre', TRUE, '2024-07-30 12:00:00'),
('Pileta', 'Reservas para actividades en la piscina', TRUE, '2024-07-30 12:00:00'),
('Box Pilates', 'Reservas para actividades en el box de pilates', TRUE, '2024-07-30 12:00:00');

-- DATOS DE LA TABLA TIPO DE CLASE

INSERT INTO TipoClase (Tipo, Descripcion, Disponible, Cancelacion) VALUES
('Funcional', 'Clase de entrenamiento funcional', TRUE, '2024-07-30 12:00:00'),
('Yoga', 'Clase de yoga', TRUE, '2024-07-30 12:00:00'),
('Musculación', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
('Pilates', 'Clase de pilates', TRUE, '2024-07-30 12:00:00'),
('Aeróbic', 'Clase de aeróbic', TRUE, '2024-07-30 12:00:00'),
('Crossfit', 'Clase de crossfit', TRUE, '2024-07-30 12:00:00'),
('Zumba', 'Clase de zumba', TRUE, '2024-07-30 12:00:00'),
('Boxeo', 'Clase de boxeo', TRUE, '2024-07-30 12:00:00'),
('Natación', 'Clase de natación', TRUE, '2024-07-30 12:00:00');

-- DATOS DE LA TABLA HORARIOS

-- Horarios para las clases y reservas
INSERT INTO Horario (ID_TipoClase, ID_TipoReserva, Horario, Descripcion, Disponible, Cancelacion) VALUES
-- Clase de Funcional
(1, 1, '07:00-08:00', 'Clase de entrenamiento funcional', TRUE, '2024-07-30 12:00:00'),
-- Clase de Yoga
(2, 1, '08:15-09:15', 'Clase de yoga', TRUE, '2024-07-30 12:00:00'),
-- Clase de Pilates
(4, 1, '09:30-10:30', 'Clase de pilates', TRUE, '2024-07-30 12:00:00'),
-- Clase de Aeróbic
(5, 1, '10:45-11:45', 'Clase de aeróbic', TRUE, '2024-07-30 12:00:00'),
-- Clase de Crossfit
(6, 1, '12:00-13:00', 'Clase de crossfit', TRUE, '2024-07-30 12:00:00'),
-- Clase de Zumba
(7, 1, '13:15-14:15', 'Clase de zumba', TRUE, '2024-07-30 12:00:00'),
-- Clase de Boxeo
(8, 1, '14:30-15:30', 'Clase de boxeo', TRUE, '2024-07-30 12:00:00'),
-- Clase de Natación
(9, 1, '15:45-16:45', 'Clase de natación', TRUE, '2024-07-30 12:00:00'),
-- Clase de Funcional
(1, 2, '17:00-18:00', 'Clase de entrenamiento funcional', TRUE, '2024-07-30 12:00:00'),
-- Clase de Yoga
(2, 2, '18:15-19:15', 'Clase de yoga', TRUE, '2024-07-30 12:00:00'),
-- Clase de Pilates
(4, 2, '19:30-20:30', 'Clase de pilates', TRUE, '2024-07-30 12:00:00'),
-- Clase de Aeróbic
(5, 2, '20:45-21:45', 'Clase de aeróbic', TRUE, '2024-07-30 12:00:00'),
-- Clase de Crossfit
(6, 2, '22:00-23:00', 'Clase de crossfit', TRUE, '2024-07-30 12:00:00'),
-- Clase de Musculación (añadida para mayor variedad)
(3, 1, '08:00-09:00', 'Clase de musculación', TRUE, '2024-07-30 12:00:00');

-- Horarios para clases de musculación
INSERT INTO Horario (ID_TipoClase, ID_TipoReserva, Horario, Descripcion, Disponible, Cancelacion) VALUES
-- Clase de Musculación
(3, 1, '07:00-08:00', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '08:15-09:15', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '09:30-10:30', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '10:45-11:45', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '12:00-13:00', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '13:15-14:15', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '14:30-15:30', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '15:45-16:45', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '17:00-18:00', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '18:15-19:15', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '19:30-20:30', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '20:45-21:45', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
(3, 1, '22:00-23:00', 'Clase de musculación', TRUE, '2024-07-30 12:00:00');

-- DATOS DE LA TABLA RESERVAS

INSERT INTO Reserva (ID_Cliente, ID_Empleados, ID_Franquicia, ID_TipoReserva, ID_TipoClase, ID_Horario, Fecha, Cancelacion) VALUES
	(1, 1, 1, 1, 1, 1, '2024-01-01 08:00:00', NULL,1),
	(2, 2, 2, 2, 2, 2, '2024-01-02 09:00:00', NULL,2),
	(3, 3, 3, 3, 3, 3, '2024-01-03 10:00:00', NULL,3),
	(4, 4, 4, 4, 4, 4, '2024-01-04 11:00:00', NULL,3),
	(5, 5, 5, 4, 5, 5, '2024-01-05 12:00:00', NULL,3),
	(6, 6, 1, 1, 1, 6, '2024-01-06 13:00:00', NULL,3),
	(7, 7, 2, 2, 2, 7, '2024-01-07 14:00:00', NULL,1),
	(8, 8, 3, 3, 3, 8, '2024-01-08 15:00:00', NULL,3),
	(9, 9, 4, 4, 4, 9, '2024-01-09 16:00:00', NULL,3),
	(10, 10, 4, 4, 5, 10, '2024-01-10 17:00:00', NULL,1),
	(11, 1, 1, 1, 1, 1, '2024-01-11 08:00:00', NULL,1),
	(12, 2, 2, 2, 2, 2, '2024-01-12 09:00:00', NULL,3),
	(13, 3, 3, 3, 3, 3, '2024-01-13 10:00:00', NULL,3),
	(14, 4, 4, 4, 4, 4, '2024-01-14 11:00:00', NULL,2),
	(15, 5, 5, 4, 5, 5, '2024-01-15 12:00:00', NULL,1),
	(16, 6, 1, 1, 1, 6, '2024-01-16 13:00:00', NULL,3),
	(17, 7, 2, 2, 2, 7, '2024-01-17 14:00:00', NULL,2),
	(18, 8, 3, 3, 3, 8, '2024-01-18 15:00:00', NULL,1),
	(19, 9, 4, 4, 4, 9, '2024-01-19 16:00:00', NULL,3),
	(20, 10, 5, 4, 5, 10, '2024-01-20 17:00:00', NULL,1),
	(21, 1, 1, 1, 1, 1, '2024-01-21 08:00:00', NULL,2),
	(22, 2, 2, 2, 2, 2, '2024-01-22 09:00:00', NULL,3),
	(23, 3, 3, 3, 3, 3, '2024-01-23 10:00:00', NULL,1),
	(25, 4, 4, 4, 4, 4, '2024-01-24 11:00:00', NULL,3),
	(21, 5, 5, 4, 5, 5, '2024-01-25 12:00:00', NULL,3),
	(22, 6, 1, 1, 1, 6, '2024-01-26 13:00:00', NULL,2),
	(27, 7, 2, 2, 2, 7, '2024-01-27 14:00:00', NULL,3),
	(25, 8, 3, 3, 3, 8, '2024-01-28 15:00:00', NULL,1),
	(24, 9, 4, 4, 4, 9, '2024-01-29 16:00:00', NULL,3),
	(11, 10, 5, 4, 5, 10, '2024-01-30 17:00:00', NULL,1),
	(11, 1, 1, 1, 1, 1, '2024-01-31 08:00:00', NULL,3),
	(12, 2, 2, 2, 2, 2, '2024-02-01 09:00:00', NULL,1),
	(13, 3, 3, 3, 3, 3, '2024-02-02 10:00:00', NULL,3),
	(14, 4, 4, 4, 4, 4, '2024-02-03 11:00:00', NULL,3),
	(15, 5, 5, 4, 5, 5, '2024-02-04 12:00:00', NULL,1),
	(16, 6, 1, 1, 1, 6, '2024-02-05 13:00:00', NULL,2),
	(27, 7, 2, 2, 2, 7, '2024-02-06 14:00:00', NULL,3),
	(28, 8, 3, 3, 3, 8, '2024-02-07 15:00:00', NULL,2),
	(32, 9, 4, 4, 4, 9, '2024-02-08 16:00:00', NULL,3),
	(20, 10, 5, 4, 5, 10, '2024-02-09 17:00:00', NULL,2),
	(1, 1, 1, 1, 1, 1, '2024-02-10 08:00:00', NULL,2),
	(2, 2, 2, 2, 2, 2, '2024-02-11 09:00:00', NULL,3),
	(3, 3, 3, 3, 3, 3, '2024-02-12 10:00:00', NULL,3),
	(4, 4, 4, 4, 4, 4, '2024-02-13 11:00:00', NULL,1),
	(5, 5, 5, 4, 5, 5, '2024-02-14 12:00:00', NULL,1),
	(6, 6, 1, 1, 1, 6, '2024-02-15 13:00:00', NULL,3),
	(7, 7, 2, 2, 2, 7, '2024-02-16 14:00:00', NULL,1),
	(8, 8, 3, 3, 3, 8, '2024-02-17 15:00:00', NULL,2),
	(9, 9, 4, 4, 4, 9, '2024-02-18 16:00:00', NULL,3),
	(5, 10, 5, 4, 2, 10, '2024-02-19 17:00:00', NULL,3),
	(17, 1, 1, 1, 1, 1, '2024-02-20 08:00:00', NULL,2),
	(25, 2, 2, 2, 2, 2, '2024-02-21 09:00:00', NULL,3),
	(12, 3, 3, 3, 3, 3, '2024-02-22 10:00:00', NULL,1),
	(17, 4, 4, 4, 4, 4, '2024-02-23 11:00:00', NULL,3),
	(16, 5, 5, 4, 1, 5, '2024-02-24 12:00:00', NULL,2),
	(15, 6, 1, 1, 1, 6, '2024-02-25 13:00:00', NULL,2),
	(23, 7, 2, 2, 2, 7, '2024-02-26 14:00:00', NULL,3),
	(30, 8, 3, 3, 3, 8, '2024-02-27 15:00:00', NULL,2),
	(31, 9, 4, 4, 4, 9, '2024-02-28 16:00:00', NULL,3),
	(32, 10, 5, 4, 5, 10, '2024-02-29 17:00:00', NULL,1),
	(31, 1, 1, 1, 1, 1, '2024-03-01 08:00:00', NULL,3),
	(26, 2, 2, 2, 2, 2, '2024-03-02 09:00:00', NULL,3),
	(23, 3, 3, 3, 3, 3, '2024-03-03 10:00:00', NULL,1),
	(12, 4, 4, 4, 4, 4, '2024-03-04 11:00:00', NULL,2),
	(32, 5, 5, 4, 5, 5, '2024-03-05 12:00:00', NULL,3),
	(23, 6, 1, 1, 1, 6, '2024-03-06 13:00:00', NULL,1),
	(7, 7, 2, 2, 2, 7, '2024-03-07 14:00:00', NULL,3),
	(6, 8, 3, 3, 3, 8, '2024-03-08 15:00:00', NULL,2),
	(5, 9, 4, 4, 4, 9, '2024-03-09 16:00:00', NULL,3),
	(24, 10, 5, 2, 5, 10, '2024-03-10 17:00:00', NULL,2),
    (1, 2, 2,2, 1, 1, '2024-02-28 16:00:00', NULL,1),
	(3, 1, 2, 3, 5, 8, '2024-02-29 17:00:00', NULL,3),
	(16, 3, 4, 2, 2, 6, '2024-03-01 08:00:00', NULL,1),
	(2, 3, 3, 2, 3, 2, '2024-03-02 09:00:00', NULL,2),
	(23, 3, 3, 3, 3, 4, '2024-03-03 10:00:00', NULL,1),
	(12, 1, 2, 3, 5, 5, '2024-03-04 11:00:00', NULL,3),
	(32, 4, 3, 3, 2, 2, '2024-03-05 12:00:00', NULL,3),
	(23, 6, 2, 3, 4, 2, '2024-03-06 13:00:00', NULL,1),
	(7, 3, 4, 2, 2, 5, '2024-03-07 14:00:00', NULL,2),
	(6, 1, 1, 4, 3, 8, '2024-03-08 15:00:00', NULL,3),
	(5, 8, 3, 2, 4, 10, '2024-03-09 16:00:00', NULL,1),
	(24, 9, 3, 2, 5, 1, '2024-03-10 17:00:00', NULL,2);

UPDATES DE DATOS EN TABLAS MEMBRESIA Y RESERVA

UPDATE Cliente SET ID_Membresia = 1 WHERE ID_Cliente IN (1, 6, 11, 16, 21);
UPDATE Cliente SET ID_Membresia = 2 WHERE ID_Cliente IN (2, 7, 12, 17, 22);
UPDATE Cliente SET ID_Membresia = 3 WHERE ID_Cliente IN (3, 8, 13, 18, 23);

UPDATE Reserva SET ID_Membresia = 1 WHERE ID_Reserva IN (1, 6, 11, 16, 21);
UPDATE Reserva SET ID_Membresia = 2 WHERE ID_Reserva IN (2, 7, 12, 17, 22);
UPDATE Reserva SET ID_Membresia = 3 WHERE ID_Reserva IN (3, 8, 13, 18, 23);

-- Inserciones masivas en la tabla HechoReserva--

INSERT INTO HechoReserva (ID_Cliente, ID_Franquicia, ID_Empleados, ID_TipoReserva, ID_TipoClase, ID_Horario, ID_Membresia, Fecha, Costo, Asistio) VALUES
(1, 1, 1, 1, 1, 1, 1, '2024-08-01', 50.00, TRUE),
(2, 2, 2, 1, 2, 2, 1, '2024-08-01', 40.00, FALSE),
(3, 3, 3, 2, 3, 3, 2, '2024-08-02', 45.00, TRUE),
(4, 4, 4, 2, 4, 4, 3, '2024-08-02', 30.00, TRUE),
(5, 5, 5, 1, 5, 5, 1, '2024-08-03', 55.00, FALSE),
(6, 6, 6, 2, 6, 6, 2, '2024-08-03', 35.00, TRUE),
(7, 7, 7, 1, 7, 7, 3, '2024-08-04', 60.00, TRUE),
(8, 8, 8, 2, 8, 8, 1, '2024-08-04', 50.00, FALSE),
(9, 9, 9, 1, 9, 1, 2, '2024-08-05', 70.00, TRUE),
(10, 10, 10, 2, 1, 2, 3, '2024-08-05', 65.00, FALSE),
(11, 1, 2, 1, 2, 3, 1, '2024-08-06', 55.00, TRUE),
(12, 2, 3, 2, 3, 4, 2, '2024-08-06', 40.00, FALSE),
(13, 3, 4, 1, 4, 5, 3, '2024-08-07', 45.00, TRUE),
(14, 4, 5, 2, 5, 6, 1, '2024-08-07', 50.00, TRUE),
(15, 5, 6, 1, 1, 7, 2, '2024-08-08', 60.00, FALSE),
(16, 6, 7, 2, 2, 8, 3, '2024-08-08', 55.00, TRUE),
(17, 7, 8, 1, 3, 1, 1, '2024-08-09', 70.00, TRUE),
(18, 8, 9, 2, 4, 2, 2, '2024-08-09', 65.00, FALSE),
(19, 9, 10, 1, 5, 3, 3, '2024-08-10', 75.00, TRUE),
(20, 10, 1, 2, 1, 4, 1, '2024-08-10', 80.00, TRUE),
(21, 1, 2, 1, 2, 5, 2, '2024-08-11', 55.00, FALSE),
(22, 2, 3, 2, 3, 6, 3, '2024-08-11', 45.00, TRUE),
(23, 3, 4, 1, 4, 7, 1, '2024-08-12', 60.00, TRUE),
(24, 4, 5, 2, 5, 8, 2, '2024-08-12', 50.00, FALSE),
(25, 5, 6, 1, 1, 9, 3, '2024-08-13', 65.00, TRUE),
(26, 6, 7, 2, 2, 1, 1, '2024-08-13', 55.00, FALSE),
(27, 7, 8, 1, 3, 2, 2, '2024-08-14', 70.00, TRUE),
(28, 8, 9, 2, 4, 3, 3, '2024-08-14', 60.00, TRUE),
(29, 9, 10, 1, 5, 4, 1, '2024-08-15', 75.00, FALSE),
(10, 10, 1, 2, 1, 5, 2, '2024-08-15', 80.00, TRUE),
(21, 1, 2, 1, 2, 6, 3, '2024-08-16', 60.00, TRUE),
(22, 2, 3, 2, 3, 7, 1, '2024-08-16', 50.00, FALSE),
(32, 3, 4, 1, 4, 8, 2, '2024-08-17', 65.00, TRUE),
(12, 4, 5, 2, 5, 9, 3, '2024-08-17', 55.00, TRUE),
(32, 5, 6, 1, 1, 1, 1, '2024-08-18', 70.00, FALSE),
(32, 6, 7, 2, 2, 2, 2, '2024-08-18', 60.00, TRUE),
(27, 7, 8, 1, 3, 3, 3, '2024-08-19', 75.00, TRUE),
(28, 8, 9, 2, 4, 4, 1, '2024-08-19', 65.00, FALSE),
(19, 9, 10, 1, 5, 5, 2, '2024-08-20', 80.00, TRUE),
(10, 10, 1, 2, 1, 6, 3, '2024-08-20', 85.00, TRUE),
(11, 1, 2, 1, 2, 7, 1, '2024-08-21', 55.00, TRUE),
(12, 2, 3, 2, 3, 8, 2, '2024-08-21', 45.00, FALSE),
(13, 3, 4, 1, 4, 9, 3, '2024-08-22', 60.00, TRUE),
(14, 4, 5, 2, 5, 1, 1, '2024-08-22', 50.00, TRUE),
(15, 5, 6, 1, 1, 2, 2, '2024-08-23', 65.00, FALSE),
(16, 6, 7, 2, 2, 3, 3, '2024-08-23', 55.00, TRUE),
(7, 7, 8, 1, 3, 4, 1, '2024-08-24', 70.00, TRUE),
(4, 8, 9, 2, 4, 5, 2, '2024-08-24', 60.00, FALSE),
(9, 9, 10, 1, 5, 6, 3, '2024-08-25', 75.00, TRUE),
(5, 10, 1, 2, 1, 7, 1, '2024-08-25', 80.00, TRUE),
(1, 1, 2, 1, 2, 8, 2, '2024-08-26', 60.00, FALSE),

-- Insertar datos en la tabla de Audit_Membresia--

INSERT INTO Audit_Membresia (ID_Membresia, Tipo, Descripcion, Precio, Accion) VALUES
(1, 'Básica', 'Membresía básica con acceso a todas las áreas comunes', 29.99, 'Creación'),
(2, 'Estándar', 'Membresía estándar con acceso completo a las instalaciones y clases grupales', 49.99, 'Creación'),
(3, 'Premium', 'Membresía premium con acceso completo y sesiones ilimitadas con entrenadores personales', 79.99, 'Creación'),
(1, 'Básica', 'Actualización de precios', 34.99, 'Actualización'),
(2, 'Estándar', 'Actualización de descripción', 54.99, 'Actualización'),
(3, 'Premium', 'Cambio en la descripción', 74.99, 'Actualización');
(2, 2, 3, 2, 3, 9, 3, '2024-08-26', 50.00, TRUE),
(3, 3, 4, 1, 4, 1, 1, '2024-08-27', 65.00, TRUE),
(4, 4, 5, 2, 5, 2, 2, '2024-08-27', 65.00, TRUE);


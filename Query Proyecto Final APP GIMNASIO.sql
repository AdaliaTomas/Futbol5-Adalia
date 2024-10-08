	-- Creación de la base de datos si no existe
	DROP DATABASE IF EXISTS APP_GYMBRO;

	CREATE DATABASE APP_GYMBRO;

	-- Usar la base de datos APP_GYMBRO
	USE APP_GYMBRO;

	-- Tabla de Clientes - Almacena información sobre los clientes que realizan reservas
	CREATE TABLE Cliente (
		ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
		Nombre VARCHAR(50) NOT NULL,
		Nacimiento DATE NOT NULL,
		Edad INT NOT NULL,
		Email VARCHAR(100) NOT NULL UNIQUE,
		Telefono VARCHAR(50) NOT NULL
	);
    
	INSERT INTO APP_GYMBRO.Cliente (Nombre, Nacimiento, Edad, Email, Telefono) VALUES
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
    
   	-- Tabla de Franquicias - Almacena información sobre las distintas franquicias que hay de la cadena de gimnasio donde se realizan reservas
	CREATE TABLE Franquicia (
		ID_Franquicia INT AUTO_INCREMENT,
		Nombre VARCHAR(50) NOT NULL,
		Direccion VARCHAR(100) NOT NULL,
		Email VARCHAR(100) NOT NULL UNIQUE,
		Telefonos VARCHAR(50) NOT NULL,
		PRIMARY	KEY (ID_Franquicia)
	);

	INSERT INTO APP_GYMBRO.Franquicia (Nombre, Direccion, Email, Telefonos) VALUES
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

	-- Tabla de Empleados - Contiene información sobre los empleados involucrados en el proceso de reservas
	CREATE TABLE Empleados (
		ID_Empleados INT AUTO_INCREMENT PRIMARY KEY,
		ID_Franquicia INT, -- Puede ser una referencia a la sucursal si es necesario
		Nombre VARCHAR(100) NOT NULL,
		Telefono VARCHAR(20) NOT NULL,
		Email VARCHAR(100) NOT NULL UNIQUE,
		Descripcion TEXT,
		FOREIGN KEY (ID_Franquicia) REFERENCES franquicia(ID_Franquicia)
	);

	INSERT INTO APP_GYMBRO.Empleados (ID_Franquicia, Nombre, Telefono, Email, Descripcion) VALUES
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
    
    -- Tabla de Membresías
CREATE TABLE Membresia (
    ID_Membresia INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Precio DECIMAL(10, 2) NOT NULL
);

	-- Insertar datos en la tabla de Membresías
	INSERT INTO APP_GYMBRO.Membresia (Tipo, Descripcion, Precio) VALUES
	('Básica', 'Acceso limitado a las instalaciones del gimnasio, sin clases grupales.', 29.99),
	('Estándar', 'Acceso completo a las instalaciones del gimnasio y a todas las clases grupales.', 49.99),
	('Premium', 'Acceso completo a las instalaciones del gimnasio, todas las clases grupales, y sesiones ilimitadas con entrenadores personales.', 79.99);


	-- Tabla de Tipo de reservas - Contiene información sobre que tipo de espacio para su clase reserva la persona (Indoor, Aire libre, Pileta, Box pilates)
	CREATE TABLE TipoReserva (
		ID_TipoReserva INT AUTO_INCREMENT PRIMARY KEY,
		Tipo VARCHAR(100) NOT NULL,
		Descripcion TEXT,
		Disponible boolean,
		Cancelacion datetime
	);

	INSERT INTO APP_GYMBRO.TipoReserva (Tipo, Descripcion, Disponible, Cancelacion) VALUES
	('Indoor', 'Reservas para actividades en espacios interiores', TRUE, '2024-07-30 12:00:00'),
	('Aire Libre', 'Reservas para actividades al aire libre', TRUE, '2024-07-30 12:00:00'),
	('Pileta', 'Reservas para actividades en la piscina', TRUE, '2024-07-30 12:00:00'),
	('Box Pilates', 'Reservas para actividades en el box de pilates', TRUE, '2024-07-30 12:00:00');

	-- Tabla de Tipo de clase - Contiene información sobre que tipo de clase reserva la persona (funciona, Yoga, Musculacion, Pilates)
	CREATE TABLE TipoClase (
		ID_TipoClase INT AUTO_INCREMENT PRIMARY KEY,
		Tipo VARCHAR(100) NOT NULL,
		Descripcion TEXT,
		Disponible boolean,
		Cancelacion datetime
	);

	INSERT INTO APP_GYMBRO.TipoClase (Tipo, Descripcion, Disponible, Cancelacion) VALUES
	('Funcional', 'Clase de entrenamiento funcional', TRUE, '2024-07-30 12:00:00'),
	('Yoga', 'Clase de yoga', TRUE, '2024-07-30 12:00:00'),
	('Musculación', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
	('Pilates', 'Clase de pilates', TRUE, '2024-07-30 12:00:00'),
	('Aeróbic', 'Clase de aeróbic', TRUE, '2024-07-30 12:00:00'),
	('Crossfit', 'Clase de crossfit', TRUE, '2024-07-30 12:00:00'),
	('Zumba', 'Clase de zumba', TRUE, '2024-07-30 12:00:00'),
	('Boxeo', 'Clase de boxeo', TRUE, '2024-07-30 12:00:00'),
	('Natación', 'Clase de natación', TRUE, '2024-07-30 12:00:00');

	-- Tabla de horarios - Contiene información sobre los rangos horarios para los distintos tipos de clase que reserva la persona 
	CREATE TABLE Horario (
		ID_Horario INT AUTO_INCREMENT PRIMARY KEY,
		ID_TipoClase INT NOT NULL,
		ID_TipoReserva INT NOT NULL,
		Horario VARCHAR(100) NOT NULL,
		Descripcion TEXT,
		Disponible boolean default ('Si o No'),
		Cancelacion DATETIME DEFAULT (current_timestamp),
		FOREIGN KEY (ID_TipoClase) references TipoClase(ID_TipoClase),
		FOREIGN KEY (ID_TipoReserva) references TipoReserva(ID_TipoReserva)	
	);

	-- Horarios para las clases y reservas

	INSERT INTO APP_GYMBRO.Horario (ID_TipoClase, ID_TipoReserva, Horario, Descripcion, Disponible, Cancelacion) VALUES
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
	(6, 2, '22:00-23:00', 'Clase de crossfit', TRUE, '2024-07-30 12:00:00');

	-- Horarios para clases de musculación

	INSERT INTO APP_GYMBRO.Horario (ID_TipoClase, ID_TipoReserva, Horario, Descripcion, Disponible, Cancelacion) VALUES
	(3, 1, '08:00-09:00', 'Clase de musculación', TRUE, '2024-07-30 12:00:00'),
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

	-- Tabla de Reserva - Almacena información sobre la reserva (hora/dia/tipo/franquicia)

	CREATE TABLE Reserva (
		ID_Reserva INT AUTO_INCREMENT PRIMARY KEY,
		ID_Cliente INT NOT NULL,
		ID_Empleados INT NOT NULL,
		ID_Franquicia INT NOT NULL,
		ID_TipoReserva INT NOT NULL,
		ID_TipoClase INT NOT NULL,
		ID_Horario INT NOT NULL,
		Fecha datetime NOT NULL default (current_date),
		Cancelacion datetime,
		FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
		FOREIGN KEY (ID_Empleados) REFERENCES Empleados(ID_Empleados),
		FOREIGN KEY (ID_Franquicia) REFERENCES Franquicia(ID_Franquicia),
		FOREIGN KEY (ID_TipoReserva) REFERENCES TipoReserva(ID_TipoReserva),
		FOREIGN KEY (ID_TipoClase) REFERENCES TipoClase(ID_TipoClase),
		FOREIGN KEY (ID_Horario) REFERENCES Horario(ID_Horario)
	);
    
    ALTER TABLE Cliente
ADD COLUMN ID_Membresia INT,
ADD FOREIGN KEY (ID_Membresia) REFERENCES Membresia(ID_Membresia);

UPDATE Cliente SET ID_Membresia = 1 WHERE ID_Cliente IN (1, 6, 11, 16, 21);
UPDATE Cliente SET ID_Membresia = 2 WHERE ID_Cliente IN (2, 7, 12, 17, 22);
UPDATE Cliente SET ID_Membresia = 3 WHERE ID_Cliente IN (3, 8, 13, 18, 23);
    
    
ALTER TABLE Reserva
ADD COLUMN ID_Membresia INT,
ADD FOREIGN KEY (ID_Membresia) REFERENCES Membresia(ID_Membresia);

UPDATE Reserva SET ID_Membresia = 1 WHERE ID_Reserva IN (1, 6, 11, 16, 21);
UPDATE Reserva SET ID_Membresia = 2 WHERE ID_Reserva IN (2, 7, 12, 17, 22);
UPDATE Reserva SET ID_Membresia = 3 WHERE ID_Reserva IN (3, 8, 13, 18, 23);
    
	-- Datos para la tabla Reserva

	INSERT INTO APP_GYMBRO.Reserva (ID_Cliente, ID_Empleados, ID_Franquicia, ID_TipoReserva, ID_TipoClase, ID_Horario, Fecha, Cancelacion, ID_Membresia) VALUES
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

-- Crear la tabla de hechos para almacenar reservas de gimnasio--

DROP TABLE IF EXISTS APP_GYMBRO.HechoReserva;

CREATE TABLE HechoReserva (
    ID_HechoReserva INT AUTO_INCREMENT PRIMARY KEY, 
    ID_Cliente INT NOT NULL,  -- Relación con la tabla Cliente
    ID_Franquicia INT NOT NULL, -- Relación con la tabla Franquicia
    ID_Empleados INT NOT NULL, -- Relación con la tabla Empleados
    ID_TipoReserva INT NOT NULL, -- Relación con la tabla TipoReserva
    ID_TipoClase INT NOT NULL, -- Relación con la tabla TipoClase
    ID_Horario INT NOT NULL, -- Relación con la tabla Horario
    ID_Membresia INT NOT NULL, -- Relación con la tabla Membresia
    Fecha DATETIME NOT NULL,  -- Fecha de la reserva
    Costo DECIMAL(10, 2) NOT NULL,  -- Costo de la reserva
    Asistio BOOLEAN NOT NULL DEFAULT FALSE, -- Indicador de si el cliente asistió o no a la clase
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_Franquicia) REFERENCES Franquicia(ID_Franquicia),
    FOREIGN KEY (ID_Empleados) REFERENCES Empleados(ID_Empleados),
    FOREIGN KEY (ID_TipoReserva) REFERENCES TipoReserva(ID_TipoReserva),
    FOREIGN KEY (ID_TipoClase) REFERENCES TipoClase(ID_TipoClase),
    FOREIGN KEY (ID_Horario) REFERENCES Horario(ID_Horario),
    FOREIGN KEY (ID_Membresia) REFERENCES Membresia(ID_Membresia)
);

-- Inserciones masivas en la tabla HechoReserva--

INSERT INTO APP_GYMBRO.HechoReserva (ID_Cliente, ID_Franquicia, ID_Empleados, ID_TipoReserva, ID_TipoClase, ID_Horario, ID_Membresia, Fecha, Costo, Asistio) VALUES
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
(2, 2, 3, 2, 3, 9, 3, '2024-08-26', 50.00, TRUE),
(3, 3, 4, 1, 4, 1, 1, '2024-08-27', 65.00, TRUE),
(4, 4, 5, 2, 5, 2, 2, '2024-08-27', 65.00, TRUE);

DROP TABLE IF EXISTS APP_GYMBRO.Audit_Membresia;

CREATE TABLE Audit_Membresia (
    ID_Audit INT AUTO_INCREMENT PRIMARY KEY,
    ID_Membresia INT,
    Tipo VARCHAR(100),
    Descripcion TEXT,
    Precio DECIMAL(10, 2),
    FechaCambio DATETIME DEFAULT CURRENT_TIMESTAMP,
    Accion VARCHAR(50),
    FOREIGN KEY (ID_Membresia) REFERENCES Membresia(ID_Membresia)
);

-- Insertar datos en la tabla de Audit_Membresia--

INSERT INTO APP_GYMBRO.Audit_Membresia (ID_Membresia, Tipo, Descripcion, Precio, Accion) VALUES
(1, 'Básica', 'Membresía básica con acceso a todas las áreas comunes', 29.99, 'Creación'),
(2, 'Estándar', 'Membresía estándar con acceso completo a las instalaciones y clases grupales', 49.99, 'Creación'),
(3, 'Premium', 'Membresía premium con acceso completo y sesiones ilimitadas con entrenadores personales', 79.99, 'Creación'),
(1, 'Básica', 'Actualización de precios', 34.99, 'Actualización'),
(2, 'Estándar', 'Actualización de descripción', 54.99, 'Actualización'),
(3, 'Premium', 'Cambio en la descripción', 74.99, 'Actualización');

-- Vistas con subconsultas

CREATE OR REPLACE VIEW APP_GYMBRO.Ingresos_Totales_Franquicia AS
SELECT f.Nombre AS Franquicia, SUM(hr.Costo) AS IngresosTotales
FROM HechoReserva hr
JOIN Franquicia f ON hr.ID_Franquicia = f.ID_Franquicia
GROUP BY f.Nombre;

SELECT 
*
FROM Ingresos_Totales_Franquicia;
       
-- VistaReservas: Contar el número de reservas por cliente --

CREATE OR REPLACE VIEW APP_GYMBRO.Vista_Reservas AS (
SELECT 
    r.ID_Reserva, 
    c.Nombre AS Cliente, 
    f.Nombre AS Franquicia, 
    t.Tipo AS TipoClase, 
    h.Horario, 
    r.Fecha,
    (SELECT COUNT(*) 
     FROM Reserva r2 
     WHERE r2.ID_Cliente = r.ID_Cliente) AS Total_Reservas_Cliente
FROM Reserva r
LEFT JOIN Cliente c ON r.ID_Cliente = c.ID_Cliente
LEFT JOIN Franquicia f ON r.ID_Franquicia = f.ID_Franquicia
LEFT JOIN TipoClase t ON r.ID_TipoClase = t.ID_TipoClase
LEFT JOIN Horario h ON r.ID_Horario = h.ID_Horario
ORDER BY Total_Reservas_Cliente desc, franquicia desc, CLIENTE DESC
);

SELECT 
*
FROM vista_reservas;


-- VistaReservasCliente: Obtener el nombre del empleado que realizó la mayor cantidad de reservas para cada cliente --

CREATE OR REPLACE VIEW APP_GYMBRO.Vista_Reservas_Cliente AS (
SELECT 
    c.ID_Cliente, 
    c.Nombre AS Cliente, 
    r.ID_Reserva, 
    f.Nombre AS Franquicia, 
    t.Tipo AS TipoClase, 
    h.Horario, 
    r.Fecha,
    (SELECT e.Nombre 
     FROM Empleados e 
     WHERE e.ID_Empleados = (
         SELECT r2.ID_Empleados 
         FROM Reserva r2 
         WHERE r2.ID_Cliente = c.ID_Cliente 
         GROUP BY r2.ID_Empleados 
         ORDER BY COUNT(*) DESC 
         LIMIT 1)) AS Empleado_Frecuente,
    (SELECT COUNT(*) 
     FROM Reserva r3 
     WHERE r3.ID_Cliente = c.ID_Cliente) AS Cantidad_Reservas
FROM Cliente c
JOIN Reserva r ON c.ID_Cliente = r.ID_Cliente
JOIN Franquicia f ON r.ID_Franquicia = f.ID_Franquicia
JOIN TipoClase t ON r.ID_TipoClase = t.ID_TipoClase
JOIN Horario h ON r.ID_Horario = h.ID_Horario
ORDER BY Cantidad_Reservas desc ,Empleado_Frecuente DESC, Franquicia DESC
);

SELECT *
FROM Vista_Reservas_Cliente;


-- Esta vista muestra información sobre los empleados y la franquicia en la que trabajan, esta ordenado por cada franquicia --

CREATE OR REPLACE VIEW APP_GYMBRO.Vista_Empleados_Franquicia AS 
SELECT 
    e.ID_Empleados, 
    e.Nombre AS Empleado, 
    f.Nombre AS Franquicia, 
    e.Telefono, 
    e.Email,
    e.Descripcion
FROM Empleados e
LEFT JOIN Franquicia f ON e.ID_Franquicia = f.ID_Franquicia
order by f.nombre;

SELECT *
FROM Vista_Empleados_Franquicia;


-- Vista Reservas Franquicia: clase más reservada en cada franquicia

CREATE OR REPLACE VIEW APP_GYMBRO.Vista_Reservas_Franquicia AS
SELECT 
    f.ID_Franquicia, 
    f.Nombre AS Franquicia, 
    r.ID_Reserva, 
    c.Nombre AS Cliente, 
    t.Tipo AS TipoClase, 
    h.Horario, 
    r.Fecha,
    (SELECT t2.Tipo 
     FROM TipoClase t2 
     WHERE t2.ID_TipoClase = (
         SELECT r2.ID_TipoClase 
         FROM Reserva r2 
         WHERE r2.ID_Franquicia = f.ID_Franquicia 
         GROUP BY r2.ID_TipoClase 
         ORDER BY COUNT(*) DESC 
         LIMIT 1)) AS ClasePopular
FROM Franquicia f
JOIN Reserva r ON f.ID_Franquicia = r.ID_Franquicia
JOIN Cliente c ON r.ID_Cliente = c.ID_Cliente
JOIN TipoClase t ON r.ID_TipoClase = t.ID_TipoClase
JOIN Horario h ON r.ID_Horario = h.ID_Horario
order by franquicia;

SELECT 
*
FROM Vista_Reservas_Franquicia;

-- PROCEDURE /  este procedimiento ObtenerReservasCliente permite recuperar toda la información relevante sobre las reservas realizadas por un cliente específico en la base de datos, el cual se utilizara para la fidelizacion de clientes, poder detectar este patron y detectar mas clientes como tales --

DELIMITER //
CREATE PROCEDURE ObtenerReservasCliente (IN ID_Cliente INT)
BEGIN
    SELECT
        r.ID_Reserva,
        c.Nombre AS Cliente,
        e.Nombre AS Empleado,
        f.Nombre AS Franquicia,
        tr.Tipo AS TipoReserva,
        tc.Tipo AS TipoClase,
        h.Horario AS Horario,
        r.Fecha AS FechaReserva,
        r.Cancelacion AS FechaCancelacion
    FROM Reserva r
    JOIN Cliente c ON r.ID_Cliente = c.ID_Cliente
    JOIN Empleados e ON r.ID_Empleados = e.ID_Empleados
    JOIN Franquicia f ON r.ID_Franquicia = f.ID_Franquicia
    JOIN TipoReserva tr ON r.ID_TipoReserva = tr.ID_TipoReserva
    JOIN TipoClase tc ON r.ID_TipoClase = tc.ID_TipoClase
    JOIN Horario h ON r.ID_Horario = h.ID_Horario
    WHERE r.ID_Cliente = ID_Cliente;
END //

DELIMITER ;

CALL ObtenerReservasCliente(5);

-- FUNCIONES 

-- La función ClienteConMayorReservas que has mostrado está diseñada para encontrar el nombre del cliente con la mayor cantidad de reservas en una base de datos -- 

DROP FUNCTION IF EXISTS APP_GYMBRO.ClienteConMayorReservas;

DELIMITER //

CREATE FUNCTION APP_GYMBRO.ClienteConMayorReservas(cliente varchar(50), reserva int)
RETURNS VARCHAR(100)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE clienteNombre VARCHAR(100);

    -- Consulta para encontrar el cliente con la mayor cantidad de reservas
    SELECT cliente.Nombre
    INTO clienteNombre
    FROM cliente c
    JOIN (
        SELECT ID_Cliente
        FROM reserva
        GROUP BY ID_Cliente
        ORDER BY COUNT(*) DESC
        LIMIT 1
    ) r ON c.ID_Cliente = r.ID_Cliente;

    RETURN clienteNombre;
END //

DELIMITER ;

-- Esta función ContarReservasCanceladas cuenta el número de filas en la tabla Reserva donde la columna Cancelacion no es NULL, lo que indica que la reserva ha sido cancelada.

-- Función para contar reservas canceladas

DELIMITER $$

CREATE FUNCTION contar_reservas_canceladas()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad_canceladas INT;

    -- Contar reservas con fecha de cancelación no nula
    SELECT COUNT(*)
    INTO cantidad_canceladas
    FROM Reserva
    WHERE Cancelacion IS NOT NULL;

    RETURN cantidad_canceladas;
END $$

DELIMITER ;

SELECT contar_reservas_canceladas() AS TotalReservasCanceladas;

-- Cada vez que se inserta un nuevo registro en la tabla reserva, este TRIGGER se activará y actualizará automáticamente la cantidad de reservas del cliente correspondiente --

DROP TRIGGER IF EXISTS APP_GYMBRO.AfterInsertReserva;

DELIMITER //

CREATE TRIGGER AfterInsertReserva
AFTER INSERT ON reserva
FOR EACH ROW
BEGIN
    -- Actualizar la cantidad de reservas del cliente
    UPDATE cliente
    SET CantidadReservas = CantidadReservas + 1
    WHERE ID_Cliente = NEW.ID_Cliente;
END //

DELIMITER ;

-- Creación del trigger que limita una reserva por cliente por día--

DELIMITER $$

CREATE TRIGGER UnicaReservaPorDia
BEFORE INSERT ON Reserva
FOR EACH ROW
BEGIN
    DECLARE reserva_existente INT;

    -- Verifica si ya existe una reserva para el mismo cliente en el mismo día
    SELECT COUNT(*) INTO reserva_existente
    FROM Reserva
    WHERE ID_Cliente = NEW.ID_Cliente
      AND DATE(Fecha) = DATE(NEW.Fecha);

    -- Si ya existe una reserva, levanta un error y no permite la inserción
    IF reserva_existente > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Solo se permite una reserva por día';
    END IF;
END$$

DELIMITER ;

-- Se activa después de cada actualización en la tabla Membresia y registra los datos antiguos antes del cambio, indicando que la acción fue una actualización --

DELIMITER //

CREATE TRIGGER after_membresia_update
AFTER UPDATE ON Membresia
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Membresia (ID_Membresia, Tipo, Descripcion, Precio, Accion)
    VALUES (OLD.ID_Membresia, OLD.Tipo, OLD.Descripcion, OLD.Precio, 'UPDATE');
END;
//

-- Se activa después de cada inserción en la tabla Membresia y registra los nuevos datos insertados, indicando que la acción fue una inserción --

CREATE TRIGGER after_membresia_insert
AFTER INSERT ON Membresia
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Membresia (ID_Membresia, Tipo, Descripcion, Precio, Accion)
    VALUES (NEW.ID_Membresia, NEW.Tipo, NEW.Descripcion, NEW.Precio, 'INSERT');
END;
//

DELIMITER ;

-- creacion de usuarios para DB App_Gymbro --

USE APP_GYMBRO;

-- pruebas de borrar si existe y volver a crear usuarios--

DROP USER IF EXISTS 'A.Marcos'@'%';
DROP USER IF EXISTS 'UserMantenimiento'@'%';
DROP USER IF EXISTS 'P.Juan'@'%';

-- Creacion de los usuarios para los duenos y un usuario quien va a ser el encargado de mantener y actualizar la base de datos del gimnasio --

CREATE USER 'P.Juan'@'%' IDENTIFIED BY 'Perezjuan-01';
CREATE USER 'A.Marcos'@'%' IDENTIFIED BY 'Altamiranomarcos-02';
CREATE USER 'UserMantenimiento'@'%' IDENTIFIED BY 'UserMantenimiento-01';

SELECT User, Host FROM mysql.user WHERE User = 'P.Juan';

-- Otorga todos los permisos en la base de datos APP_GYMBRO a los usuarios --

GRANT ALL PRIVILEGES ON APP_GYMBRO.* TO 'P.Juan'@'%';
GRANT ALL PRIVILEGES ON APP_GYMBRO.* TO 'A.Marcos'@'%';
GRANT ALL PRIVILEGES ON APP_GYMBRO.* TO 'UserMantenimiento'@'%';

-- Asegurarse de que los privilegios se carguen --

FLUSH PRIVILEGES;

-- creacion de usuarios para cada empleado --

CREATE USER 'P.Carlos'@'localhost' IDENTIFIED BY 'Pcarlos1';
CREATE USER 'L.Ana'@'localhost' IDENTIFIED BY 'Lana2';
CREATE USER 'G.Luis'@'localhost' IDENTIFIED BY 'Gluis3';
CREATE USER 'M.Sofia'@'localhost' IDENTIFIED BY 'Msofia4';
CREATE USER 'S.Pedro'@'localhost' IDENTIFIED BY 'Spedro5';
CREATE USER 'H.Laura'@'localhost' IDENTIFIED BY 'Hlaura6';
CREATE USER 'T.jorge'@'localhost' IDENTIFIED BY 'Tjorge7';
CREATE USER 'R.Marta'@'localhost' IDENTIFIED BY 'Rmarta8';
CREATE USER 'F.Jose'@'loclhost' IDENTIFIED BY 'Fjose9';
CREATE USER 'G.Carla'@'localhost' IDENTIFIED BY 'Gcarla10';
CREATE USER 'R.Miguel'@'localhost' IDENTIFIED BY 'Rmiguel11';
CREATE USER 'M.Elena'@'localhost' IDENTIFIED BY 'Melena12';
CREATE USER 'V.Daniel'@'localhost' IDENTIFIED BY 'Vdaniel13';
CREATE USER 'C.Grabiela'@'localhost' IDENTIFIED BY 'Cgabriela14';
CREATE USER 'R.Roberto'@'localhost' IDENTIFIED BY 'Rroberto15';
CREATE USER 'O.Natalia'@'localhost' IDENTIFIED BY 'Onatalia16';
CREATE USER 'H.Alberto'@'localhost' IDENTIFIED BY 'Halberto17';
CREATE USER 'D.Sandra'@'localhost' IDENTIFIED BY 'Dsandra18';
CREATE USER 'M.Ricardo'@'localhost' IDENTIFIED BY 'Mricardo19';

-- Permisos de solo visualización--

GRANT SELECT ON APP_GYMBRO.* TO 'P.Carlos'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'M.Ricardo'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'D.Sandra'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'H.Alberto'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'O.Natalia'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'R.Roberto'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'C.Grabiela'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'V.Daniel'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'M.Elena'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'R.Miguel'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'G.Carla'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'F.Jose'@'loclhost';
GRANT SELECT ON APP_GYMBRO.* TO 'R.Marta'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'T.jorge'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'H.Laura'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'S.Pedro'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'M.Sofia'@'localhost';
GRANT SELECT ON APP_GYMBRO.* TO 'G.Luis'@'localhost' ;
GRANT SELECT ON APP_GYMBRO.* TO 'L.Ana'@'localhost';

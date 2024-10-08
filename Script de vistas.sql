-- Vistas con subconsultas

-- Vista Reservas: Contar el número de reservas por cliente --

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

La vista Vista_Reservas utiliza las siguientes tablas:

Reserva: Contiene información sobre las reservas realizadas por los clientes.
Cliente: Contiene información sobre los clientes del gimnasio.
Franquicia: Contiene información sobre las franquicias donde se realizan las reservas.
TipoClase: Contiene información sobre los tipos de clase disponibles.
Horario: Contiene información sobre los horarios de las clases.

-------------------------------------------------------------------------------------------------------------------------------

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

La vista Vista_Reservas_Cliente utiliza las siguientes tablas:

Cliente: Contiene información sobre los clientes del gimnasio.
Reserva: Contiene información sobre las reservas realizadas por los clientes.
Franquicia: Contiene información sobre las franquicias donde se realizan las reservas.
TipoClase: Contiene información sobre los tipos de clase disponibles.
Horario: Contiene información sobre los horarios de las clases.

-------------------------------------------------------------------------------------------------------------------------------

-- Esta vista muestra información sobre los empleados y la franquicia en la que trabajan, esta ordenado por cada franquicia

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

La vista Vista_Empleados_Franquicia utiliza las siguientes tablas:

Empleados: Contiene información sobre los empleados que trabajan en las franquicias.
Franquicia: Contiene información sobre las diferentes franquicias del gimnasio.

-------------------------------------------------------------------------------------------------------------------------------

-- Vista Reservas Franquicia: Obtener el tipo de clase más reservada en cada franquicia

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

La vista Vista_Reservas_Franquicia utiliza las siguientes tablas:

Franquicia: Contiene información sobre las diferentes franquicias del gimnasio.
Reserva: Contiene información sobre las reservas realizadas por los clientes.
Cliente: Almacena información sobre los clientes que realizan las reservas.
TipoClase: Contiene información sobre los tipos de clases disponibles en el gimnasio.
Horario: Contiene información sobre los horarios disponibles para las clases y reservas.

-------------------------------------------------------------------------------------------------------------------------------

-- esta vista te proporcionará una lista con los nombres de las franquicias y sus respectivos ingresos totales calculados a partir de las reservas realizadas en cada una

CREATE OR REPLACE VIEW APP_GYMBRO.Ingresos_Totales_Franquicia AS
SELECT f.Nombre AS Franquicia, SUM(hr.Costo) AS IngresosTotales
FROM HechoReserva hr
JOIN Franquicia f ON hr.ID_Franquicia = f.ID_Franquicia
GROUP BY f.Nombre;

SELECT 
*
FROM Ingresos_Totales_Franquicia;

La vista Ingresos_Totales_Franquicia utiliza las siguientes tablas:

Franquicia: Contiene información sobre las diferentes franquicias del gimnasio.
Reserva: Contiene información sobre las reservas realizadas por los clientes.
Cliente: Almacena información sobre los clientes que realizan las reservas.
TipoClase: Contiene información sobre los tipos de clases disponibles en el gimnasio.
Costos: Contiene información sobre los pagos realizados por los clientes para cada clases.

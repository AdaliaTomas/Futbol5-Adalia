-- Este procedimiento ObtenerReservasCliente permite recuperar toda la información relevante sobre las reservas realizadas por un cliente específico
en la base de datos, el cual se utilizara para la fidelizacion de clientes, poder detectar este patron y detectar mas clientes como tales --

DELIMITER //
CREATE PROCEDURE ObtenerReservasCliente(IN ID_Cliente INT)
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

CALL ObtenerReservasCliente(1);

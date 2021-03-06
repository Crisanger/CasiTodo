﻿-- CONSULTAR USUARIO
CREATE PROCEDURE spConsultarUsuario
    @cNombre VARCHAR (50),
    @cPassword VARCHAR (50)
AS
SELECT 1 FROM USUARIO WHERE usuaNombre = @cNombre AND usuaContraseña = @cPassword;


-- CONSULTAR ACTIVEGUARD
CREATE PROCEDURE spConsultarActiveGuard
AS
SELECT dbo.ACTIVEGUARD.actgSerial AS Serial, 
       dbo.ACTIVEGUARD.actgCuenta AS Cuenta, 
       dbo.PUESTO.puesNombre AS Puesto, 
	   dbo.ACTIVEGUARD.actgNumero AS Numero, 
       dbo.OPERADOR.operNombre AS Operador, 
	   dbo.ACTIVEGUARD.actgBateria AS Bateria, 
       dbo.ACTIVEGUARD.actgDescripcion AS Descripcion
FROM dbo.ACTIVEGUARD INNER JOIN 
     dbo.OPERADOR ON dbo.ACTIVEGUARD.operCodigo = dbo.OPERADOR.operCodigo INNER JOIN 
     dbo.PUESTO ON dbo.ACTIVEGUARD.puesCodigo = dbo.PUESTO.puesCodigo


-- ADMINISTRAR ACTIVEGUARD
CREATE PROCEDURE spAdministrarActiveGuard
    @cSerial VARCHAR (50),
    @cCuenta VARCHAR (50),
    @nPuesCodigo INT,
    @cNumero VARCHAR (50),
    @nOperCodigo INT,
    @cBateria VARCHAR (50),
    @cDescripcion VARCHAR (100),
    @nOpcion INT,
    @cMensaje VARCHAR (50) OUTPUT 
AS
-- INSERTAR

IF @nOpcion = 1
    BEGIN
    IF NOT EXISTS (SELECT 1 FROM ACTIVEGUARD WHERE actgSerial = @cSerial)
        BEGIN
        IF NOT EXISTS (SELECT 1 FROM ACTIVEGUARD WHERE actgNumero = @cNumero)
            BEGIN
            INSERT INTO ACTIVEGUARD VALUES (@cSerial,@cCuenta,@nPuesCodigo,@cNumero,@nOperCodigo,@cBateria,@cDescripcion)
            SET @cMensaje = 'Se realizo proceso con exito'
        END
        ELSE
            BEGIN
            SET @cMensaje = 'El Numero ya esta registrado'
        END
    END
    ELSE
        BEGIN
        SET @cMensaje = 'El serial ya esta registrado'
    END
END

-- MODIFICAR 

IF @nOpcion = 2
    BEGIN
    IF EXISTS (SELECT 1 FROM ACTIVEGUARD WHERE actgSerial = @cSerial)
        BEGIN
        UPDATE ACTIVEGUARD 
        SET actgSerial = @cSerial,
            actgCuenta = @cCuenta,
            puesCodigo = @nPuesCodigo,
            actgNumero = @cNumero,
            operCodigo = @nOperCodigo,
            actgBateria = @cBateria,
            actgDescripcion = @cDescripcion
        WHERE actgSerial = @cSerial
        SET @cMensaje = 'Se actualizo correctamente'
    END
    ELSE
        BEGIN
        SET @cMensaje = 'El dispositivo no existe'
    END
END

-- ELIMINAR

IF @nOpcion = 3
    BEGIN
    IF EXISTS (SELECT 1 FROM ACTIVEGUARD WHERE actgSerial = @cSerial)
        BEGIN
        DELETE FROM ACTIVEGUARD
        WHERE actgSerial = @cSerial
        SET @cMensaje = 'Se elimino baston'
    END
    ELSE
        BEGIN
        SET @cMensaje = 'El dispositivo no existe'
    END
END


--CONSULTAR PUESTO
CREATE PROCEDURE spConsultarPuesto
AS
SELECT puesCodigo, puesNombre FROM PUESTO 


-- CONSULTAR OPERADOR
CREATE PROCEDURE spConsultarOperador
AS
SELECT operCodigo, operNombre FROM OPERADOR


-- ESTADISITICAS
SPCONSULTARESTADISTICAS
SELECT dbo.OPERADOR.operNombre AS Operador, 
       COUNT(dbo.ACTIVEGUARD.operCodigo) AS Cantidad
FROM dbo.ACTIVEGUARD INNER JOIN
     dbo.OPERADOR ON dbo.ACTIVEGUARD.operCodigo = dbo.OPERADOR.operCodigo GROUP BY dbo.OPERADOR.operNombre


-- ESTADISTICAS 2

ALTER PROCEDURE spEstadisticas2
AS 
SELECT dbo.EJECUTIVO.ejecNombre AS Ejecutivo, 
       COUNT(dbo.ZONA.zonaCodigo) AS Cantidad2
FROM dbo.EJECUTIVO INNER JOIN
     dbo.PUESTO ON dbo.EJECUTIVO.ejecCodigo = dbo.PUESTO.ejecCodigo INNER JOIN
     dbo.ZONA ON dbo.PUESTO.zonaCodigo = dbo.ZONA.zonaCodigo 
	 GROUP BY dbo.EJECUTIVO.ejecNombre



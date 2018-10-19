CREATE PROCEDURE spConsultarUsuario
    @cNombre VARCHAR (50),
    @cPassword VARCHAR (50)
AS
SELECT 1 FROM USUARIO WHERE usuaNombre = @cNombre AND usuaContraseña = @cPassword;
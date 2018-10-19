-- SECCION 1
CREATE TABLE TIPOUSUARIO (
    tipuCodigo INT IDENTITY (1,1) NOT NULL,
    tipuNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_TipoUsuario PRIMARY KEY (tipuCodigo)
)

CREATE TABLE USUARIO (
    usuaCodigo INT IDENTITY (1,1) NOT NULL,
    usuaCorreo VARCHAR (50) NOT NULL,
    usuaNombre VARCHAR (50) NOT NULL,
    usuaContraseña VARCHAR (50) NOT NULL,
    tipuCodigo INT NOT NULL,
    CONSTRAINT PK_Usuario PRIMARY KEY (usuaCodigo),
    CONSTRAINT FK_Usuario FOREIGN KEY (tipuCodigo) REFERENCES TIPOUSUARIO (tipuCodigo) 
)

-- SECCION 2

CREATE TABLE CIUDAD (
    ciudCodigo INT IDENTITY (1,1) NOT NULL,
    ciudNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_Ciudad PRIMARY KEY (ciudCodigo)
)

CREATE TABLE ZONA (
    zonaCodigo INT IDENTITY (1,1) NOT NULL,
    zonaNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_Zona PRIMARY KEY (zonaCodigo)
)

CREATE TABLE EJECUTIVO (
    ejecCodigo INT IDENTITY (1,1) NOT NULL,
    ejecNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_Ejecutivo PRIMARY KEY (ejecCodigo)
)

CREATE TABLE GUARDA (
    guarCodigo INT IDENTITY (1,1) NOT NULL,
    guarIdentificacion VARCHAR (50),
    guarNombre VARCHAR (100) NOT NULL,
    guarCelular VARCHAR (50),
    guarDireccion VARCHAR (50),
    guarBarrio VARCHAR (50),
    guarMoto VARCHAR (50),
    ciudCodigo INT NOT NULL,
    CONSTRAINT PK_Guarda PRIMARY KEY (guarCodigo),
    CONSTRAINT FK_Guarda FOREIGN KEY (ciudCodigo) REFERENCES CIUDAD (ciudCodigo)
)

CREATE TABLE PUESTO (
    puesCodigo INT IDENTITY (1,1) NOT NULL,
    puesIoc VARCHAR (50),
    puesNombre VARCHAR (50) NOT NULL,
    ciudCodigo INT NOT NULL,
    puesDireccion VARCHAR (50),
    puesBarrio VARCHAR (50),
    puesTelefono VARCHAR (50),
    puesExtencion VARCHAR (50),
    zonaCodigo INT NOT NULL,
    ejecCodigo INT NOT NULL,
    CONSTRAINT PK_Puesto PRIMARY KEY (puesCodigo),
    CONSTRAINT FK_Puesto_1 FOREIGN KEY (ciudCodigo) REFERENCES CIUDAD (ciudCodigo),
    CONSTRAINT FK_Puesto_2 FOREIGN KEY (zonaCodigo) REFERENCES ZONA (zonaCodigo),
    CONSTRAINT FK_Puesto_3 FOREIGN KEY (ejecCodigo) REFERENCES EJECUTIVO (ejecCodigo)
)

-- SECCION 3

CREATE TABLE MARCA (
    marcCodigo INT IDENTITY (1,1) NOT NULL,
    marcNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_Marca PRIMARY KEY (marcCodigo)
)

-- SECCION 4

CREATE TABLE OPERADOR (
    operCodigo INT IDENTITY (1,1) NOT NULL,
    operNombre VARCHAR (50),
    CONSTRAINT PK_Operador PRIMARY KEY (operCodigo)
)

CREATE TABLE ACTIVEGUARD (
    actgCodigo INT IDENTITY (1,1) NOT NULL,
    actgSerial VARCHAR (50) NOT NULL,
    actgCuenta VARCHAR (50),
    puesCodigo INT NOT NULL,
    actgNumero VARCHAR (50) NOT NULL,
    operCodigo INT NOT NULL,
    actgBateria VARCHAR (50),
    actgDescripcion VARCHAR (100),
    CONSTRAINT PK_ActiveGuard PRIMARY KEY (actgCodigo),
    CONSTRAINT FK_ActiveGuard_1 FOREIGN KEY (puesCodigo) REFERENCES PUESTO (puesCodigo),
    CONSTRAINT FK_ActiveGuard_2 FOREIGN KEY (operCodigo) REFERENCES OPERADOR (operCodigo)
)

CREATE TABLE ACTIVETRACK (
    acttCodigo INT IDENTITY (1,1) NOT NULL,
    acttSerial VARCHAR (50) NOT NULL,
    acttCuenta VARCHAR (50),
    acttNombre VARCHAR (50) NOT NULL,
    acttUbicacion VARCHAR (50) NOT NULL,
    acttNumero VARCHAR (50) NOT NULL,
    operCodigo INT NOT NULL,
    acttBateria VARCHAR (50),
    acttDescripcion VARCHAR (100),
    CONSTRAINT PK_ActiveTrack PRIMARY KEY (acttCodigo),
    CONSTRAINT FK_ActiveTrack FOREIGN KEY (operCodigo) REFERENCES OPERADOR (operCodigo)
)

CREATE TABLE GPRS (
    gprsCodigo INT IDENTITY (1,1) NOT NULL,
    gprsSerial VARCHAR (50) NOT NULL,
    gprsUbicacion VARCHAR (50) NOT NULL,
    gprsNumero VARCHAR (50) NOT NULL,
    operCodigo INT NOT NULL,
    CONSTRAINT PK_Gprs PRIMARY KEY (gprsCodigo),
    CONSTRAINT FK_Gprs FOREIGN KEY (operCodigo) REFERENCES OPERADOR (operCodigo)
)

CREATE TABLE GPS (
    gpsCodigo INT IDENTITY (1,1) NOT NULL,
    gpsImei VARCHAR (50) NOT NULL,
    gprsUbicacion VARCHAR (50) NOT NULL,
    gpsNumero VARCHAR (50),
    operCodigo INT NOT NULL,
    CONSTRAINT PK_Gps PRIMARY KEY (gpsCodigo),
    CONSTRAINT FK_Gps FOREIGN KEY (operCodigo) REFERENCES GPS (gpsCodigo)
)

-- SECCION 5
CREATE TABLE SISTEMAOPERATIVO (
    sisoCodigo INT IDENTITY (1,1) NOT NULL,
    sisoNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_SistemaOperativo PRIMARY KEY (sisoCodigo)
)

CREATE TABLE COMPUTADOR (
    compCodigo INT IDENTITY (1,1) NOT NULL,
    compSerial VARCHAR (50) NOT NULL,
    marcCodigo INT NOT NULL,
    compModelo VARCHAR (50),
    compColor VARCHAR (50),
    sisoCodigo INT NOT NULL,
    puesCodigo INT NOT NULL,
    CONSTRAINT PK_Computador PRIMARY KEY (compCodigo),
    CONSTRAINT FK_Computador_1 FOREIGN KEY (marcCodigo) REFERENCES MARCA (marcCodigo),
    CONSTRAINT FK_Computador_2 FOREIGN KEY (sisoCodigo) REFERENCES SISTEMAOPERATIVO (sisoCodigo),
    CONSTRAINT FK_Computador_3 FOREIGN KEY (puesCodigo) REFERENCES PUESTO (puesCodigo)
)
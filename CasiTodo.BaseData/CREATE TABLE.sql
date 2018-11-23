CREATE TABLE tbDepartamento (
    depaCodigo INT IDENTITY (1,1) NOT NULL,
    depaNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_Departamento PRIMARY KEY (depaCodigo)
)

CREATE TABLE tbCiudad (
    ciudCodigo INT IDENTITY (1,1) NOT NULL,
    ciudNombre VARCHAR (50) NOT NULL,
    depaCodigo INT NOT NULL,
    CONSTRAINT PK_Ciudad PRIMARY KEY (ciudCodigo),
    CONSTRAINT FK_Ciudad FOREIGN KEY (depaCodigo) REFERENCES tbDepartamento (depaCodigo)
)

CREATE TABLE tbServicio (
    servCodigo INT IDENTITY (1,1) NOT NULL,
    servNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_Servicio PRIMARY KEY (servCodigo)
)

CREATE TABLE tbTipoIdentificacion (
    tipiCodigo INT IDENTITY (1,1) NOT NULL,
    tipiNombre VARCHAR (50),
    CONSTRAINT PK_TipoIdentificacion PRIMARY KEY (tipiCodigo)
)

CREATE TABLE tbTipoCliente (
    tipcCodigo INT IDENTITY (1,1) NOT NULL,
    tipcNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_TipoCliente PRIMARY KEY (tipcCodigo)
)

CREATE TABLE tbEjecutivo (
    ejecCodigo INT IDENTITY (1,1) NOT NULL,
    ejecNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_Ejecutivo PRIMARY KEY (ejecCodigo)
)

CREATE TABLE tbCliente (
    clieCodigo INT IDENTITY (1,1) NOT NULL,
    clieIdentificacion VARCHAR (50) NOT NULL,
    clieNombre VARCHAR (50) NOT NULL,
    clieDireccion VARCHAR (50),
    clieTelefono VARCHAR (50),
    clieExtencion VARCHAR (50),
    clieCorreo VARCHAR (50),
    clieRepresentanteLegal VARCHAR (50),
    clieFechaInicio VARCHAR (50),
    clieFechaFin VARCHAR (50),
    ciudCodigo INT NOT NULL,
    ejecCodigo INT NOT NULL,
    tipcCodigo INT NOT NULL,
    servCodigo INT NOT NULL,
    tipiCodigo INT NOT NULL,
    CONSTRAINT PK_Cliente PRIMARY KEY (clieCodigo),
    CONSTRAINT FK_Cliente_1 FOREIGN KEY (ciudCodigo) REFERENCES tbCiudad (ciudCodigo),
    CONSTRAINT FK_Cliente_2 FOREIGN KEY (ejecCodigo) REFERENCES tbEjecutivo (ejecCodigo),
    CONSTRAINT FK_Cliente_3 FOREIGN KEY (tipcCodigo) REFERENCES tbTipoCliente (tipcCodigo),
    CONSTRAINT FK_Cliente_4 FOREIGN KEY (servCodigo) REFERENCES tbServicio (servCodigo),
    CONSTRAINT FK_Cliente_5 FOREIGN KEY (tipiCodigo) REFERENCES tbTipoIdentificacion (tipiCodigo)
)

CREATE TABLE tbZona (
    zonaCodigo INT IDENTITY (1,1) NOT NULL,
    zonaNombre VARCHAR (50) NOT NUL,
    CONSTRAINT PK_Zona PRIMARY KEY (zonaCodigo)
)

CREATE TABLE tbPlataforma (
    platCodigo INT IDENTITY (1,1) NOT NULL,
    platNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_Plataforma PRIMARY KEY (platCodigo)
)

CREATE TABLE tbPuesto (
    puesCodigo INT IDENTITY (1,1) NOT NULL,
    puesIoc VARCHAR (50) NOT NULL,
    puesNombre VARCHAR (50) NOT NULL,
    puesDireccion VARCHAR (50),
    puesTelefono VARCHAR (50),
    puesExtencion VARCHAR (50),
    puesCorreo VARCHAR (50),
    puesRepresentanteLegal VARCHAR (50),
    puesVideoVerificacion CHAR (2),
    puesRonda VARCHAR (50),
    ciudCodigo INT NOT NULL,
    zonaCodigo INT NOT NULL,
    ejecCodigo INT NOT NULL,
    tipcCodigo INT NOT NULL,
    platCodigo INT NOT NULL,
    servCodigo INT NOT NULL,
    clieCodigo INT NOT NULL,
    CONSTRAINT PK_Puesto PRIMARY KEY (puesCodigo),
    CONSTRAINT FK_Puesto_1 FOREIGN KEY (ciudCodigo) REFERENCES tbCiudad (ciudCodigo),
    CONSTRAINT FK_Puesto_2 FOREIGN KEY (zonaCodigo) REFERENCES tbZona (zonaCodigo),
    CONSTRAINT FK_Puesto_3 FOREIGN KEY (ejecCodigo) REFERENCES tbEjecutivo (ejecCodigo),
    CONSTRAINT FK_PUESTO_4 FOREIGN KEY (tipcCodigo) REFERENCES tbTipoCliente (tipcCodigo),
    CONSTRAINT FK_Puesto_5 FOREIGN KEY (platCodigo) REFERENCES tbPlataforma (platCodigo),
    CONSTRAINT FK_Puesto_6 FOREIGN KEY (servCodigo) REFERENCES tbServicio (servCodigo),
    CONSTRAINT FK_Puesto_7 FOREIGN KEY (clieCodigo) REFERENCES tbCliente ](clieCodigo)
)

--- SECCION 3
CREATE TABLE tbOperador (
    operCodigo INT IDENTITY (1,1) NOT NULL,
    operNombre VARCHAR (50) NOT NULL,
    CONSTRAINT PK_Operador PRIMARY KEY (operCodigo)
)

CREATE TABLE tbTipoPlan (
    tippCodigo INT IDENTITY (1,1) NOT NULL,
    tippNombre VARCHAR (50) NOT NULL,
    tippValor DECIMAL (18,2) NOT NULL,
    CONSTRAINT PK_TipoPlan PRIMARY KEY (tippCodigo)
)

CREATE TABLE tbSimcard (
    simcCodigo INT IDENTITY (1,1) NOT NULL,
    simcId VARCHAR (50),
    simcNumero VARCHAR (50),
    operCodigo INT NOT NULL,
    tippCodigo INT NOT NULL,
    CONSTRAINT PK_Simcard PRIMARY KEY (simcCodigo),
    CONSTRAINT FK_Simcard_1 FOREIGN KEY (operCodigo) REFERENCES tbOperador (operCodigo),
    CONSTRAINT FK_Simcard_2 FOREIGN KEY (tippCodigo) REFERENCES tbTipoCliente (tippCodigo)
)

CREATE TABLE tbActiveGuard (
    actgCodigo INT IDENTITY (1,1) NOT NULL,
    actgSerial VARCHAR (50) NOT NULL,
    actgCuenta VARCHAR (50) NOT NULL,
    actgNombre VARCHAR (50) NOT NULL,
    actgBateria VARCHAR (50),
    actgDescripcion VARCHAR (150),
    simcCodigo INT NOT NULL,
    puesCodigo INT NOT NULL,
    CONSTRAINT PK_ActiveGuard PRIMARY KEY (actgCodigo),
    CONSTRAINT FK_ActiveGuard_1 FOREIGN KEY (simcCodigo) REFERENCES tbSimcard (simcCodigo),
    CONSTRAINT FK_ActiveGuard_2 FOREIGN KEY (puesCodigo) REFERENCES tbPuesto (puesCodigo)
)


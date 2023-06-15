
USE GD1C2023
GO


/* DROP FK */
IF OBJECT_ID ('BI_PEDIDOS_APP.FK_LOCAL_LOCAL_TIPO' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_LOCAL DROP CONSTRAINT FK_LOCAL_LOCAL_TIPO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FK_RECLAMO_ESTADO' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_RECLAMO DROP CONSTRAINT FK_RECLAMO_ESTADO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.PEDIDO_LOCAL' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_PEDIDO DROP CONSTRAINT PEDIDO_LOCAL
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FK_DIRECCION_LOCAL_NOMBRE' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_DIRECCION DROP CONSTRAINT FK_DIRECCION_LOCAL_NOMBRE
GO




/* DROP TABLES */
IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADOS_PEDIDOS', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_ESTADOS_PEDIDOS
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADOS_RECLAMOS', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_ESTADOS_RECLAMOS
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADOS_ENVIOS_MENSAJERIA', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_ESTADOS_ENVIOS_MENSAJERIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_PEDIDO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_PEDIDO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_RECLAMO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_RECLAMO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_TIEMPO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_TIEMPO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_DIA', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_DIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_RANGO_HORARIO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_RANGO_HORARIO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_RANGO_ETARIO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_RANGO_ETARIO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_LOCAL', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_LOCAL
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_LOCAL_TIPO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_LOCAL_TIPO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_PROVINCIA', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_PROVINCIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_LOCALIDAD', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_LOCALIDAD
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_MEDIO_DE_PAGO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_MEDIO_DE_PAGO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_RANGO_ETARIO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_RANGO_ETARIO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_DIRECCION', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_DIRECCION
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_HECHO_PEDIDO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO
GO 

IF OBJECT_ID('BI_PEDIDOS_APP.BI_DIRECCION', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_DIRECCION
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADO_RECLAMO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_ESTADO_RECLAMO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADOS_PEDIDO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_ESTADOS_PEDIDO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADOS_ENVIO_MENSAJERIA', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_ESTADOS_ENVIO_MENSAJERIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ENVIOS_MENSAJERIA', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_ENVIOS_MENSAJERIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_TIEMPO_PEDIDO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_TIEMPO_PEDIDO
GO


/* DROP PROCEDURES */
IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_PEDIDOS') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_PEDIDOS
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_RECLAMOS') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_RECLAMOS
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_ENVIOS_MENSAJERIA') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_ENVIOS_MENSAJERIA
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_MEDIO_DE_PAGO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_MEDIO_DE_PAGO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_PROVINCIA') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_PROVINCIA
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_LOCALIDAD') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_LOCALIDAD
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_LOCAL') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_LOCAL
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_RANGO_ETARIO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_RANGO_ETARIO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_LOCAL_TIPO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_LOCAL_TIPO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_TIEMPO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIEMPO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_MEDIO_DE_PAGO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_MEDIO_DE_PAGO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.MIGRAR_BI_DIRECCION') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_DIRECCION
GO

IF OBJECT_ID('BI_PEDIDOS_APP.MIGRAR_BI_DIA') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_DIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.MIGRAR_BI_RANGO_HORARIO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_RANGO_HORARIO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_TIEMPO_PEDIDO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIEMPO_PEDIDO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_DIRECCION') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_DIRECCION
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_ESTADO_ENVIO_MENSAJERIA') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_ESTADO_ENVIO_MENSAJERIA
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_ESTADO_RECLAMO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_ESTADO_RECLAMO
GO


/*DROP FUNCIONES*/

IF OBJECT_ID ('BI_PEDIDOS_APP.FX_CALCULAR_RANGO_HORARIO') IS NOT NULL
	DROP FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_HORARIO
GO


/* DROP SCHEMA */
IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'BI_PEDIDOS_APP')
	DROP SCHEMA BI_PEDIDOS_APP
GO

/* CREANDO SCHEMA */
CREATE SCHEMA BI_PEDIDOS_APP
GO

-- Traer Pedido, Envio Mensajeria y Reclamo completo.
-- Traer Cup�n y cup�n por pedido.
-- Traer envio



--------------------------- TRAER PAQUETE 

-- DROP Tabla

IF OBJECT_ID('BI_PEDIDOS_APP.BI_HECHO_PAQUETE', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_HECHO_PAQUETE
GO


CREATE TABLE BI_PEDIDOS_APP.BI_HECHO_PAQUETE(
	ID_HECHO_PAQUETE decimal(18,0) PRIMARY KEY,
	HECHO_PAQUETE_TIPO nvarchar(50),
	HECHO_PAQUETE_TIPO_PRECIO nvarchar(50),
)

-- Migracion 

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_HECHO_PAQUETE
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_HECHO_PAQUETE(HECHO_PAQUETE_TIPO,HECHO_PAQUETE_TIPO_PRECIO)
	SELECT DISTINCT l.PAQUETE_TIPO, l.PAQUETE_TIPO_PRECIO
	FROM PEDIDOS_APP.PAQUETE l
END
GO

-------------------------------------------------






-- Traer Cupones reclamo
-- Traer Repartidor

--Crear Vista Tipo de Transporte y Tipo de paquete
/* CREANDO TABLAS */
--Faltan crear drops, migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO(
	PEDIDO_NRO decimal(18,0) PRIMARY KEY,
	PEDIDO_TOTAL_PRODUCTOS decimal(18,2),
	--PEDIDO_TARIFA_SERVICIO decimal(18,2),
	--PEDIDO_OBSERV nvarchar(255),
	--PEDIDO_TOTAL_CUPONES decimal(18,2),
	--PEDIDO_TOTAL_SERVICIO decimal(18,2),
	PEDIDO_TIEMPO_ESTIMADO_ENTREGA decimal(18,2),
	PEDIDO_CALIFICACION decimal(18,0),
	PRECIO_ENVIO  decimal(18,2),
	LOCAL_NOMBRE nvarchar(100),
	USUARIO_DNI decimal(18,0),
	PEDIDO_ESTADO INT,
	ID_DIA nvarchar(20), 
	ID_RANGO_HORARIO INT,
	ID_TIEMPO INT,
	PEDIDO_FECHA datetime2(3),
	PEDIDO_FECHA_ENTREGA datetime2(3)
);
GO

--Faltan crear drops, migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.BI_USUARIO(
	USUARIO_DNI decimal(18,0) PRIMARY KEY,
	ID_RANGO_ETARIO INT -- Crear FK a Rango etario
);
GO

--Faltan crear drops, migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.BI_REPARTIDOR(
	REPARTIDOR_DNI decimal(18,0) PRIMARY KEY,
	ID_RANGO_ETARIO INT, --Crear FK a Rango Etario
	TIPO_MOVILIDAD_COD INT
);
GO

--Faltan crear drops, migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.BI_OPERADOR(
	OPERADOR_COD INT PRIMARY KEY,
	ID_RANGO_ETARIO INT
);
GO

--Faltan crear drops, migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.BI_RECLAMO_X_OPERADOR(
	RECLAMO_X_OPERADOR_NRO INT IDENTITY(1,1) PRIMARY KEY,
	OPERADOR_CODIGO INT,
	RECLAMO_NRO decimal(18,0)
);


--Faltan crear drops, migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.BI_USUARIO_X_CUPON(
	USUARIO_X_CUPON_NRO INT IDENTITY(1,1) PRIMARY KEY,
	CUPON_CODIGO INT, -- FK A CUPON
	USUARIO_DNI decimal(18,0) --FK A USUARIO
);


--Faltan crear drops, migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.CUPON(
	CUPON_CODIGO INT IDENTITY(1,1) PRIMARY KEY,
	CUPON_NRO decimal(18,0),
	CUPON_MONTO decimal(18,2),
	CUPON_TIPO nvarchar(50),
	CUPON_FECHA_ALTA datetime2(3),
	CUPON_FECHA_VENCIMIENTO datetime2(3),
);


--Faltan crear drops, migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.BI_HECHO_ENVIOS_MENSAJERIA(
  	ENVIO_MENSAJERIA_NRO decimal(18,2) PRIMARY KEY,
	ENVIO_MENSAJERIA_LOCALIDAD nvarchar(255),
	ENVIO_MENSAJERIA_KM decimal(18,2),
	ENVIO_MENSAJERIA_VALOR_ASEGURADO decimal(18,2),
	ENVIO_MENSAJERIA_PRECIO_SEGURO decimal(18,2),
	ENVIO_MENSAJERIA_FECHA datetime,
	ENVIO_MENSAJERIA_ENTREGA datetime,
	ID_TIEMPO INT, --CREAR FK (VER SI REALMENTE LO NECESITO)
	ENVIO_MENSAJERIA_TIEMPO_ESTIMADO decimal(18,2),
	ID_ESTADO_MENASJERIA INT, -- CREAR FK A ESTADO_ENVIO_MENSAJERIA
	USUARIO_DNI decimal(18,0), --CREAR FK
	REPARTIDOR_DNI decimal(18,0), --CREAR FK A REPARTIDOR
	PAQUETE_NRO INT --CREAR FK
	--ENVIO_MENSAJERIA_PRECIO_ENVIO decimal(18,2),
	--ENVIO_MENSAJERIA_PROPINA decimal (18,2),
	--ENVIO_MENSAJERIA_TOTAL decimal(18,2),
	--ENVIO_MENSAJERIA_OBSERV nvarchar(255),
	--ENVIO_MENSAJERIA_KM decimal(18,2),

);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_ESTADOS_PEDIDO(
    ESTADO_PEDIDO_ID INT IDENTITY (1,1) PRIMARY KEY,
    PEDIDO_ESTADO nvarchar(255)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_ESTADOS_ENVIO_MENSAJERIA(
    ESTADO_ENVIO_MENSAJERIA_ID INT IDENTITY (1,1) PRIMARY KEY,
    ENVIO_MENSAJERIA_ESTADO nvarchar(255)
);
GO


CREATE TABLE BI_PEDIDOS_APP.BI_RECLAMO(
	RECLAMO_NRO Decimal(18,0), 
    RECLAMO_ESTADO INT,
	PEDIDO_NRO decimal(18,0),
	OPERADOR_DNI decimal(18,0),
    RECLAMO_MONTO_CUPON_ASOCIADO decimal(18,0),
	RECLAMO_FECHA datetime2(3),
	RECLAMO_FECHA_SOLUCION datetime2(3),
);
GO


CREATE TABLE BI_PEDIDOS_APP.BI_ESTADO_RECLAMO(
	ESTADO_RECLAMO_ID INT IDENTITY(1,1) PRIMARY KEY,
	RECLAMO_ESTADO nvarchar(255)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_TIEMPO_PEDIDO(
    ID_TIEMPO INT IDENTITY(1,1) PRIMARY KEY,
    TIEMPO_ANIO INT,
    TIEMPO_MES INT,
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_DIA(
    ID_DIA nvarchar(20) PRIMARY KEY,
    DIA_LETRA NVARCHAR(2)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_RANGO_HORARIO(
    ID_RANGO_HORARIO INT IDENTITY(1,1) PRIMARY KEY,
    RANGO_HORARIO_DESCRIPCION nvarchar(255)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_PROVINCIA(
	PROVINCIA_NOMBRE nvarchar(255) PRIMARY KEY
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_DIRECCION(
	DIRECCION_COD INT IDENTITY PRIMARY KEY,
	LOCAL_NOMBRE nvarchar(100),
	LOCAL_DIRECCION nvarchar(255),
	LOCALIDAD_COD INT
)

CREATE TABLE BI_PEDIDOS_APP.BI_LOCALIDAD(
	LOCALIDAD_ID INT IDENTITY(1,1) PRIMARY KEY,
	LOCALIDAD_NOMBRE nvarchar(255),
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_RANGO_ETARIO(
	RANGO_ETARIO_ID INT IDENTITY(1,1) PRIMARY KEY,
	RANGO_ETARIO_DESCRIPCION nvarchar(255)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_MEDIO_DE_PAGO(
	MEDIO_DE_PAGO_NRO nvarchar(50) PRIMARY KEY,
	MEDIO_DE_PAGO_TIPO nvarchar(50),
	USUARIO_DNI decimal(18,0)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_LOCAL(
	LOCAL_NOMBRE nvarchar(100) PRIMARY KEY,
	LOCAL_DESCRIPCION nvarchar(255) ,
	LOCAL_TIPO_ID INT,
	LOCAL_CATEGORIA nvarchar(255),
	LOCAL_DIRECCION INT
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_LOCAL_TIPO(
	LOCAL_TIPO_ID INT IDENTITY(1,1) PRIMARY KEY,
	LOCAL_TIPO_DESCRIPCION nvarchar(50)
);
GO

--FK

ALTER TABLE BI_PEDIDOS_APP.BI_LOCAL ADD CONSTRAINT FK_LOCAL_LOCAL_TIPO FOREIGN KEY (LOCAL_TIPO_ID) REFERENCES BI_PEDIDOS_APP.BI_LOCAL_TIPO(LOCAL_TIPO_ID)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_RECLAMO ADD CONSTRAINT FK_RECLAMO_ESTADO FOREIGN KEY (RECLAMO_ESTADO) REFERENCES BI_PEDIDOS_APP.BI_ESTADO_RECLAMO(ESTADO_RECLAMO_ID)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_LOCAL FOREIGN KEY (LOCAL_NOMBRE) REFERENCES BI_PEDIDOS_APP.BI_LOCAL(LOCAL_NOMBRE)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_DIRECCION ADD CONSTRAINT FK_DIRECCION_LOCAL_NOMBRE FOREIGN KEY (LOCAL_NOMBRE) REFERENCES BI_PEDIDOS_APP.BI_LOCAL(LOCAL_NOMBRE)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_ESTADO FOREIGN KEY (PEDIDO_ESTADO) REFERENCES BI_PEDIDOS_APP.BI_ESTADOS_PEDIDO(ESTADO_PEDIDO_ID)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_DIA FOREIGN KEY (ID_DIA) REFERENCES BI_PEDIDOS_APP.BI_DIA(ID_DIA)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_HORARIO FOREIGN KEY (ID_RANGO_HORARIO) REFERENCES BI_PEDIDOS_APP.BI_RANGO_HORARIO(ID_RANGO_HORARIO)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_TIEMPO FOREIGN KEY (ID_TIEMPO) REFERENCES BI_PEDIDOS_APP.BI_TIEMPO_PEDIDO(ID_TIEMPO)
GO


-- FUNCTIONS
/*CREATE FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO(@CLIENTE INT)
	RETURNS INT
BEGIN
	DECLARE @FECHA_NAC SMALLDATETIME
	DECLARE @EDAD INT
	DECLARE @ID_RANGO INT
	SET @FECHA_NAC = (SELECT CLIENTE_FECHA_NAC FROM M_AL_CUBO.CLIENTE WHERE CLIENTE_ID = @CLIENTE)

	SET @EDAD = YEAR(GETDATE()) -YEAR(@FECHA_NAC)

	IF @EDAD < 25
		SET @ID_RANGO = 1

	IF @EDAD BETWEEN 25 AND 35 
		SET @ID_RANGO = 2

	IF @EDAD BETWEEN 35 AND 55
		SET @ID_RANGO = 3

	IF @EDAD > 55
		SET @ID_RANGO = 4

	RETURN @ID_RANGO
	
END
GO*/

--LO PLANTEE ASI PORQUE EN G_AL_CUADRADO LO SACAN DE UNA TABLA ESPECIFICA y aca puede ser el horario de cualquier cosa
--por lo que puede ser cualquier horario, seria en cualquier caso tanto como pedido como horario local, etc en la vista cuando tendriamos que usar la funcion
-- y filtarlo asi ademas deberiamos pasarle el comando datepart a la fecha para que nos de la hora
CREATE FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_HORARIO(@HORA INT)
	RETURNS INT
BEGIN

	DECLARE @ID_RANGO INT

	IF @HORA BETWEEN 8 AND 10
		SET @ID_RANGO = 1

	IF @HORA BETWEEN 10 AND 12
		SET @ID_RANGO = 2

	IF @HORA BETWEEN 12 AND 14
		SET @ID_RANGO = 3

	IF @HORA BETWEEN 14 AND 16
		SET @ID_RANGO = 4

	IF @HORA BETWEEN 16 AND 18
		SET @ID_RANGO = 5

	IF @HORA BETWEEN 18 AND 20
		SET @ID_RANGO = 6

	IF @HORA BETWEEN 20 AND 22
		SET @ID_RANGO = 7

	IF @HORA BETWEEN 22 AND 24 -- aca capaz poner otro if que si hora es 00 pone el mismo id_rango por si queda alguno que sea con hora 0
		SET @ID_RANGO = 8

	RETURN @ID_RANGO
	
END
GO


--procedure
CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_PROVINCIA
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_PROVINCIA(PROVINCIA_NOMBRE)
	SELECT DISTINCT p.PROVINCIA_NOMBRE
	FROM PEDIDOS_APP.LOCAL_PROVINCIA p
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_LOCALIDAD
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_LOCALIDAD(LOCALIDAD_NOMBRE)
	SELECT DISTINCT l.LOCALIDAD_NOMBRE
	FROM PEDIDOS_APP.LOCAL_LOCALIDAD l
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_RANGO_ETARIO
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
		VALUES('<25')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
		VALUES('25-35')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
		VALUES('35-55')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_ETARIO(RANGO_ETARIO_DESCRIPCION)
		VALUES('>55')
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_ESTADO_RECLAMO
AS
BEGIN
    INSERT INTO BI_PEDIDOS_APP.BI_ESTADO_RECLAMO (RECLAMO_ESTADO)
        SELECT DISTINCT r.RECLAMO_ESTADO
        FROM PEDIDOS_APP.RECLAMO r
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_DIRECCION
AS
BEGIN 
	INSERT INTO BI_PEDIDOS_APP.BI_DIRECCION(LOCAL_DIRECCION, LOCAL_NOMBRE, LOCALIDAD_COD)
		SELECT DISTINCT d.LOCAL_DIRECCION, d.LOCAL_NOMBRE, d.LOCALIDAD_COD
		FROM PEDIDOS_APP.DIRECCION_LOCAL d
END 
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_DIA
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_DIA(ID_DIA, DIA_LETRA)
		VALUES('Monday', 'L')
	INSERT INTO BI_PEDIDOS_APP.BI_DIA(ID_DIA, DIA_LETRA)
		VALUES('Tuesday', 'M')
	INSERT INTO BI_PEDIDOS_APP.BI_DIA(ID_DIA, DIA_LETRA)
		VALUES('Wednesday', 'M')
	INSERT INTO BI_PEDIDOS_APP.BI_DIA(ID_DIA, DIA_LETRA)
		VALUES('Thursday', 'J')
	INSERT INTO BI_PEDIDOS_APP.BI_DIA(ID_DIA, DIA_LETRA)
		VALUES('Friday', 'V')
	INSERT INTO BI_PEDIDOS_APP.BI_DIA(ID_DIA, DIA_LETRA)
		VALUES('Saturday', 'S')
	INSERT INTO BI_PEDIDOS_APP.BI_DIA(ID_DIA, DIA_LETRA)
		VALUES('Sunday', 'D')
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_ESTADO_PEDIDOS
AS
BEGIN
    INSERT INTO BI_PEDIDOS_APP.BI_ESTADOS_PEDIDO (PEDIDO_ESTADO)
        SELECT DISTINCT p.PEDIDO_ESTADO
        FROM PEDIDOS_APP.PEDIDO p
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_ESTADO_ENVIO_MENSAJERIA
AS
BEGIN
		INSERT INTO BI_PEDIDOS_APP.BI_ESTADOS_ENVIO_MENSAJERIA (ENVIO_MENSAJERIA_ESTADO)
        SELECT DISTINCT e.ENVIO_MENSAJERIA_ESTADO
        FROM PEDIDOS_APP.ENVIO_MENSAJERIA e
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_MEDIO_DE_PAGO
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_MEDIO_DE_PAGO(MEDIO_DE_PAGO_NRO, MEDIO_DE_PAGO_TIPO, USUARIO_DNI)
	SELECT DISTINCT mp.MEDIO_PAGO_NRO_TARJETA, mp.MEDIO_PAGO_TIPO, mp.USUARIO_DNI
	FROM PEDIDOS_APP.MEDIO_PAGO mp
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_LOCAL
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_LOCAL(LOCAL_NOMBRE, LOCAL_CATEGORIA, LOCAL_DESCRIPCION, LOCAL_TIPO_ID)
	SELECT l.LOCAL_NOMBRE, l.LOCAL_CATEGORIA, l.LOCAL_DESCRIPCION, t.LOCAL_TIPO_ID
	FROM PEDIDOS_APP.LOCAL l
	JOIN BI_PEDIDOS_APP.BI_LOCAL_TIPO t on t.LOCAL_TIPO_DESCRIPCION = l.LOCAL_TIPO
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_LOCAL_TIPO
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_LOCAL_TIPO(LOCAL_TIPO_DESCRIPCION)
	SELECT DISTINCT l.LOCAL_TIPO
	FROM PEDIDOS_APP.LOCAL l
END
GO


/*CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_RECLAMO
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_ESTADOS_RECLAMOS(
	ID_ESTADO_RECLAMOS,RECLAMO_ESTADO,RECLAMO_FECHA,RECLAMO_FECHA_SOLUCION,RECLAMO_FECHA_SOLUCION,RECLAMO_MONTO_CUPON_ASOCIADO)
	SELECT R.PEDIDO_NRO,R.RECLAMO_ESTADO,R.RECLAMO_FECHA,R.RECLAMO_FECHA_SOLUCION,C.CUPON_RECLAMO_MONTO FROM PEDIDOS_APP.RECLAMO R JOIN PEDIDOS_APP.CUPON_RECLAMO C
	ON C.RECLAMO_NRO = R.RECLAMO_NRO
END
GO*/

/*CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_ENVIOS_MENSAJERIA
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_ESTADOS_ENVIOS_MENSAJERIA(ID_ESTADO_ENVIOS_MENSAJERIA,ENVIO_MENSAJERIA_ESTADO
	,ENVIO_MENSAJERIA_FECHA,ENVIO_MENSAJERIA_FECHA_ENTREGA,ENVIO_MENSAJERIA_PRECIO_ENVIO,ENVIO_MENSAJERIA_TOTAL,ENVIO_MENSAJERIA_VALOR_ASEGURADO)
	SELECT E.ENVIO_MENSAJERIA_NRO,E.ENVIO_MENSAJERIA_ESTADO,E.ENVIO_MENSAJERIA_FECHA,E.ENVIO_MENSAJERIA_ENTREGA,
	E.ENVIO_MENSAJERIA_PRECIO_ENVIO,E.ENVIO_MENSAJERIA_TOTAL,E.ENVIO_MENSAJERIA_VALOR_ASEGURADO  
	FROM PEDIDOS_APP.ENVIO_MENSAJERIA E 
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_PEDIDOS
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_ESTADOS_PEDIDOS(ID_ESTADO_PEDIDO,PEDIDO_ESTADO,PEDIDO_FECHA,PEDIDO_FECHA_ENTREGA,PEDIDO_TARIFA_SERVICIOS,PEDIDO_TARIFA_SERVICIOS,PEDIDO_TOTAL_CUPONES,PEDIDO_TOTAL_PRODUCTOS,PEDIDO_TOTAL_SERVICIO)
	SELECT P.PEDIDO_NRO,P.PEDIDO_ESTADO,P.PEDIDO_FECHA,P.PEDIDO_FECHA_ENTREGA,P.PEDIDO_TARIFA_SERVICIO,
	P.PEDIDO_TOTAL_CUPONES,P.PEDIDO_TOTAL_PRODUCTOS,P.PEDIDO_TOTAL_SERVICIO  
	FROM PEDIDOS_APP.PEDIDO P 
END
GO*/

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIEMPO
AS
BEGIN
INSERT INTO BI_PEDIDOS_APP.BI_TIEMPO_PEDIDO(TIEMPO_ANIO, TIEMPO_MES)
    SELECT YEAR(P.PEDIDO_FECHA), MONTH(P.PEDIDO_FECHA)
    FROM PEDIDOS_APP.PEDIDO P
END
GO


CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_RANGO_HORARIO
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('08:00-10:00')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('10:00-12:00')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('12:00-14:00')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('10:00-12:00')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('12:00-14:00')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('14:00-16:00')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('16:00-18:00')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('18:00-20:00')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('20:00-22:00')
	INSERT INTO BI_PEDIDOS_APP.BI_RANGO_HORARIO(RANGO_HORARIO_DESCRIPCION)
		VALUES('22:00-24:00')
END
GO
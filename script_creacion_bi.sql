
USE GD1C2023
GO


/* DROP FK */
IF OBJECT_ID ('BI_PEDIDOS_APP.FK_PEDIDO_TIEMPO' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO DROP CONSTRAINT FK_PEDIDO_TIEMPO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FK_PEDIDO_CATEGORIA_LOCAL' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO DROP CONSTRAINT FK_PEDIDO_CATEGORIA_LOCAL
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FK_PEDIDO_LOCALIDAD' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO DROP CONSTRAINT FK_PEDIDO_LOCALIDAD
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FK_PEDIDO_ID_DIA' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO DROP CONSTRAINT FK_PEDIDO_ID_DIA
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FK_PEDIDO_DIA_ID' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO DROP CONSTRAINT FK_PEDIDO_DIA_ID
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FK_PEDIDO_HORARIO' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO DROP CONSTRAINT FK_PEDIDO_RANGO_HORARIO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FK_RANGO_HORARIO' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO DROP CONSTRAINT FK_RANGO_HORARIO
GO





/* DROP TABLES */

IF OBJECT_ID('BI_PEDIDOS_APP.BI_TIEMPO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_TIEMPO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_DIA', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_DIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_RANGO_HORARIO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_RANGO_HORARIO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_PROVINCIA', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_PROVINCIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_LOCALIDAD', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_LOCALIDAD
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_RANGO_ETARIO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_RANGO_ETARIO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_TIPO_MEDIO_DE_PAGO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_TIPO_MEDIO_DE_PAGO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_LOCAL', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_LOCAL
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_LOCAL_TIPO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_LOCAL_TIPO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_LOCAL_CATEGORIA', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_LOCAL_CATEGORIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_TIPO_MOVILIDAD', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_TIPO_MOVILIDAD
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_TIPO_PAQUETE', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_TIPO_PAQUETE
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_DIRECCION', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_DIRECCION
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADO_RECLAMO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_ESTADO_RECLAMO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADO_PEDIDO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_ESTADO_PEDIDO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADO_ENVIO_MENSAJERIA', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_ESTADO_ENVIO_MENSAJERIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADO_PEDIDOS', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_ESTADO_PEDIDOS
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADO_RECLAMO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_ESTADO_RECLAMO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_ESTADO_ENVIO_MENSAJERIA', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_ESTADO_ENVIO_MENSAJERIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_HECHO_PEDIDO', 'U') IS NOT NULL
	DROP TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_HECHO_RECLAMO', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_HECHO_RECLAMO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_HECHO_ENVIO_MENSAJERIA', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_HECHO_ENVIO_MENSAJERIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.BI_PAQUETE', 'U') IS NOT NULL
    DROP TABLE BI_PEDIDOS_APP.BI_PAQUETE
GO


/* DROP PROCEDURES */

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_TIEMPO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIEMPO
GO

IF OBJECT_ID('BI_PEDIDOS_APP.MIGRAR_BI_DIA') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_DIA
GO

IF OBJECT_ID('BI_PEDIDOS_APP.MIGRAR_BI_RANGO_HORARIO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_RANGO_HORARIO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_PROVINCIA') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_PROVINCIA
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_LOCALIDAD') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_LOCALIDAD
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_RANGO_ETARIO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_RANGO_ETARIO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_TIPO_MEDIO_DE_PAGO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIPO_MEDIO_DE_PAGO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_LOCAL') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_LOCAL
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_TIPO_LOCAL') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIPO_LOCAL
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_CATEGORIA_LOCAL') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_CATEGORIA_LOCAL
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_TIPO_MOVILIDAD') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIPO_MOVILIDAD
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_TIPO_PAQUETE') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIPO_PAQUETE
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_PEDIDOS') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_PEDIDOS
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_ENVIO_MENSAJERIA') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_ENVIO_MENSAJERIA
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_RECLAMO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_RECLAMO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.MIGRAR_BI_HECHO_PEDIDO') IS NOT NULL
	DROP PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_HECHO_PEDIDO
GO


/*DROP FUNCIONES*/

IF OBJECT_ID ('BI_PEDIDOS_APP.FX_CALCULAR_RANGO_HORARIO') IS NOT NULL
	DROP FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_HORARIO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO_USUARIO') IS NOT NULL
	DROP FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO_USUARIO
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO_REPARTIDOR') IS NOT NULL
	DROP FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO_REPARTIDOR
GO

IF OBJECT_ID ('BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO_OPERADOR') IS NOT NULL
	DROP FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO_OPERADOR
GO

-- DROP VIEWS
IF OBJECT_ID('BI_PEDIDOS_APP.VISTA_CANTIDAD_PEDIDOS_MES_ANIO ', 'V') IS NOT NULL
	DROP VIEW BI_PEDIDOS_APP.VISTA_CANTIDAD_PEDIDOS_MES_ANIO 
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


/*
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

*/



CREATE TABLE BI_PEDIDOS_APP.BI_TIEMPO(
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
	PROVINCIA_ID INT IDENTITY(1,1) PRIMARY KEY,
	PROVINCIA_NOMBRE nvarchar(255) 
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_LOCALIDAD(
	LOCALIDAD_ID INT PRIMARY KEY,
	LOCALIDAD_NOMBRE nvarchar(255)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_RANGO_ETARIO(
	RANGO_ETARIO_ID INT IDENTITY(1,1) PRIMARY KEY,
	RANGO_ETARIO_DESCRIPCION nvarchar(255)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_TIPO_MEDIO_DE_PAGO(
	TIPO_MEDIO_DE_PAGO_ID INT IDENTITY(1,1) PRIMARY KEY,
	TIPO_MEDIO_DE_PAGO nvarchar(50),
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_LOCAL(
	LOCAL_NOMBRE nvarchar(100) PRIMARY KEY,
	LOCAL_DESCRIPCION nvarchar(255) ,
);
GO


CREATE TABLE BI_PEDIDOS_APP.BI_LOCAL_TIPO(
	LOCAL_TIPO_ID INT IDENTITY(1,1) PRIMARY KEY,
	LOCAL_TIPO_DESCRIPCION nvarchar(50)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_LOCAL_CATEGORIA(
	LOCAL_CATEGORIA_ID INT IDENTITY(1,1) PRIMARY KEY,
	LOCAL_CATEGORIA nvarchar(50)
);
GO

/*
CREATE TABLE BI_PEDIDOS_APP.BI_DIRECCION(
	DIRECCION_COD INT IDENTITY PRIMARY KEY,
	LOCAL_NOMBRE nvarchar(100),
	LOCAL_DIRECCION nvarchar(255),
	LOCALIDAD_COD INT
);*/

CREATE TABLE BI_PEDIDOS_APP.BI_TIPO_MOVILIDAD(
	TIPO_MOVILIDAD_ID INT IDENTITY (1,1) PRIMARY KEY,
	TIPO_MOVILIDAD_VEHICULO nvarchar(50),
);



CREATE TABLE BI_PEDIDOS_APP.BI_TIPO_PAQUETE(
	PAQUETE_ID INT IDENTITY (1,1) PRIMARY KEY,
	PAQUETE_TIPO nvarchar(50),
	PAQUETE_TIPO_PRECIO nvarchar(50),
	);


CREATE TABLE BI_PEDIDOS_APP.BI_ESTADO_PEDIDO(
    ESTADO_PEDIDO_ID INT IDENTITY (1,1) PRIMARY KEY,
    PEDIDO_ESTADO nvarchar(255)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_ESTADO_ENVIO_MENSAJERIA(
    ESTADO_ENVIO_MENSAJERIA_ID INT IDENTITY (1,1) PRIMARY KEY,
    ENVIO_MENSAJERIA_ESTADO nvarchar(255)
);
GO


CREATE TABLE BI_PEDIDOS_APP.BI_ESTADO_RECLAMO(
	ESTADO_RECLAMO_ID INT IDENTITY(1,1) PRIMARY KEY,
	RECLAMO_ESTADO nvarchar(255)
);
GO

--Faltan crear drops, migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO(
	/*PEDIDO_TOTAL_CUPONES decimal(18,2),
	PEDIDO_TOTAL_SERVICIO decimal(18,2),
	PEDIDO_TIEMPO_ESTIMADO_ENTREGA decimal(18,2),
	LOCAL_NOMBRE nvarchar(100),
	RANGO_ETARIO_USUARIO INT,
	RANGO_ETARIO_REPARTIDOR INT,
	PEDIDO_ESTADO INT,*/
	ID_DIA nvarchar(20), 
	ID_RANGO_HORARIO INT,
	LOCALIDAD_ID INT,
	CATEGORIA_LOCAL INT,
	ID_TIEMPO INT,
	PEDIDO_FECHA datetime2(3),
	PEDIDO_FECHA_ENTREGA datetime2(3)
);
GO

--Faltan migraciones y fk
CREATE TABLE BI_PEDIDOS_APP.BI_HECHO_ENVIO_MENSAJERIA(
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

CREATE TABLE BI_PEDIDOS_APP.BI_HECHO_RECLAMO(
	RECLAMO_NRO Decimal(18,0), 
    RECLAMO_ESTADO INT,
	PEDIDO_NRO decimal(18,0),
	OPERADOR_DNI decimal(18,0),
    RECLAMO_MONTO_CUPON_ASOCIADO decimal(18,0),
	RECLAMO_FECHA datetime2(3),
	RECLAMO_FECHA_SOLUCION datetime2(3),
);
GO

--FK
/*
ALTER TABLE BI_PEDIDOS_APP.BI_LOCAL ADD CONSTRAINT FK_LOCAL_LOCAL_TIPO FOREIGN KEY (LOCAL_TIPO_ID) REFERENCES BI_PEDIDOS_APP.BI_LOCAL_TIPO(LOCAL_TIPO_ID)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_RECLAMO ADD CONSTRAINT FK_RECLAMO_ESTADO FOREIGN KEY (RECLAMO_ESTADO) REFERENCES BI_PEDIDOS_APP.BI_ESTADO_RECLAMO(ESTADO_RECLAMO_ID)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_LOCAL FOREIGN KEY (LOCAL_NOMBRE) REFERENCES BI_PEDIDOS_APP.BI_LOCAL(LOCAL_NOMBRE)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_DIRECCION ADD CONSTRAINT FK_DIRECCION_LOCAL_NOMBRE FOREIGN KEY (LOCAL_NOMBRE) REFERENCES BI_PEDIDOS_APP.BI_LOCAL(LOCAL_NOMBRE)
GO
*/
/*
ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_ID_DIA FOREIGN KEY (ID_DIA) REFERENCES BI_PEDIDOS_APP.BI_DIA(ID_DIA)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_HORARIO FOREIGN KEY (ID_RANGO_HORARIO) REFERENCES BI_PEDIDOS_APP.BI_RANGO_HORARIO(ID_RANGO_HORARIO)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_LOCALIDADO FOREIGN KEY (LOCALIDAD_ID) REFERENCES BI_PEDIDOS_APP.BI_LOCALIDAD(LOCALIDAD_ID)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_TIEMPO FOREIGN KEY (ID_TIEMPO) REFERENCES BI_PEDIDOS_APP.BI_TIEMPO(ID_TIEMPO)
GO

ALTER TABLE BI_PEDIDOS_APP.BI_HECHO_PEDIDO ADD CONSTRAINT FK_PEDIDO_CATEGORIA_LOCAL FOREIGN KEY (CATEGORIA_LOCAL) REFERENCES BI_PEDIDOS_APP.BI_LOCAL_CATEGORIA(LOCAL_CATEGORIA_ID)
GO

*/

-- FUNCTIONS
CREATE FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO_USUARIO(@USUARIO INT)
	RETURNS INT
BEGIN
	DECLARE @FECHA_NAC SMALLDATETIME
	DECLARE @EDAD INT
	DECLARE @ID_RANGO INT
	SET @FECHA_NAC = (SELECT USUARIO_FECHA_NAC FROM PEDIDOS_APP.USUARIO WHERE USUARIO_DNI = @USUARIO)

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
GO

CREATE FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO_OPERADOR(@OPERADOR INT)
	RETURNS INT
BEGIN
	DECLARE @FECHA_NAC SMALLDATETIME
	DECLARE @EDAD INT
	DECLARE @ID_RANGO INT
	SET @FECHA_NAC = (SELECT OPERADOR_FECHA_NAC FROM PEDIDOS_APP.OPERADOR WHERE OPERADOR_DNI = @OPERADOR)

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
GO

CREATE FUNCTION BI_PEDIDOS_APP.FX_CALCULAR_RANGO_ETARIO_REPARTIDOR(@REPARTIDOR INT)
	RETURNS INT
BEGIN
	DECLARE @FECHA_NAC SMALLDATETIME
	DECLARE @EDAD INT
	DECLARE @ID_RANGO INT
	SET @FECHA_NAC = (SELECT REPARTIDOR_FECHA_NAC FROM PEDIDOS_APP.REPARTIDOR WHERE REPARTIDOR_DNI = @REPARTIDOR)

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
GO


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

	IF @HORA = 00 -- aca capaz poner otro if que si hora es 00 pone el mismo id_rango por si queda alguno que sea con hora 0
		SET @ID_RANGO = 8

	RETURN @ID_RANGO
	
END
GO


--procedure
CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIEMPO
AS
BEGIN
INSERT INTO BI_PEDIDOS_APP.BI_TIEMPO(TIEMPO_ANIO, TIEMPO_MES)
    SELECT DISTINCT YEAR(P.PEDIDO_FECHA), MONTH(P.PEDIDO_FECHA)
    FROM PEDIDOS_APP.PEDIDO P
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
	INSERT INTO BI_PEDIDOS_APP.BI_LOCALIDAD(LOCALIDAD_ID,LOCALIDAD_NOMBRE)
	SELECT DISTINCT l.LOCALIDAD_COD,l.LOCALIDAD_NOMBRE
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

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIPO_MEDIO_DE_PAGO
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_TIPO_MEDIO_DE_PAGO(TIPO_MEDIO_DE_PAGO)
	SELECT DISTINCT mp.MEDIO_PAGO_TIPO
	FROM PEDIDOS_APP.MEDIO_PAGO mp
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_LOCAL
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_LOCAL(LOCAL_NOMBRE, LOCAL_DESCRIPCION)
	SELECT l.LOCAL_NOMBRE, l.LOCAL_DESCRIPCION
	FROM PEDIDOS_APP.LOCAL l
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIPO_LOCAL
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_LOCAL_TIPO(LOCAL_TIPO_DESCRIPCION)
	SELECT DISTINCT l.LOCAL_TIPO
	FROM PEDIDOS_APP.LOCAL l
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_CATEGORIA_LOCAL
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_LOCAL_CATEGORIA(LOCAL_CATEGORIA)
	SELECT DISTINCT l.LOCAL_CATEGORIA
	FROM PEDIDOS_APP.LOCAL l
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIPO_MOVILIDAD
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_TIPO_MOVILIDAD(TIPO_MOVILIDAD_VEHICULO)
	SELECT DISTINCT tp.TIPO_MOVILIDAD_VEHICULO
	FROM PEDIDOS_APP.TIPO_MOVILIDAD tp
END
GO



CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_TIPO_PAQUETE
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_TIPO_PAQUETE(PAQUETE_TIPO,PAQUETE_TIPO_PRECIO)
	SELECT DISTINCT l.PAQUETE_TIPO, l.PAQUETE_TIPO_PRECIO
	FROM PEDIDOS_APP.PAQUETE l
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_PEDIDOS
AS
BEGIN
    INSERT INTO BI_PEDIDOS_APP.BI_ESTADO_PEDIDO (PEDIDO_ESTADO)
        SELECT DISTINCT p.PEDIDO_ESTADO
        FROM PEDIDOS_APP.PEDIDO p
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_ENVIO_MENSAJERIA
AS
BEGIN
		INSERT INTO BI_PEDIDOS_APP.BI_ESTADO_ENVIO_MENSAJERIA (ENVIO_MENSAJERIA_ESTADO)
        SELECT DISTINCT e.ENVIO_MENSAJERIA_ESTADO
        FROM PEDIDOS_APP.ENVIO_MENSAJERIA e
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_RECLAMO
AS
BEGIN
    INSERT INTO BI_PEDIDOS_APP.BI_ESTADO_RECLAMO (RECLAMO_ESTADO)
        SELECT DISTINCT r.RECLAMO_ESTADO
        FROM PEDIDOS_APP.RECLAMO r
END
GO


CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_HECHO_PEDIDO
AS
BEGIN
    INSERT INTO BI_PEDIDOS_APP.BI_HECHO_PEDIDO(/*PEDIDO_TOTAL_CUPONES,PEDIDO_TOTAL_SERVICIO ,PEDIDO_TIEMPO_ESTIMADO_ENTREGA,LOCAL_NOMBRE,RANGO_ETARIO_USUARIO,RANGO_ETARIO_REPARTIDOR,PEDIDO_ESTADO,*/
	ID_DIA , 
	ID_RANGO_HORARIO,
	LOCALIDAD_ID,
	CATEGORIA_LOCAL,
	ID_TIEMPO,
	PEDIDO_FECHA,
	PEDIDO_FECHA_ENTREGA)
        SELECT 
		DATEPART(DAYOFYEAR, p.PEDIDO_FECHA) AS ID_DIA,
        BI_PEDIDOS_APP.FX_CALCULAR_RANGO_HORARIO(DATEPART(HOUR, p.PEDIDO_FECHA)) AS ID_RANGO_HORARIO,
        dl.LOCALIDAD_COD AS LOCALIDAD,
        l.LOCAL_CATEGORIA AS CATEGORIA_LOCAL,
		t.ID_TIEMPO AS ID_TIEMPO,
		p.PEDIDO_FECHA AS PEDIDO_FECHA,
		p.PEDIDO_FECHA_ENTREGA AS PEDIDO_FECHA_ENTREGA
        FROM PEDIDOS_APP.PEDIDO p
		join PEDIDOS_APP.LOCAL l on p.LOCAL_NOMBRE=l.LOCAL_NOMBRE
		join PEDIDOS_APP.DIRECCION_LOCAL dl on  l.LOCAL_NOMBRE=dl.LOCAL_NOMBRE
		join BI_PEDIDOS_APP.BI_TIEMPO t on DATEPART(month,p.PEDIDO_FECHA)=t.TIEMPO_MES and DATEPART(YEAR,p.PEDIDO_FECHA) = t.TIEMPO_ANIO
END
GO


/*EXECS*/
EXEC BI_PEDIDOS_APP.MIGRAR_BI_TIEMPO
EXEC BI_PEDIDOS_APP.MIGRAR_BI_DIA
EXEC BI_PEDIDOS_APP.MIGRAR_BI_RANGO_HORARIO
EXEC BI_PEDIDOS_APP.MIGRAR_BI_PROVINCIA
EXEC BI_PEDIDOS_APP.MIGRAR_BI_LOCALIDAD
EXEC BI_PEDIDOS_APP.MIGRAR_BI_RANGO_ETARIO
EXEC BI_PEDIDOS_APP.MIGRAR_BI_TIPO_MEDIO_DE_PAGO
EXEC BI_PEDIDOS_APP.MIGRAR_BI_LOCAL
EXEC BI_PEDIDOS_APP.MIGRAR_BI_TIPO_LOCAL
EXEC BI_PEDIDOS_APP.MIGRAR_BI_CATEGORIA_LOCAL
EXEC BI_PEDIDOS_APP.MIGRAR_BI_TIPO_MOVILIDAD
EXEC BI_PEDIDOS_APP.MIGRAR_BI_TIPO_PAQUETE
EXEC BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_PEDIDOS
EXEC BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_ENVIO_MENSAJERIA
EXEC BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_RECLAMO
EXEC BI_PEDIDOS_APP.MIGRAR_BI_HECHO_PEDIDO
GO


select * from BI_PEDIDOS_APP.BI_HECHO_PEDIDO
/********************
    EJERCICIO 01
*********************/


--CREATE VIEW BI_PEDIDOS_APP.VISTA_CANTIDAD_PEDIDOS_MES_ANIO 
--AS
 SELECT
    Año,
    Mes,
    MaxPedidos,
	ID_DIA AS Dia_Mayor_Pedidos,
	ID_RANGO_HORARIO AS Franja_Horario_Mayor_Pedidos
FROM (-- el subselect esta hecho porque no puedo hacer el temas de las fk
    SELECT
        DATEPART(YEAR, PEDIDO_FECHA) AS Año, -- esto puede ser directo el año de la tabla tiempo
        DATEPART(MONTH, PEDIDO_FECHA) AS Mes, -- esto puede ser directo el mes de la tabla tiempo no lo hice asi por tema fk
        COUNT(*) AS TotalPedidos,
		MAX(COUNT(*)) OVER (PARTITION BY DATEPART(YEAR, PEDIDO_FECHA), DATEPART(MONTH, PEDIDO_FECHA)) AS MaxPedidos,
		ID_DIA,-- esto si arreglamos el tema de fk es un join para que salga el nombre directo
        ID_RANGO_HORARIO --
    FROM BI_PEDIDOS_APP.BI_HECHO_PEDIDO hp
    GROUP BY DATEPART(YEAR, PEDIDO_FECHA), DATEPART(MONTH, PEDIDO_FECHA), ID_DIA, ID_RANGO_HORARIO
) AS Subquery
WHERE TotalPedidos=MaxPedidos
ORDER BY Año , Mes DESC
--GO
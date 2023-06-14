
USE GD1C2023
GO


/* DROP FK */
IF OBJECT_ID ('BI_PEDIDOS_APP.FK_LOCAL_LOCAL_TIPO' , 'F') IS NOT NULL
	ALTER TABLE BI_PEDIDOS_APP.BI_LOCAL DROP CONSTRAINT FK_LOCAL_LOCAL_TIPO
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


/* DROP SCHEMA */
IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'BI_PEDIDOS_APP')
	DROP SCHEMA BI_PEDIDOS_APP
GO

/* CREANDO SCHEMA */
CREATE SCHEMA BI_PEDIDOS_APP
GO

/* CREANDO TABLAS */
CREATE TABLE BI_PEDIDOS_APP.BI_ESTADOS_PEDIDOS(
    ID_ESTADO_PEDIDO INT primary key,
   --PEDIDO_NRO Decimal(18,0), no hace falta el numero de pedido, me parece porque en las vistas no vamos a buscar un pedido en particular
    PEDIDO_ESTADO nvarchar(255), -- este nose si va, lo puse por poner
    PEDIDO_TOTAL_PRODUCTOS Decimal(18,2),
    PEDIDO_TARIFA_SERVICIOS decimal(18,2),
    PEDIDO_TOTAL_CUPONES decimal(18,2),
    PEDIDO_TOTAL_SERVICIO decimal(18,2),
	PEDIDO_FECHA datetime2(3),
	PEDIDO_FECHA_ENTREGA datetime2(3),
    -- PEDIDO_MEDIO_DE_PAGO nose si modelarla y hacerla una fk con la dim de medio de pago o no (HABRIA QUE HACERLO)

);
GO
CREATE TABLE BI_PEDIDOS_APP.BI_ESTADOS_ENVIOS_MENSAJERIA(
    ID_ESTADO_ENVIOS_MENSAJERIA INT primary key,
   -- ENVIO_MENSAJERIA_NRO Decimal(18,0), IDEM QUE PEDIDO
    ENVIO_MENSAJERIA_ESTADO nvarchar(255),--para mi va voletearlo
    ENVIO_MENSAJERIA_VALOR_ASEGURADO decimal (18,2),
    ENVIO_MENSAJERIA_PRECIO_ENVIO decimal (18,2),
   -- ENVIO_MENSAJERIA_PROPINA decimal (18,2), nose si poner propina
    ENVIO_MENSAJERIA_TOTAL decimal (18,2),
	ENVIO_MENSAJERIA_FECHA datetime2(3),
	ENVIO_MENSAJERIA_FECHA_ENTREGA datetime2(3),

);
GO
CREATE TABLE BI_PEDIDOS_APP.BI_ESTADOS_RECLAMOS(
    ID_ESTADO_RECLAMOS INT primary key,
   -- RECLAMO_NRO Decimal(18,0), IDEM QUE LOS DEMAS
    RECLAMO_ESTADO nvarchar(255),
   -- PEDIDO_NRO decimal(18,0),
   -- OPERADOR_DNI decimal(18,0),
    RECLAMO_MONTO_CUPON_ASOCIADO decimal(18,0),
	RECLAMO_FECHA datetime2(3),
	RECLAMO_FECHA_SOLUCION datetime2(3),
);
GO
CREATE TABLE BI_PEDIDOS_APP.BI_TIEMPO(
    ID_TIEMPO INT IDENTITY(1,1) PRIMARY KEY,
    TIEMPO_ANIO INT,
    TIEMPO_MES INT,
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_DIA(
    ID_DIA INT IDENTITY(1,1) PRIMARY KEY,
    DIA_INICIAL NVARCHAR(50)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_RANGO_HORARIO(
    ID_RANGO_HORARIO INT IDENTITY(1,1) PRIMARY KEY,
    RANGO_HORARIO_INICIO NVARCHAR(50),
    RANGO_HORARIO_FIN NVARCHAR(50)
);
GO

CREATE TABLE BI_PEDIDOS_APP.BI_PROVINCIA(
	PROVINCIA_NOMBRE nvarchar(255) PRIMARY KEY
);
GO

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
	LOCAL_CATEGORIA nvarchar(255)
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


CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_RECLAMO
AS
BEGIN
	INSERT INTO BI_PEDIDOS_APP.BI_ESTADOS_RECLAMOS(
	ID_ESTADO_RECLAMOS,RECLAMO_ESTADO,RECLAMO_FECHA,RECLAMO_FECHA_SOLUCION,RECLAMO_FECHA_SOLUCION,RECLAMO_MONTO_CUPON_ASOCIADO)
	SELECT R.PEDIDO_NRO,R.RECLAMO_ESTADO,R.RECLAMO_FECHA,R.RECLAMO_FECHA_SOLUCION,C.CUPON_RECLAMO_MONTO FROM PEDIDOS_APP.RECLAMO R JOIN PEDIDOS_APP.CUPON_RECLAMO C
	ON C.RECLAMO_NRO = R.RECLAMO_NRO
END
GO

CREATE PROCEDURE BI_PEDIDOS_APP.MIGRAR_BI_ESTADO_ENVIOS_MENSAJERIA
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
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_BI_TIEMPO
AS
BEGIN
INSERT INTO BI_PEDIDOS_APP.BI_TIEMPO(TIEMPO_ANIO, TIEMPO_MES)
    SELECT YEAR(P.PEDIDO_FECHA), 
        MONTH(P.PEDIDO_FECHA)
    FROM PEDIDOS_APP.PEDIDO P
END
GO
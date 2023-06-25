USE GD1C2023
GO

/* DROP FK */
IF OBJECT_ID ('PEDIDOS_APP.FK_ENVIO_REPARTIDOR_DNI', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.ENVIO DROP CONSTRAINT FK_ENVIO_REPARTIDOR_DNI
GO 

IF OBJECT_ID ('PEDIDO_APP.FK_ENVIO_PEDIDO_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.ENVIO DROP CONSTRAINT FK_ENVIO_PEDIDO_NRO
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_RECLAMO_CUPON_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.RECLAMO DROP CONSTRAINT FK_RECLAMO_CUPON_NRO
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_RECLAMO_DNI', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.RECLAMO DROP CONSTRAINT FK_RECLAMO_DNI
GO 

IF OBJECT_ID ('PEDIDOS_APP.FK_RECLAMO_PEDIDO_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.RECLAMO DROP CONSTRAINT FK_RECLAMO_PEDIDO_NRO
GO

IF OBJECT_ID('PEDIDOS_APP.FK_REPARTIDOR_TIPO_MOVILIDAD_COD', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.REPARTIDOR DROP CONSTRAINT FK_REPARTIDOR_TIPO_MOVILIDAD_COD
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_USUARIO_DIRECCION_DNI' , 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.USUARIO_DIRECCION DROP CONSTRAINT FK_USUARIO_DIRECCION_DNI
GO

IF OBJECT_ID('PEDIDOS_APP.FK_HORARIO_LOCAL_LOCAL_CODIGO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.HORARIO_LOCAL DROP CONSTRAINT FK_HORARIO_LOCAL_LOCAL_CODIGO
GO

IF OBJECT_ID('PEDIDOS_APP.FK_PAQUETE_ENVIO_MENSAJERIA_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.PAQUETE DROP CONSTRAINT FK_PAQUETE_ENVIO_MENSAJERIA_NRO
GO

IF OBJECT_ID('PEDIDOS_APP.FK_MEDIO_PAGO_USUARIO_DNI', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.MEDIO_PAGO DROP CONSTRAINT FK_MEDIO_PAGO_USUARIO_DNI
GO

IF OBJECT_ID('PEDIDOS_APP.FK_ENVIO_MENSAJERIA_PAQUETE_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.ENVIO_MENSAJERIA DROP CONSTRAINT FK_ENVIO_MENSAJERIA_PAQUETE_NRO
GO

IF OBJECT_ID('PEDIDOS_APP.FK_ENVIO_MENSAJERIA_MEDIO_PAGO_NRO_TARJETA', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.ENVIO_MENSAJERIA DROP CONSTRAINT FK_ENVIO_MENSAJERIA_MEDIO_PAGO_NRO_TARJETA
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_ENVIO_MENSAJERIA_USUARIO_DNI' , 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.ENVIO_MENSAJERIA DROP CONSTRAINT FK_ENVIO_MENSAJERIA_USUARIO_DNI
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_ENVIO_MENSAJERIA_REPARTIDOR_DNI', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.ENVIO_MENSAJERIA DROP CONSTRAINT FK_ENVIO_MENSAJERIA_REPARTIDOR_DNI
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_RECLAMO_X_OPERADOR_OPERADOR_DNI', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.RECLAMO_X_OPERADOR DROP CONSTRAINT FK_RECLAMO_X_OPERADOR_OPERADOR_DNI
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_RECLAMO_X_OPERADOR_RECLAMO_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.RECLAMO_X_OPERADOR DROP CONSTRAINT FK_RECLAMO_X_OPERADOR_RECLAMO_NRO
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_PEDIDO_USUARIO_DNI', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.PEDIDO DROP CONSTRAINT FK_PEDIDO_USUARIO_DNI
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_USUARIO_CUPON_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.USUARIO_X_CUPON DROP CONSTRAINT FK_USUARIO_CUPON_NRO
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_U_X_C_CUPON_USUARIO_DNI') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.USUARIO_X_CUPON DROP CONSTRAINT FK_U_X_C_USUARIO_DNI
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_P_X_C_PEDIDO_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.PEDIDO_X_CUPON DROP CONSTRAINT FK_P_X_C_PEDIDO_NRO
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_CUPONR_RECLAMO_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.CUPON_RECLAMO DROP CONSTRAINT FK_CUPONR_RECLAMO_NRO
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_PRODUCTO_X_PEDIDO_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.PRODUCTO_X_PEDIDO DROP CONSTRAINT FK_PRODUCTO_X_PEDIDO_NRO
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_PRODUCTO_LOCAL_LOCAL_NRO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.PRODUCTO_LOCAL DROP CONSTRAINT FK_PRODUCTO_LOCAL_LOCAL_NRO
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_PEDIDO_LOCAL_CODIGO', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.PEDIDO DROP CONSTRAINT FK_PEDIDO_LOCAL_CODIGO
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_PEDIDO_MEDIO_PAGO_NRO_TARJETA' , 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.PEDIDO DROP CONSTRAINT FK_PEDIDO_MEDIO_PAGO_NRO_TARJETA
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_PEDIDO_REPARTIDOR_DNI' , 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.PEDIDO DROP CONSTRAINT FK_PEDIDO_REPARTIDOR_DNI
GO


IF OBJECT_ID ('PEDIDOS_APP.FK_LOCAL_NOMBRE_DIR', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.DIRECCION_LOCAL DROP CONSTRAINT  FK_LOCAL_NOMBRE_DIR
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_DIR_LOCALIDAD', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.DIRECCION_LOCAL DROP CONSTRAINT  FK_DIR_LOCALIDAD
GO

IF OBJECT_ID ('PEDIDOS_APP.FK_LOCALIDAD_PROVINCIA', 'F') IS NOT NULL
	ALTER TABLE PEDIDOS_APP.LOCAL_LOCALIDAD DROP CONSTRAINT FK_LOCALIDAD_PROVINCIA
GO

/* DROP TABLES */
IF OBJECT_ID('PEDIDOS_APP.RECLAMO', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.RECLAMO
GO

IF OBJECT_ID('PEDIDOS_APP.CUPON', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.CUPON
GO

IF OBJECT_ID('PEDIDOS_APP.CUPON_RECLAMO', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.CUPON_RECLAMO
GO

IF OBJECT_ID('PEDIDOS_APP.USUARIO_X_CUPON', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.USUARIO_X_CUPON
GO

IF OBJECT_ID ('PEDIDOS_APP.PEDIDO_X_CUPON','U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.PEDIDO_X_CUPON
GO 

IF OBJECT_ID ('PEDIDOS_APP.PRODUCTO_X_PEDIDO', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.PRODUCTO_X_PEDIDO
GO

IF OBJECT_ID('PEDIDOS_APP.PEDIDO', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.PEDIDO
GO

IF OBJECT_ID ('PEDIDOS_APP.PRODUCTO_LOCAL', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.PRODUCTO_LOCAL
GO

IF OBJECT_ID ('PEDIDOS_APP.USUARIO', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.USUARIO
GO

IF OBJECT_ID('PEDIDOS_APP.REPARTIDOR', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.REPARTIDOR
GO

IF OBJECT_ID('PEDIDOS_APP.OPERADOR', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.OPERADOR
GO

IF OBJECT_ID ('PEDIDOS_APP.RECLAMO_X_OPERADOR', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.RECLAMO_X_OPERADOR
GO

IF OBJECT_ID ('PEDIDOS_APP.ENVIO_MENSAJERIA', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.ENVIO_MENSAJERIA
GO

IF OBJECT_ID ('PEDIDOS_APP.MEDIO_PAGO', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.MEDIO_PAGO
GO

IF OBJECT_ID ('PEDIDOS_APP.PAQUETE', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.PAQUETE 
GO

IF OBJECT_ID ('PEDIDOS_APP.LOCAL', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.LOCAL
GO

IF OBJECT_ID ('PEDIDOS_APP.TIPO_MOVILIDAD', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.TIPO_MOVILIDAD
GO

IF OBJECT_ID ('PEDIDOS_APP.HORARIO_LOCAL','U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.HORARIO_LOCAL
GO

IF OBJECT_ID('PEDIDOS_APP.USUARIO_DIRECCION', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.USUARIO_DIRECCION
GO 

IF OBJECT_ID('PEDIDOS_APP.ENVIO', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.ENVIO
GO

IF OBJECT_ID('PEDIDOS_APP.DIRECCION_LOCAL', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.DIRECCION_LOCAL
GO

IF OBJECT_ID('PEDIDOS_APP.LOCAL_LOCALIDAD', 'U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.LOCAL_LOCALIDAD
GO

IF OBJECT_ID ('PEDIDOS_APP.LOCAL_PROVINCIA','U') IS NOT NULL
	DROP TABLE PEDIDOS_APP.LOCAL_PROVINCIA
GO

/*DROP PROCEDURES*/

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_RECLAMO') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_RECLAMO
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_ENVIO') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_ENVIO
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_CUPON') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_CUPON
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_CUPON_RECLAMO') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_CUPON_RECLAMO
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_USUARIO_X_CUPON') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_USUARIO_X_CUPON
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_PRODUCTO_X_PEDIDO') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_PRODUCTO_X_PEDIDO
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_PRODUCTO_LOCAL') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_PRODUCTO_LOCAL
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_PEDIDO') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_PEDIDO
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_USUARIO') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_USUARIO
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_USUARIO_DIRECCION') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_USUARIO_DIRECCION
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_REPARTIDOR') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_REPARTIDOR
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_OPERADOR') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_OPERADOR
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_OPERADOR') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_OPERADOR
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_RECLAMO_X_OPERADOR') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_RECLAMO_X_OPERADOR
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_ENVIO_MENSAJERIA') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_ENVIO_MENSAJERIA
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_PAQUETE') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_PAQUETE
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_HORARIO_LOCAL') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_HORARIO_LOCAL
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_LOCAL') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_LOCAL
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_TIPO_MOVILIDAD') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_TIPO_MOVILIDAD
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_MEDIO_PAGO') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_MEDIO_PAGO
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_PEDIDO_X_CUPON') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_PEDIDO_X_CUPON
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_LOCAL_PROVINCIA') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_LOCAL_PROVINCIA
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_LOCAL_LOCALIDAD') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_LOCAL_LOCALIDAD
GO

IF OBJECT_ID('PEDIDOS_APP.MIGRAR_DIRECCION_LOCAL') IS NOT NULL
	DROP PROCEDURE PEDIDOS_APP.MIGRAR_DIRECCION_LOCAL
GO

/* DROP SCHEMA */
IF EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'PEDIDOS_APP')
	DROP SCHEMA PEDIDOS_APP
GO

/* CREANDO SCHEMA */
CREATE SCHEMA PEDIDOS_APP
GO

/* CREANDO TABLAS */

CREATE TABLE PEDIDOS_APP.RECLAMO (
	RECLAMO_NRO decimal(18,0) PRIMARY KEY,
	RECLAMO_TIPO nvarchar(50) ,
	RECLAMO_ESTADO nvarchar(50),
	RECLAMO_DESCRIPCION nvarchar(50),
	RECLAMO_SOLUCION nvarchar(255),
	RECLAMO_FECHA_SOLUCION datetime2(3),
	RECLAMO_FECHA datetime2(3) ,
	RECLAMO_CALIFICACION decimal(18,0),
	USUARIO_DNI decimal(18,0),
	PEDIDO_NRO decimal(18,0)
);

CREATE TABLE PEDIDOS_APP.ENVIO (
	PEDIDO_NRO decimal(18,0) PRIMARY KEY,
	ENVIO_DIRECCION nvarchar(255),
	ENVIO_PRECIO decimal(18,2),
	ENVIO_FECHA_ENTREGA datetime2(3),
	ENVIO_PROPINA decimal(18,2),
	REPARTIDOR_DNI decimal(18,0)
);

CREATE TABLE PEDIDOS_APP.CUPON(
	CUPON_CODIGO INT IDENTITY(1,1) PRIMARY KEY,
	CUPON_NRO decimal(18,0),
	CUPON_MONTO decimal(18,2),
	CUPON_TIPO nvarchar(50),
	CUPON_FECHA_ALTA datetime2(3),
	CUPON_FECHA_VENCIMIENTO datetime2(3),
);

CREATE TABLE PEDIDOS_APP.CUPON_RECLAMO(
	CUPON_RECLAMO_COD INT IDENTITY(1,1) PRIMARY KEY,
	CUPON_RECLAMO_NRO decimal(18,0) ,
	CUPON_RECLAMO_MONTO decimal(18,2),
	CUPON_RECLAMO_FECHA_ALTA datetime2 (3),
	CUPON_RECLAMO_FECHA_VENCIMIENTO datetime2(3),
	CUPON_RECLAMO_TIPO nvarchar(50),
	RECLAMO_NRO decimal(18,0)
);

CREATE TABLE PEDIDOS_APP.USUARIO_X_CUPON(
	USUARIO_X_CUPON_NRO INT IDENTITY(1,1) PRIMARY KEY,
	CUPON_CODIGO INT,
	USUARIO_DNI decimal(18,0)
);


CREATE TABLE PEDIDOS_APP.PEDIDO_X_CUPON(
	PEDIDO_X_CUPON_NRO INT IDENTITY(1,1) PRIMARY KEY,
	CUPON_CODIGO INT,
	PEDIDO_NRO decimal(18,0)
);

CREATE TABLE PEDIDOS_APP.PRODUCTO_X_PEDIDO(
	PRODUCTO_X_PEDIDO INT IDENTITY(1,1) PRIMARY KEY,
	PEDIDO_NRO decimal(18,0),
	PRODUCTO_LOCAL_CODIGO nvarchar(50),
	PRODUCTO_CANTIDAD decimal(18,0),
	PRODUCTO_LOCAL_PRECIO decimal(18,2)
);

CREATE TABLE PEDIDOS_APP.PRODUCTO_LOCAL(
	PRODUCTO_LOCAL_CODIGO nvarchar(50) PRIMARY KEY,
	PRODUCTO_LOCAL_PRECIO decimal(18,2),
	PRODUCTO_LOCAL_NOMBRE nvarchar(50),
	PRODUCTO_LOCAL_DESCRIPCION nvarchar(255),
	LOCAL_NOMBRE nvarchar(100),
);

CREATE TABLE PEDIDOS_APP.PEDIDO(
	PEDIDO_NRO decimal(18,0) PRIMARY KEY,
	PEDIDO_TOTAL_PRODUCTOS decimal(18,2),
	PEDIDO_TARIFA_SERVICIO decimal(18,2),
	PEDIDO_OBSERV nvarchar(255),
	PEDIDO_TOTAL_CUPONES decimal(18,2),
	PEDIDO_TOTAL_SERVICIO decimal(18,2),
	PEDIDO_FECHA datetime2(3),
	PEDIDO_TIEMPO_ESTIMADO_ENTREGA decimal(18,2),
	PEDIDO_CALIFICACION decimal(18,0),
	MEDIO_DE_PAGO_NRO_TARJETA nvarchar(50),
	LOCAL_NOMBRE nvarchar(100),
	USUARIO_DNI decimal(18,0),
	PEDIDO_ESTADO nvarchar(50),
	
	REPARTIDOR_DNI decimal(18,0)
);

CREATE TABLE PEDIDOS_APP.USUARIO(
	USUARIO_DNI decimal(18,0) PRIMARY KEY,
	USUARIO_NOMBRE nvarchar(255),
	USUARIO_APELLIDO nvarchar(255),
	USUARIO_FECHA_REGISTRO datetime2(3),
	USUARIO_TELEFONO decimal(18,0),
	USUARIO_MAIL nvarchar(255),
	USUARIO_FECHA_NAC date,
);

CREATE TABLE PEDIDOS_APP.USUARIO_DIRECCION (
	USUARIO_DNI decimal(18,0),
	USUARIO_DIRECCION_COD INT IDENTITY PRIMARY KEY,
	USUARIO_DIRECCION nvarchar(255),
	USUARIO_LOCALIDAD nvarchar(255),
	USUARIO_PROVINCIA nvarchar(255)
);

CREATE TABLE PEDIDOS_APP.REPARTIDOR(
	REPARTIDOR_DNI decimal(18,0) PRIMARY KEY,
	REPARTIDOR_NOMBRE nvarchar(255),
	REPARTIDOR_APELLIDO nvarchar(255),
	REPARTIDOR_TELEFONO decimal(18,0),
	REPARTIDOR_MAIL nvarchar(255),
	REPARTIDOR_FECHA_NAC date,
	TIPO_MOVILIDAD_COD INT
);/*Decidir si ponerle la direccion como una fk o como nvchar como en el master
	Ademas de que no existe el tipo envio como si en la tabla, */


CREATE TABLE PEDIDOS_APP.OPERADOR(
	OPERADOR_CODIGO INT IDENTITY(1,1) PRIMARY KEY,
	OPERADOR_DNI decimal(18,0),
	OPERADOR_NOMBRE nvarchar(255),
	OPERADOR_APELLIDO nvarchar(255),
	OPERADOR_TELEFONO decimal(18,0),
	OPERADOR_MAIL nvarchar(255),
	OPERADOR_FECHA_NAC date,
);/*Decidir si ponerle la direccion como una fk o como nvchar como en el master*/


CREATE TABLE PEDIDOS_APP.RECLAMO_X_OPERADOR(
	RECLAMO_X_OPERADOR_NRO INT IDENTITY(1,1) PRIMARY KEY,
	OPERADOR_CODIGO INT,
	RECLAMO_NRO decimal(18,0)
);

CREATE TABLE PEDIDOS_APP.ENVIO_MENSAJERIA(
	ENVIO_MENSAJERIA_NRO decimal(18,2) PRIMARY KEY,
	ENVIO_MENSAJERIA_DIR_ORIG nvarchar(255),
	ENVIO_MENSAJERIA_DIR_DEST nvarchar(255),
	ENVIO_MENSAJERIA_LOCALIDAD nvarchar(255),
	ENVIO_MENSAJERIA_PROVINCIA nvarchar(255),
	ENVIO_MENSAJERIA_KM decimal(18,2),
	ENVIO_MENSAJERIA_VALOR_ASEGURADO decimal(18,2),
	ENVIO_MENSAJERIA_PRECIO_ENVIO decimal(18,2),
	ENVIO_MENSAJERIA_PRECIO_SEGURO decimal(18,2),
	ENVIO_MENSAJERIA_PROPINA decimal (18,2),
	ENVIO_MENSAJERIA_TOTAL decimal(18,2),
	ENVIO_MENSAJERIA_OBSERV nvarchar(255),
	ENVIO_MENSAJERIA_FECHA datetime,
	ENVIO_MENSAJERIA_ENTREGA datetime,
	ENVIO_MENSAJERIA_TIEMPO_ESTIMADO decimal(18,2),
	ENVIO_MENSAJERIA_CALIFICACION decimal(18,0),
	ENVIO_MENSAJERIA_ESTADO nvarchar(255),
	USUARIO_DNI decimal(18,0),
	REPARTIDOR_DNI decimal(18,0),
	MEDIO_PAGO_NRO_TARJETA nvarchar(50),
	PAQUETE_NRO INT
);


CREATE TABLE PEDIDOS_APP.MEDIO_PAGO(
	MEDIO_PAGO_NRO_TARJETA nvarchar(50) PRIMARY KEY,
	MEDIO_PAGO_TIPO nvarchar(50),
	MARCA_TARJETA nvarchar(100),
	USUARIO_DNI decimal(18,0)
);

CREATE TABLE PEDIDOS_APP.PAQUETE(
	PAQUETE_NRO INT IDENTITY PRIMARY KEY,
	PAQUETE_TIPO nvarchar(50),
	PAQUETE_ALTO_MAX decimal(18,2),
	PAQUETE_ANCHO_MAX decimal(18,2),
	PAQUETE_LARGO_MAX decimal(18,2),
	PAQUETE_PESO_MAX decimal(18,2),
	PAQUETE_TIPO_PRECIO decimal(18,2),
	ENVIO_MENSAJERIA_NRO decimal(18,2)
);

CREATE TABLE PEDIDOS_APP.HORARIO_LOCAL(
	HORARIO_LOCAL_NRO INT IDENTITY(1,1) PRIMARY KEY,
	HORARIO_LOCAL_HORA_APERTURA decimal(18,0),
	HORARIO_LOCAL_HORA_CIERRE decimal(18,0),
	HORARIO_LOCAL_DIA nvarchar(50),
	LOCAL_NOMBRE nvarchar(100)
);

CREATE TABLE PEDIDOS_APP.LOCAL( 
	LOCAL_NOMBRE nvarchar(100) PRIMARY KEY,
	LOCAL_DESCRIPCION nvarchar(255) ,
	LOCAL_TIPO nvarchar(50),
	LOCAL_CATEGORIA nvarchar(255)
);

CREATE TABLE PEDIDOS_APP.DIRECCION_LOCAL(
	DIRECCION_COD INT IDENTITY PRIMARY KEY,
	LOCAL_NOMBRE nvarchar(100),
	LOCAL_DIRECCION nvarchar(255),
	LOCALIDAD_COD INT
);

CREATE TABLE PEDIDOS_APP.LOCAL_LOCALIDAD(
	LOCALIDAD_COD INT IDENTITY PRIMARY KEY,
	LOCALIDAD_NOMBRE nvarchar(255),
	PROVINCIA_NOMBRE nvarchar(255)
);

CREATE TABLE PEDIDOS_APP.LOCAL_PROVINCIA(
	PROVINCIA_NOMBRE nvarchar(255) PRIMARY KEY
);

CREATE TABLE PEDIDOS_APP.TIPO_MOVILIDAD(
    TIPO_MOVILIDAD_COD INT IDENTITY PRIMARY KEY,
    TIPO_MOVILIDAD_VEHICULO nvarchar(50),
);

/* CREACION DE FOREIGN KEYS */
ALTER TABLE PEDIDOS_APP.DIRECCION_LOCAL ADD CONSTRAINT FK_LOCAL_NOMBRE_DIR FOREIGN KEY (LOCAL_NOMBRE) REFERENCES PEDIDOS_APP.LOCAL(LOCAL_NOMBRE)
GO

ALTER TABLE PEDIDOS_APP.LOCAL_LOCALIDAD ADD CONSTRAINT FK_LOCALIDAD_PROVINCIA FOREIGN KEY (PROVINCIA_NOMBRE) REFERENCES PEDIDOS_APP.LOCAL_PROVINCIA(PROVINCIA_NOMBRE)
GO 

ALTER TABLE PEDIDOS_APP.DIRECCION_LOCAL ADD CONSTRAINT FK_DIR_LOCALIDAD FOREIGN KEY (LOCALIDAD_COD) REFERENCES PEDIDOS_APP.LOCAL_LOCALIDAD(LOCALIDAD_COD)
GO

ALTER TABLE PEDIDOS_APP.ENVIO ADD CONSTRAINT FK_ENVIO_REPARTIDOR_DNI FOREIGN KEY (REPARTIDOR_DNI) REFERENCES PEDIDOS_APP.REPARTIDOR(REPARTIDOR_DNI)
GO

ALTER TABLE PEDIDOS_APP.RECLAMO ADD CONSTRAINT FK_ENVIO_PEDIDO_NRO FOREIGN KEY (PEDIDO_NRO) REFERENCES PEDIDOS_APP.PEDIDO(PEDIDO_NRO)
GO

ALTER TABLE PEDIDOS_APP.RECLAMO ADD CONSTRAINT FK_RECLAMO_DNI FOREIGN KEY (USUARIO_DNI) REFERENCES PEDIDOS_APP.USUARIO(USUARIO_DNI)
GO

ALTER TABLE PEDIDOS_APP.RECLAMO ADD CONSTRAINT FK_RECLAMO_PEDIDO_NRO FOREIGN KEY (PEDIDO_NRO) REFERENCES PEDIDOS_APP.PEDIDO(PEDIDO_NRO)
GO

ALTER TABLE PEDIDOS_APP.USUARIO_X_CUPON ADD CONSTRAINT FK_USUARIO_CUPON_NRO FOREIGN KEY (CUPON_CODIGO) REFERENCES PEDIDOS_APP.CUPON(CUPON_CODIGO)
GO

ALTER TABLE PEDIDOS_APP.USUARIO_X_CUPON ADD CONSTRAINT FK_U_X_C_USUARIO_DNI FOREIGN KEY (USUARIO_DNI) REFERENCES PEDIDOS_APP.USUARIO(USUARIO_DNI)
GO

ALTER TABLE PEDIDOS_APP.PEDIDO_X_CUPON ADD CONSTRAINT FK_P_X_C_PEDIDO_NRO FOREIGN KEY (PEDIDO_NRO) REFERENCES PEDIDOS_APP.PEDIDO(PEDIDO_NRO)
GO

ALTER TABLE PEDIDOS_APP.CUPON_RECLAMO ADD CONSTRAINT FK_CUPONR_RECLAMO_NRO FOREIGN KEY (RECLAMO_NRO) REFERENCES PEDIDOS_APP.RECLAMO(RECLAMO_NRO)
GO

ALTER TABLE PEDIDOS_APP.PRODUCTO_X_PEDIDO ADD CONSTRAINT FK_PRODUCTO_X_PEDIDO_NRO FOREIGN KEY (PEDIDO_NRO) REFERENCES PEDIDOS_APP.PEDIDO(PEDIDO_NRO)
GO

ALTER TABLE PEDIDOS_APP.PRODUCTO_LOCAL ADD CONSTRAINT FK_PRODUCTO_LOCAL_LOCAL_CODIGO FOREIGN KEY (LOCAL_NOMBRE) REFERENCES PEDIDOS_APP.LOCAL(LOCAL_NOMBRE)
GO

ALTER TABLE PEDIDOS_APP.PEDIDO ADD CONSTRAINT FK_PEDIDO_LOCAL_CODIGO FOREIGN KEY (LOCAL_NOMBRE) REFERENCES PEDIDOS_APP.LOCAL(LOCAL_NOMBRE)
GO

ALTER TABLE PEDIDOS_APP.PEDIDO ADD CONSTRAINT FK_PEDIDO_MEDIO_PAGO_NRO_TARJETA FOREIGN KEY (MEDIO_DE_PAGO_NRO_TARJETA) REFERENCES PEDIDOS_APP.MEDIO_PAGO(MEDIO_PAGO_NRO_TARJETA)
GO

ALTER TABLE PEDIDOS_APP.PEDIDO ADD CONSTRAINT FK_PEDIDO_USUARIO_DNI FOREIGN KEY (USUARIO_DNI) REFERENCES PEDIDOS_APP.USUARIO(USUARIO_DNI)
GO

ALTER TABLE PEDIDOS_APP.PEDIDO ADD CONSTRAINT FK_PEDIDO_REPARTIDOR_DNI FOREIGN KEY (REPARTIDOR_DNI) REFERENCES PEDIDOS_APP.REPARTIDOR(REPARTIDOR_DNI)
GO

ALTER TABLE PEDIDOS_APP.RECLAMO_X_OPERADOR ADD CONSTRAINT FK_RECLAMO_X_OPERADOR_RECLAMO_NRO FOREIGN KEY (RECLAMO_NRO) REFERENCES PEDIDOS_APP.RECLAMO(RECLAMO_NRO)
GO

ALTER TABLE PEDIDOS_APP.RECLAMO_X_OPERADOR ADD CONSTRAINT FK_RECLAMO_X_OPERADOR_OPERADOR_DNI FOREIGN KEY (OPERADOR_CODIGO) REFERENCES PEDIDOS_APP.OPERADOR(OPERADOR_CODIGO)
GO

ALTER TABLE PEDIDOS_APP.ENVIO_MENSAJERIA ADD CONSTRAINT FK_ENVIO_MENSAJERIA_REPARTIDOR_DNI FOREIGN KEY (REPARTIDOR_DNI) REFERENCES PEDIDOS_APP.REPARTIDOR(REPARTIDOR_DNI)
GO

ALTER TABLE PEDIDOS_APP.ENVIO_MENSAJERIA ADD CONSTRAINT FK_ENVIO_MENSAJERIA_USUARIO_DNI FOREIGN KEY (USUARIO_DNI) REFERENCES PEDIDOS_APP.USUARIO(USUARIO_DNI)
GO

ALTER TABLE PEDIDOS_APP.ENVIO_MENSAJERIA ADD CONSTRAINT FK_ENVIO_MENSAJERIA_MEDIO_PAGO_NRO_TARJETA FOREIGN KEY (MEDIO_PAGO_NRO_TARJETA) REFERENCES PEDIDOS_APP.MEDIO_PAGO(MEDIO_PAGO_NRO_TARJETA)
GO

ALTER TABLE PEDIDOS_APP.ENVIO_MENSAJERIA ADD CONSTRAINT FK_ENVIO_MENSAJERIA_PAQUETE_NRO FOREIGN KEY (PAQUETE_NRO) REFERENCES PEDIDOS_APP.PAQUETE(PAQUETE_NRO)
GO

ALTER TABLE PEDIDOS_APP.USUARIO_DIRECCION ADD CONSTRAINT FK_USUARIO_DIRECCION_DNI FOREIGN KEY (USUARIO_DNI) REFERENCES PEDIDOS_APP.USUARIO(USUARIO_DNI)
GO

ALTER TABLE PEDIDOS_APP.MEDIO_PAGO ADD CONSTRAINT FK_MEDIO_PAGO_USUARIO_DNI FOREIGN KEY (USUARIO_DNI) REFERENCES PEDIDOS_APP.USUARIO(USUARIO_DNI)
GO

ALTER TABLE PEDIDOS_APP.PAQUETE ADD CONSTRAINT FK_PAQUETE_ENVIO_MENSAJERIA_NRO FOREIGN KEY (ENVIO_MENSAJERIA_NRO) REFERENCES PEDIDOS_APP.ENVIO_MENSAJERIA(ENVIO_MENSAJERIA_NRO)
GO

ALTER TABLE PEDIDOS_APP.HORARIO_LOCAL ADD CONSTRAINT FK_HORARIO_LOCAL_LOCAL_CODIGO FOREIGN KEY (LOCAL_NOMBRE) REFERENCES PEDIDOS_APP.LOCAL(LOCAL_NOMBRE)
GO

ALTER TABLE PEDIDOS_APP.REPARTIDOR ADD CONSTRAINT FK_REPARTIDOR_TIPO_MOVILIDAD_COD FOREIGN KEY (TIPO_MOVILIDAD_COD) REFERENCES PEDIDOS_APP.TIPO_MOVILIDAD(TIPO_MOVILIDAD_COD)
GO


/* CREATE PROCEDURES */
/* FALTAN CREAR PROCEDURE'S DROPS */
CREATE PROCEDURE PEDIDOS_APP.MIGRAR_USUARIO 
AS 
BEGIN
	INSERT INTO PEDIDOS_APP.USUARIO 
		(USUARIO_DNI, USUARIO_NOMBRE, USUARIO_APELLIDO, USUARIO_FECHA_REGISTRO, USUARIO_TELEFONO, USUARIO_MAIL, USUARIO_FECHA_NAC)
	SELECT DISTINCT m.USUARIO_DNI, m.USUARIO_NOMBRE, m.USUARIO_APELLIDO, m.USUARIO_FECHA_REGISTRO, m.USUARIO_TELEFONO, m.USUARIO_MAIL, m.USUARIO_FECHA_NAC
	FROM GD_ESQUEMA.MAESTRA m
	where m.USUARIO_DNI is not null 
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_MEDIO_PAGO 
AS 
BEGIN
	INSERT INTO PEDIDOS_APP.MEDIO_PAGO
		(MEDIO_PAGO_NRO_TARJETA, MEDIO_PAGO_TIPO, MARCA_TARJETA, USUARIO_DNI)
	SELECT DISTINCT m.MEDIO_PAGO_NRO_TARJETA, m.MEDIO_PAGO_TIPO, m.MARCA_TARJETA, u.USUARIO_DNI
	FROM gd_esquema.Maestra m
	JOIN USUARIO u on u.USUARIO_DNI = m.USUARIO_DNI
	where m.MEDIO_PAGO_NRO_TARJETA is not null
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_USUARIO_DIRECCION
AS
BEGIN
	INSERT INTO PEDIDOS_APP.USUARIO_DIRECCION
		(USUARIO_DIRECCION, USUARIO_LOCALIDAD, USUARIO_PROVINCIA, USUARIO_DNI)
		SELECT DISTINCT m.DIRECCION_USUARIO_DIRECCION, m.DIRECCION_USUARIO_LOCALIDAD, m.DIRECCION_USUARIO_PROVINCIA, m.USUARIO_DNI
		FROM gd_esquema.Maestra m
		WHERE  m.DIRECCION_USUARIO_DIRECCION is not null
END 
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_PRODUCTO_LOCAL
AS 
BEGIN
	INSERT INTO PEDIDOS_APP.PRODUCTO_LOCAL
		(PRODUCTO_LOCAL_CODIGO, PRODUCTO_LOCAL_DESCRIPCION, PRODUCTO_LOCAL_PRECIO, PRODUCTO_LOCAL_NOMBRE)
		SELECT DISTINCT m.PRODUCTO_LOCAL_CODIGO, m.PRODUCTO_LOCAL_DESCRIPCION, m.PRODUCTO_LOCAL_PRECIO, m.PRODUCTO_LOCAL_NOMBRE
		FROM gd_esquema.Maestra m
		WHERE m.PRODUCTO_LOCAL_CODIGO is not null
END 
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_LOCAL
AS
BEGIN
	INSERT INTO PEDIDOS_APP.LOCAL 
		(LOCAL_NOMBRE, LOCAL_DESCRIPCION, LOCAL_TIPO,LOCAL_CATEGORIA)
		SELECT DISTINCT m.LOCAL_NOMBRE, m.LOCAL_DESCRIPCION, m.LOCAL_TIPO,
		CASE
            WHEN m.LOCAL_TIPO LIKE '%mercado%' THEN 'Mercado'
            WHEN m.LOCAL_TIPO LIKE '%restaurante%' THEN 'Restaurante'
            ELSE 'Hipercadena'
        END AS CATEGORIA
		FROM gd_esquema.Maestra m
		WHERE m.LOCAL_NOMBRE is not null
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_LOCAL_LOCALIDAD
AS
BEGIN
	INSERT INTO PEDIDOS_APP.LOCAL_LOCALIDAD
	(LOCALIDAD_NOMBRE, PROVINCIA_NOMBRE)
	SELECT DISTINCT m.LOCAL_LOCALIDAD, m.LOCAL_PROVINCIA
	FROM gd_esquema.Maestra m
	WHERE m.LOCAL_LOCALIDAD is not null
END 
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_LOCAL_PROVINCIA
AS
BEGIN
	INSERT INTO PEDIDOS_APP.LOCAL_PROVINCIA
	(PROVINCIA_NOMBRE)
	SELECT DISTINCT m.LOCAL_PROVINCIA
	FROM gd_esquema.Maestra m
	WHERE m.LOCAL_PROVINCIA is not null
END
GO


CREATE PROCEDURE PEDIDOS_APP.MIGRAR_DIRECCION_LOCAL
AS
BEGIN
	INSERT INTO PEDIDOS_APP.DIRECCION_LOCAL
	(LOCAL_DIRECCION, LOCAL_NOMBRE, LOCALIDAD_COD)
	SELECT DISTINCT m.LOCAL_DIRECCION, m.LOCAL_NOMBRE, l.LOCALIDAD_COD
	FROM gd_esquema.Maestra m
	JOIN PEDIDOS_APP.LOCAL_LOCALIDAD l on l.LOCALIDAD_NOMBRE = m.LOCAL_LOCALIDAD 
	WHERE m.LOCAL_DIRECCION is not null
END
GO
	
CREATE PROCEDURE PEDIDOS_APP.MIGRAR_PEDIDO
AS
BEGIN
	INSERT INTO PEDIDOS_APP.PEDIDO
		(PEDIDO_NRO, PEDIDO_TOTAL_PRODUCTOS, PEDIDO_TARIFA_SERVICIO, 
		PEDIDO_TOTAL_CUPONES, PEDIDO_TOTAL_SERVICIO, PEDIDO_OBSERV, PEDIDO_FECHA, PEDIDO_TIEMPO_ESTIMADO_ENTREGA, PEDIDO_CALIFICACION, MEDIO_DE_PAGO_NRO_TARJETA, LOCAL_NOMBRE,
		USUARIO_DNI, PEDIDO_ESTADO, REPARTIDOR_DNI)
		SELECT DISTINCT m.PEDIDO_NRO, m.PEDIDO_TOTAL_PRODUCTOS, m.PEDIDO_TARIFA_SERVICIO,m.PEDIDO_TOTAL_CUPONES, m.PEDIDO_TOTAL_SERVICIO,
						m.PEDIDO_OBSERV, m.PEDIDO_FECHA,m.PEDIDO_TIEMPO_ESTIMADO_ENTREGA, m.PEDIDO_CALIFICACION, mp.MEDIO_PAGO_NRO_TARJETA, l.LOCAL_NOMBRE, u.USUARIO_DNI, m.PEDIDO_ESTADO , m.REPARTIDOR_DNI
		FROM gd_esquema.Maestra m
		JOIN USUARIO u on u.USUARIO_DNI = m.USUARIO_DNI
		JOIN MEDIO_PAGO mp on mp.USUARIO_DNI = u.USUARIO_DNI
		JOIN LOCAL l on l.LOCAL_NOMBRE = m.LOCAL_NOMBRE
		where m.PEDIDO_NRO is not null
END 
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_ENVIO
AS
BEGIN
	INSERT INTO PEDIDOS_APP.ENVIO
		(ENVIO_DIRECCION, ENVIO_PRECIO, ENVIO_PROPINA, ENVIO_FECHA_ENTREGA, PEDIDO_NRO, REPARTIDOR_DNI)
		SELECT DISTINCT ud.USUARIO_DIRECCION, m.PEDIDO_PRECIO_ENVIO, m.PEDIDO_PROPINA, m.PEDIDO_FECHA_ENTREGA,p.PEDIDO_NRO, r.REPARTIDOR_DNI
		FROM gd_esquema.Maestra m
		JOIN USUARIO_DIRECCION ud ON ud.USUARIO_DNI = m.USUARIO_DNI
		JOIN PEDIDO p ON p.PEDIDO_NRO = m.PEDIDO_NRO 
		JOIN REPARTIDOR r ON r.REPARTIDOR_DNI = m.REPARTIDOR_DNI
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_REPARTIDOR
AS
BEGIN
	INSERT INTO PEDIDOS_APP.REPARTIDOR
		(REPARTIDOR_DNI, REPARTIDOR_NOMBRE, REPARTIDOR_APELLIDO, REPARTIDOR_FECHA_NAC, REPARTIDOR_TELEFONO, REPARTIDOR_MAIL, TIPO_MOVILIDAD_COD)
		SELECT DISTINCT m.REPARTIDOR_DNI, m.REPARTIDOR_NOMBRE, m.REPARTIDOR_APELLIDO, m.REPARTIDOR_FECHA_NAC, m.REPARTIDOR_TELEFONO, m.REPARTIDOR_EMAIL, t.TIPO_MOVILIDAD_COD
		FROM gd_esquema.Maestra m
		JOIN TIPO_MOVILIDAD t on t.TIPO_MOVILIDAD_VEHICULO = m.REPARTIDOR_TIPO_MOVILIDAD
		Where m.REPARTIDOR_DNI is not null 
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_TIPO_MOVILIDAD
AS 
BEGIN
	INSERT INTO PEDIDOS_APP.TIPO_MOVILIDAD (TIPO_MOVILIDAD_VEHICULO)
	SELECT DISTINCT m.REPARTIDOR_TIPO_MOVILIDAD
	FROM gd_esquema.Maestra m
	where m.REPARTIDOR_TIPO_MOVILIDAD is not null
END 
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_PAQUETE
AS 
BEGIN
	INSERT INTO PEDIDOS_APP.PAQUETE
		(PAQUETE_TIPO, PAQUETE_ALTO_MAX, PAQUETE_ANCHO_MAX, PAQUETE_LARGO_MAX, PAQUETE_PESO_MAX, PAQUETE_TIPO_PRECIO)
		SELECT DISTINCT m.PAQUETE_TIPO, m.PAQUETE_ALTO_MAX, m.PAQUETE_ANCHO_MAX, m.PAQUETE_LARGO_MAX, m.PAQUETE_PESO_MAX, m.PAQUETE_TIPO_PRECIO
		FROM gd_esquema.Maestra m
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_OPERADOR
AS
BEGIN
	INSERT INTO PEDIDOS_APP.OPERADOR
		(OPERADOR_DNI, OPERADOR_NOMBRE, OPERADOR_APELLIDO, OPERADOR_FECHA_NAC, OPERADOR_MAIL, OPERADOR_TELEFONO)
		SELECT DISTINCT m.OPERADOR_RECLAMO_DNI, m.OPERADOR_RECLAMO_NOMBRE,m.OPERADOR_RECLAMO_APELLIDO,m.OPERADOR_RECLAMO_FECHA_NAC, m.OPERADOR_RECLAMO_MAIL, m.OPERADOR_RECLAMO_TELEFONO
		FROM gd_esquema.Maestra m
		WHERE m.OPERADOR_RECLAMO_DNI is not null
END
GO	

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_CUPON
AS
BEGIN 
	INSERT INTO PEDIDOS_APP.CUPON
		(CUPON_NRO, CUPON_MONTO, CUPON_FECHA_ALTA, CUPON_FECHA_VENCIMIENTO, CUPON_TIPO)
		SELECT m.CUPON_NRO, m.CUPON_MONTO, m.CUPON_FECHA_ALTA, m.CUPON_FECHA_VENCIMIENTO, m.CUPON_TIPO
		FROM gd_esquema.Maestra m
		WHERE m.CUPON_NRO is not null
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_CUPON_RECLAMO
AS
BEGIN
	INSERT INTO PEDIDOS_APP.CUPON_RECLAMO
		(CUPON_RECLAMO_NRO, CUPON_RECLAMO_FECHA_ALTA, CUPON_RECLAMO_FECHA_VENCIMIENTO, CUPON_RECLAMO_MONTO, CUPON_RECLAMO_TIPO, RECLAMO_NRO)
		SELECT DISTINCT m.CUPON_RECLAMO_NRO, m.CUPON_RECLAMO_FECHA_ALTA, m.CUPON_RECLAMO_FECHA_VENCIMIENTO, m.CUPON_RECLAMO_MONTO, m.CUPON_RECLAMO_TIPO, r.RECLAMO_NRO
		FROM gd_esquema.Maestra m
		JOIN RECLAMO r on r.RECLAMO_NRO = m.RECLAMO_NRO
		WHERE m.CUPON_RECLAMO_NRO is not null
END 
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_RECLAMO
AS
BEGIN
	INSERT INTO PEDIDOS_APP.RECLAMO
		(RECLAMO_NRO, RECLAMO_CALIFICACION, RECLAMO_DESCRIPCION, RECLAMO_ESTADO,RECLAMO_FECHA_SOLUCION, RECLAMO_FECHA, RECLAMO_SOLUCION, RECLAMO_TIPO, PEDIDO_NRO, USUARIO_DNI)
		SELECT DISTINCT m.RECLAMO_NRO, m.RECLAMO_CALIFICACION, m.RECLAMO_DESCRIPCION, m.RECLAMO_ESTADO,m.RECLAMO_FECHA_SOLUCION, m.RECLAMO_FECHA, m.RECLAMO_SOLUCION, m.RECLAMO_TIPO, p.PEDIDO_NRO, u.USUARIO_DNI
		FROM gd_esquema.Maestra m
		JOIN PEDIDO p on p.PEDIDO_NRO = m.PEDIDO_NRO
		JOIN USUARIO u on u.USUARIO_DNI = m.USUARIO_DNI
		WHERE m.RECLAMO_NRO is not null
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_ENVIO_MENSAJERIA
AS
BEGIN
	INSERT INTO PEDIDOS_APP.ENVIO_MENSAJERIA
		(ENVIO_MENSAJERIA_NRO, ENVIO_MENSAJERIA_CALIFICACION, ENVIO_MENSAJERIA_DIR_DEST, ENVIO_MENSAJERIA_DIR_ORIG, ENVIO_MENSAJERIA_ENTREGA, ENVIO_MENSAJERIA_FECHA, ENVIO_MENSAJERIA_KM,
		ENVIO_MENSAJERIA_LOCALIDAD, ENVIO_MENSAJERIA_OBSERV, ENVIO_MENSAJERIA_PRECIO_ENVIO, ENVIO_MENSAJERIA_PRECIO_SEGURO, ENVIO_MENSAJERIA_PROPINA, ENVIO_MENSAJERIA_PROVINCIA,
		ENVIO_MENSAJERIA_TIEMPO_ESTIMADO, ENVIO_MENSAJERIA_TOTAL, ENVIO_MENSAJERIA_VALOR_ASEGURADO, MEDIO_PAGO_NRO_TARJETA, PAQUETE_NRO, USUARIO_DNI, REPARTIDOR_DNI, ENVIO_MENSAJERIA_ESTADO)
		SELECT DISTINCT m.ENVIO_MENSAJERIA_NRO, m.ENVIO_MENSAJERIA_CALIFICACION, m.ENVIO_MENSAJERIA_DIR_DEST, m.ENVIO_MENSAJERIA_DIR_ORIG, m.ENVIO_MENSAJERIA_FECHA_ENTREGA, m.ENVIO_MENSAJERIA_FECHA,
						m.ENVIO_MENSAJERIA_KM, m.ENVIO_MENSAJERIA_LOCALIDAD, m.ENVIO_MENSAJERIA_OBSERV, m.ENVIO_MENSAJERIA_PRECIO_ENVIO, m.ENVIO_MENSAJERIA_PRECIO_SEGURO, m.ENVIO_MENSAJERIA_PROPINA,
						m.ENVIO_MENSAJERIA_PROVINCIA, m.ENVIO_MENSAJERIA_TIEMPO_ESTIMADO, m.ENVIO_MENSAJERIA_TOTAL, m.ENVIO_MENSAJERIA_VALOR_ASEGURADO, mp.MEDIO_PAGO_NRO_TARJETA, p.PAQUETE_NRO,
						u.USUARIO_DNI, r.REPARTIDOR_DNI,m.ENVIO_MENSAJERIA_ESTADO
		FROM gd_esquema.Maestra m 
		JOIN USUARIO u on u.USUARIO_DNI = m.USUARIO_DNI
		JOIN MEDIO_PAGO mp on mp.USUARIO_DNI = u.USUARIO_DNI
		JOIN REPARTIDOR r on r.REPARTIDOR_DNI = m.REPARTIDOR_DNI
		JOIN PAQUETE p on p.PAQUETE_TIPO = m.PAQUETE_TIPO

END 
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_HORARIO_LOCAL
AS
BEGIN
	INSERT INTO PEDIDOS_APP.HORARIO_LOCAL
		(HORARIO_LOCAL_DIA, HORARIO_LOCAL_HORA_APERTURA, HORARIO_LOCAL_HORA_CIERRE, LOCAL_NOMBRE)
		SELECT DISTINCT m.HORARIO_LOCAL_DIA, m.HORARIO_LOCAL_HORA_APERTURA, m.HORARIO_LOCAL_HORA_CIERRE, l.LOCAL_NOMBRE
		FROM gd_esquema.Maestra m
		JOIN LOCAL l on l.LOCAL_NOMBRE = m.LOCAL_NOMBRE
		WHERE m.HORARIO_LOCAL_DIA is not null
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_USUARIO_X_CUPON
AS
BEGIN
	INSERT INTO PEDIDOS_APP.USUARIO_X_CUPON
		(USUARIO_DNI, CUPON_CODIGO)
		SELECT DISTINCT u.USUARIO_DNI, c.CUPON_CODIGO
		FROM gd_esquema.Maestra m
		JOIN USUARIO u on u.USUARIO_DNI = m.USUARIO_DNI
		JOIN CUPON c on c.CUPON_NRO = m.CUPON_NRO
		WHERE m.USUARIO_DNI IS NOT NULL
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_PEDIDO_X_CUPON
AS 
BEGIN
	INSERT INTO PEDIDOS_APP.PEDIDO_X_CUPON
		(PEDIDO_NRO, CUPON_CODIGO)
		SELECT p.PEDIDO_NRO, c.CUPON_CODIGO
		FROM gd_esquema.Maestra m
		JOIN PEDIDO p on p.PEDIDO_NRO = m.PEDIDO_NRO
		JOIN CUPON c on c.CUPON_NRO = m.CUPON_NRO
		WHERE m.PEDIDO_NRO is not null
END
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_PRODUCTO_X_PEDIDO
AS
BEGIN
	INSERT INTO PEDIDOS_APP.PRODUCTO_X_PEDIDO
	(PEDIDO_NRO, PRODUCTO_CANTIDAD, PRODUCTO_LOCAL_CODIGO, PRODUCTO_LOCAL_PRECIO)
	SELECT p.PEDIDO_NRO, m.PRODUCTO_CANTIDAD, pl.PRODUCTO_LOCAL_CODIGO, pl.PRODUCTO_LOCAL_PRECIO
	FROM gd_esquema.Maestra m
	JOIN PEDIDO p on p.PEDIDO_NRO = m.PEDIDO_NRO
	JOIN PRODUCTO_LOCAL pl on pl.PRODUCTO_LOCAL_CODIGO = m.PRODUCTO_LOCAL_CODIGO
	where m.PEDIDO_NRO is not null
END 
GO

CREATE PROCEDURE PEDIDOS_APP.MIGRAR_RECLAMO_X_OPERADOR
AS
BEGIN
	INSERT INTO PEDIDOS_APP.RECLAMO_X_OPERADOR
	(RECLAMO_NRO, OPERADOR_CODIGO)
	SELECT r.RECLAMO_NRO, o.OPERADOR_CODIGO
	FROM gd_esquema.Maestra m
	JOIN RECLAMO r on r.RECLAMO_NRO = m.RECLAMO_NRO
	JOIN OPERADOR o on  o.OPERADOR_DNI = m.OPERADOR_RECLAMO_DNI
END 
GO


-- Ejecutando en orden los procedures.
EXEC PEDIDOS_APP.MIGRAR_CUPON
EXEC PEDIDOS_APP.MIGRAR_PAQUETE
EXEC PEDIDOS_APP.MIGRAR_OPERADOR
EXEC PEDIDOS_APP.MIGRAR_PRODUCTO_LOCAL

EXEC PEDIDOS_APP.MIGRAR_TIPO_MOVILIDAD
EXEC PEDIDOS_APP.MIGRAR_REPARTIDOR
EXEC PEDIDOS_APP.MIGRAR_LOCAL_PROVINCIA
EXEC PEDIDOS_APP.MIGRAR_LOCAL_LOCALIDAD
EXEC PEDIDOS_APP.MIGRAR_LOCAL
EXEC PEDIDOS_APP.MIGRAR_DIRECCION_LOCAL
EXEC PEDIDOS_APP.MIGRAR_HORARIO_LOCAL

EXEC PEDIDOS_APP.MIGRAR_USUARIO
EXEC PEDIDOS_APP.MIGRAR_MEDIO_PAGO
EXEC PEDIDOS_APP.MIGRAR_USUARIO_DIRECCION

EXEC PEDIDOS_APP.MIGRAR_ENVIO_MENSAJERIA

EXEC PEDIDOS_APP.MIGRAR_PEDIDO
EXEC PEDIDOS_APP.MIGRAR_ENVIO
EXEC PEDIDOS_APP.MIGRAR_RECLAMO
EXEC PEDIDOS_APP.MIGRAR_CUPON_RECLAMO

EXEC PEDIDOS_APP.MIGRAR_RECLAMO_X_OPERADOR
EXEC PEDIDOS_APP.MIGRAR_PEDIDO_X_CUPON
EXEC PEDIDOS_APP.MIGRAR_USUARIO_X_CUPON
EXEC PEDIDOS_APP.MIGRAR_PRODUCTO_X_PEDIDO

SELECT *
 FROM PEDIDOS_APP.LOCAL



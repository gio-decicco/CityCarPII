USE [master]
GO


/****** Object:  Database [automotriz]    Script Date: 5/11/2022 16:18:01 ******/
CREATE DATABASE [automotriz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'automotriz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\automotriz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'automotriz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\automotriz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [automotriz] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [automotriz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [automotriz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [automotriz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [automotriz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [automotriz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [automotriz] SET ARITHABORT OFF 
GO
ALTER DATABASE [automotriz] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [automotriz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [automotriz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [automotriz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [automotriz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [automotriz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [automotriz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [automotriz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [automotriz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [automotriz] SET  ENABLE_BROKER 
GO
ALTER DATABASE [automotriz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [automotriz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [automotriz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [automotriz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [automotriz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [automotriz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [automotriz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [automotriz] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [automotriz] SET  MULTI_USER 
GO
ALTER DATABASE [automotriz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [automotriz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [automotriz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [automotriz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [automotriz] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [automotriz] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [automotriz] SET QUERY_STORE = OFF
GO
USE [automotriz]
GO
/****** Object:  UserDefinedFunction [dbo].[f_fecha_mes]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[f_fecha_mes]
(@valor int)
returns varchar(100)
as
begin
declare @fecha varchar (100)
set @fecha=
	case @valor
	when 1 then 'Enero'
	when 2 then 'Febrero'
	when 3 then 'Marzo'
	when 4 then 'Abril'
	when 5 then 'Mayo'
	when 6 then 'Junio'
	when 7 then 'Julio'
	when 8 then 'Agosto'
	when 9 then 'Septiembre'
	when 10 then 'Octubre'
	when 11 then 'Noviembre'
	when 12 then 'Diciembre'
	end
	return @fecha
	end
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nomCliente] [varchar](50) NULL,
	[apeCliente] [varchar](50) NULL,
	[calle] [varchar](50) NULL,
	[altura] [int] NULL,
	[idBarrio] [int] NULL,
 CONSTRAINT [pk_cliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[nroFactura] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NULL,
	[fecha] [datetime] NULL,
	[descuento] [int] NULL,
	[idFormaPago] [int] NULL,
	[activo] [bit] NULL,
 CONSTRAINT [pk_facturas] PRIMARY KEY CLUSTERED 
(
	[nroFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles_Factura]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles_Factura](
	[idDetalleFactura] [int] NOT NULL,
	[nroFactura] [int] NOT NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NULL,
	[pre_unitario] [money] NULL,
 CONSTRAINT [pk_detalleFactura] PRIMARY KEY CLUSTERED 
(
	[idDetalleFactura] ASC,
	[nroFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vis_cantidad_x_cliente]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vis_cantidad_x_cliente]
as
select t.descripcion 'Tipo Cliente', c.apeCliente + ' ' + c.nomCliente 'Cliente', 
AVG(cantidad) 'Porcentaje'
from Detalles_Factura d 
join Facturas f on f.nroFactura = d.nroFactura
join Clientes c on c.idCliente = f.idCliente
join Tipos_Clientes t on t.idTipoCliente = c.idTipoCliente
group by t.descripcion, c.apeCliente + ' ' + c.nomCliente 
GO
/****** Object:  View [dbo].[vis_cantidadytotal_x_cliente]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vis_cantidadytotal_x_cliente]
as
select t.descripcion 'Tipo_Cliente', c.apeCliente + ' ' + c.nomCliente 'Cliente',
SUM(cantidad) 'Cantidad_total', SUM(cantidad*pre_unitario) 'Importe_total'
from Detalles_Factura d join Facturas f on f.nroFactura = d.nroFactura 
						join Clientes c on c.idCliente = f.idCliente 
						join Tipos_Clientes t on t.idTipoCliente =c.idTipoCliente 
group by t.descripcion, c.apeCliente + ' ' + c.nomCliente
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrios](
	[idBarrio] [int] IDENTITY(1,1) NOT NULL,
	[barrio] [varchar](50) NULL,
 CONSTRAINT [pk_barrio] PRIMARY KEY CLUSTERED 
(
	[idBarrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formas_Pago]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formas_Pago](
	[idFormaPago] [int] IDENTITY(1,1) NOT NULL,
	[formaPago] [varchar](50) NULL,
 CONSTRAINT [pk_forma_pago] PRIMARY KEY CLUSTERED 
(
	[idFormaPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vis_cliente]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view
[dbo].[vis_cliente] as
select distinct nomCliente + ' '+ apeCliente as Cliente, calle + ' '+str(altura) as
Direccion, b.barrio as Barrio, fecha, formaPago
from Clientes c join Barrios b on c.idBarrio= b.idBarrio

join Facturas f on f.idCliente = c.idCliente
join Formas_pago fp on fp.idFormaPago =
f.idFormaPago group by nomCliente + ' '+ apeCliente, calle + ' '+str(altura),
b.barrio, fecha, formaPago
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[precio] [money] NULL,
 CONSTRAINT [pk_productos] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [fk_barrio_cliente] FOREIGN KEY([idBarrio])
REFERENCES [dbo].[Barrios] ([idBarrio])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [fk_barrio_cliente]
GO
ALTER TABLE [dbo].[Detalles_Factura]  WITH CHECK ADD  CONSTRAINT [fk_factura_detalle] FOREIGN KEY([nroFactura])
REFERENCES [dbo].[Facturas] ([nroFactura])
GO
ALTER TABLE [dbo].[Detalles_Factura] CHECK CONSTRAINT [fk_factura_detalle]
GO
ALTER TABLE [dbo].[Detalles_Factura]  WITH CHECK ADD  CONSTRAINT [fk_producto_detalle] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[Detalles_Factura] CHECK CONSTRAINT [fk_producto_detalle]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [fk_cliente_factura] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [fk_cliente_factura]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [fk_forma_pago_Factura] FOREIGN KEY([idFormaPago])
REFERENCES [dbo].[Formas_Pago] ([idFormaPago])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [fk_forma_pago_Factura]
GO
/****** Object:  StoredProcedure [dbo].[precio_productos]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
create procedure
[dbo].[precio_productos] @precio1
money,
@precio2
money as
select idProducto, descripcion,
precio from Productos
where precio between @precio1 and @precio2
GO
/****** Object:  StoredProcedure [dbo].[spActualizarProducto]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spActualizarProducto]
@idProducto int,
@precio money,
@descripcion varchar(50)
as
update productos
set precio = @precio,
descripcion = @descripcion
where idProducto = @idProducto
GO
/****** Object:  StoredProcedure [dbo].[spBorrarCliente]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spBorrarCliente]
@idCliente int
as
delete Clientes where idCliente = @idCliente
GO
/****** Object:  StoredProcedure [dbo].[spBorrarFactura]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spBorrarFactura]
@id int
as
update Facturas
set activo = 0
where nroFactura = @id
GO
/****** Object:  StoredProcedure [dbo].[spBorrarProducto]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spBorrarProducto]
@id int
as
delete Productos
where idProducto=@id
GO
/****** Object:  StoredProcedure [dbo].[spConsultarBarrios]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spConsultarBarrios]
as
select * from Barrios
GO
/****** Object:  StoredProcedure [dbo].[spConsultarClientes]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spConsultarClientes]
as
select * from clientes
GO
/****** Object:  StoredProcedure [dbo].[spConsultarClientesConId]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spConsultarClientesConId]
@id int
as
select * from Clientes where idCliente = @id
GO
/****** Object:  StoredProcedure [dbo].[spConsultarConIndice]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spConsultarConIndice]
@idProducto int
as
select * from Productos where idProducto = @idProducto
GO
/****** Object:  StoredProcedure [dbo].[spConsultarDetalle]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spConsultarDetalle]
@idFactura int
as
select * from Detalles_Factura
where nroFactura = @idFactura
GO
/****** Object:  StoredProcedure [dbo].[spConsultarFacturas]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spConsultarFacturas]
@idCliente int
as
select * from Facturas
where idCliente = @idCliente and activo = 1
GO
/****** Object:  StoredProcedure [dbo].[spConsultarFormasPago]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spConsultarFormasPago]
as
select * from Formas_pago
GO
/****** Object:  StoredProcedure [dbo].[spConsultarProductos]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spConsultarProductos]
as
select * from productos
GO
/****** Object:  StoredProcedure [dbo].[SpInsertarCliente]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SpInsertarCliente]
@nomCliente varchar (50),
@apeCliente varchar (50),
@calle varchar(50),
@altura int,
@idBarrio int
as
insert into Clientes values (@nomCliente,@apeCliente,@calle,@altura,@idBarrio)
GO
/****** Object:  StoredProcedure [dbo].[spInsertarFacturaDetalle]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spInsertarFacturaDetalle]
@nroFactura int,
@idDetalleFactura int,
@idProducto int,
@cantidad int,
@pre_unitario money
as
insert into Detalles_Factura values (@idDetalleFactura, @nroFactura, @idProducto, @cantidad, @pre_unitario)
GO
/****** Object:  StoredProcedure [dbo].[spInsertarFacturaMaestro]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInsertarFacturaMaestro]
@idCliente int,
@fecha datetime,
@descuento int,
@idFormaPago int,
@id int output
as
insert into Facturas values (@idCliente, @fecha, @descuento, @idFormaPago, 1)
set @id = SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[spInsertarProducto]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInsertarProducto]
@descripcion varchar (50),
@precio money
as
insert into Productos values (@descripcion,@precio)
GO
/****** Object:  StoredProcedure [dbo].[spProximoIdFactura]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spProximoIdFactura]
@id int output
as
set @id = (select max(nroFactura)+1 from Facturas)
GO
/****** Object:  StoredProcedure [dbo].[spReadFormasPagoConId]    Script Date: 5/11/2022 16:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spReadFormasPagoConId]
@id int
as
select * from Formas_Pago where idFormaPago = @id
GO
USE [master]
GO
ALTER DATABASE [automotriz] SET  READ_WRITE 
GO

use automotriz
go


create view vis_cliente_barrio
as
select apeCliente + ', ' + nomCliente as Cliente, calle + ' ' + STR(altura) + ' ' + barrio as Direccion
from Clientes c join Barrios b on b.idBarrio = c.idbarrio


create view vis_facturas_total
as
select idCliente, fecha Fecha, SUM(pre_unitario) Total
from Detalles_Factura d join Facturas f on f.nroFactura = d.nroFactura
group by idCliente, fecha

create procedure sp_productos
@precio1 money, 
@precio2 money
as
begin
select descripcion Productos, precio Precio
from Productos 
where precio between @precio1 and @precio2
end



select barrio
from barrios

create view vis_cliente_barrio
as
select apeCliente + ', ' + nomCliente as Cliente, calle + ' ' + STR(altura) + ' ' + barrio as Direccion
from Clientes c join Barrios b on b.idBarrio = c.idbarrio


create view vis_facturas_total
as
select idCliente, fecha Fecha, SUM(pre_unitario) Total
from Detalles_Factura d join Facturas f on f.nroFactura = d.nroFactura
group by idCliente, fecha


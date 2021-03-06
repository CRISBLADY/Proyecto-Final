
/*Nombre: Cristian Vilchez         Matricula: 16-SIIT-1-051        Seccion: 0541*/
/*Nombre: Tommy Perez              Matricula: 16-SIIT-1-010        Seccion: 0541*/
/*Nombre: Hansel Isabel            Matricula: 16-SIIT-1-064        Seccion: 0541*/


USE [master]
GO
/****** Object:  Database [ProyectoFinal3]    Script Date: 06/04/2018 3:25:00 ******/
CREATE DATABASE [ProyectoFinal3]

USE [ProyectoFinal3]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 06/04/2018 3:25:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacenes](
	[Codigo] [int] NOT NULL,
	[Lugar] [nvarchar](100) NULL,
	[Capacidad] [int] NULL,
 CONSTRAINT [PK_Almacenes] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cajas]    Script Date: 06/04/2018 3:25:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cajas](
	[NumReferencia] [char](5) NOT NULL,
	[Contenido] [nvarchar](100) NULL,
	[Valor] [int] NULL,
	[Almacen] [int] NULL,
 CONSTRAINT [PK_Cajas] PRIMARY KEY CLUSTERED 
(
	[NumReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (1, N'Santo Domingo', 53551313)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (2, N'Santiago', 86483513)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (3, N'Barahona', 64831551)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (4, N'Neyba', 48335121)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (5, N'Higuey', 68483513)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (6, N'San Pedro', 46864353)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (7, N'San Juan', 68453131)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (8, N'Jarabacoa', 13513131)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (9, N'Pedernales', 68468465)
INSERT [dbo].[Almacenes] ([Codigo], [Lugar], [Capacidad]) VALUES (10, N'Santo Domingo Este', 53153153)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'1    ', N'Arroz', 900000000, 1)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'10   ', N'Salsa', 100000000, 10)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'2    ', N'Caña', 400000000, 2)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'3    ', N'Platanos', 500000000, 3)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'4    ', N'Habichuelas', 700000000, 4)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'5    ', N'Yuka', 100000000, 5)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'6    ', N'Maiz', 300000000, 6)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'7    ', N'Azucar', 800000000, 7)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'8    ', N'Sal', 600000000, 8)
INSERT [dbo].[Cajas] ([NumReferencia], [Contenido], [Valor], [Almacen]) VALUES (N'9    ', N'Espaguetis', 300000000, 9)
ALTER TABLE [dbo].[Cajas]  WITH CHECK ADD  CONSTRAINT [FK_Cajas_Almacenes] FOREIGN KEY([Almacen])
REFERENCES [dbo].[Almacenes] ([Codigo])
GO
ALTER TABLE [dbo].[Cajas] CHECK CONSTRAINT [FK_Cajas_Almacenes]
GO
USE [master]
GO
ALTER DATABASE [ProyectoFinal3] SET  READ_WRITE 
GO

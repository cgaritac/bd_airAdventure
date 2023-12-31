USE [Air_Adventure]
GO
/****** Object:  Table [dbo].[Aviones]    Script Date: 11/6/2018 23:18:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aviones](
	[Id_Avion] [int] NOT NULL,
	[Id_Base] [int] NULL,
	[Tipo] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Avion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bases]    Script Date: 11/6/2018 23:18:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bases](
	[Id_Base] [int] NOT NULL,
	[Pais] [varchar](40) NULL,
	[Id_Aeropuerto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Base] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pilotos]    Script Date: 11/6/2018 23:18:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pilotos](
	[Id_Piloto] [int] NOT NULL,
	[Nombre] [varchar](40) NULL,
	[Horas_Vuelo] [int] NULL,
	[Id_Base] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Piloto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tripulacion]    Script Date: 11/6/2018 23:18:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tripulacion](
	[Id_Tripulacion] [int] NOT NULL,
	[Nombre] [varchar](40) NULL,
	[Id_Base] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Tripulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

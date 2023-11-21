Create database Cine
USE Cine
GO
/****** Object:  Table [dbo].[Actores]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actores](
	[cod_actor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[nombre_artistico] [varchar](100) NULL,
	[fecha_nac] [date] NULL,
	[id_pais] [int] NULL,
 CONSTRAINT [pk_Actores] PRIMARY KEY CLUSTERED 
(
	[cod_actor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_barrios] [int] IDENTITY(1,1) NOT NULL,
	[barrio] [varchar](100) NULL,
	[id_ciudad] [int] NULL,
 CONSTRAINT [pk_Barrios] PRIMARY KEY CLUSTERED 
(
	[id_barrios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BUTACAS]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUTACAS](
	[id_butaca] [int] IDENTITY(1,1) NOT NULL,
	[fila] [char](1) NULL,
	[nro_sala] [int] NULL,
	[nro_butaca] [int] NULL,
	[id_tipo_butaca] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_butaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[id_ciudad] [int] IDENTITY(1,1) NOT NULL,
	[Ciudad] [varchar](100) NULL,
	[id_provincia] [int] NULL,
 CONSTRAINT [pk_Ciudades] PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clasificaciones]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clasificaciones](
	[id_Clasificacion] [int] IDENTITY(1,1) NOT NULL,
	[Clasificacion] [varchar](100) NULL,
 CONSTRAINT [pk_Clasificaciones] PRIMARY KEY CLUSTERED 
(
	[id_Clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NULL,
	[activo] [varchar](1) NULL,
 CONSTRAINT [pk_Clientes] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPROBANTES]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPROBANTES](
	[nro_comprobante] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[id_descuento] [int] NULL,
	[id_forma_pago] [int] NULL,
	[id_tipo_vta] [int] NULL,
	[id_reserva] [int] NULL,
	[id_vendedor] [int] NULL,
 CONSTRAINT [PK_COMPROBANTE] PRIMARY KEY CLUSTERED 
(
	[nro_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[id_contacto] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NULL,
	[contacto] [varchar](100) NULL,
	[id_tipo_contacto] [int] NULL,
 CONSTRAINT [pk_Contactos] PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Descuentos]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descuentos](
	[id_descuento] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[porcentaje] [int] NULL,
 CONSTRAINT [Pk_descuentos] PRIMARY KEY CLUSTERED 
(
	[id_descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_COMPROBANTES]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_COMPROBANTES](
	[id_detalle_comprobante] [int] IDENTITY(1,1) NOT NULL,
	[id_comprobante] [int] NULL,
	[precio] [int] NULL,
	[id_funcionxbutaca] [int] NULL,
 CONSTRAINT [PK_DET_com] PRIMARY KEY CLUSTERED 
(
	[id_detalle_comprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLES_RESERVAS_New]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLES_RESERVAS_New](
	[id_detalle_reserva] [int] NOT NULL,
	[id_reserva] [int] NOT NULL,
	[id_funcionxbutaca] [int] NULL,
 CONSTRAINT [PK_DET_RESESERVA] PRIMARY KEY CLUSTERED 
(
	[id_detalle_reserva] ASC,
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directores]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directores](
	[id_director] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[nombre_artistico] [varchar](50) NULL,
	[fecha_nac] [date] NULL,
	[id_pais] [int] NULL,
 CONSTRAINT [PK_Directores] PRIMARY KEY CLUSTERED 
(
	[id_director] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Elencos]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Elencos](
	[id_elenco] [int] IDENTITY(1,1) NOT NULL,
	[id_pelicula] [int] NULL,
	[id_actor] [int] NULL,
 CONSTRAINT [pk_Elencos] PRIMARY KEY CLUSTERED 
(
	[id_elenco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados_Butacas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados_Butacas](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](50) NULL,
 CONSTRAINT [PK_estado_butacas] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Formas_Pagos]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Formas_Pagos](
	[Id_FPago] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Formas_Pagos] PRIMARY KEY CLUSTERED 
(
	[Id_FPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funciones]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funciones](
	[id_funcion] [int] IDENTITY(1,1) NOT NULL,
	[Horario] [datetime] NULL,
	[estreno] [bit] NULL,
	[id_temporada] [int] NULL,
	[id_pelicula] [int] NULL,
	[Precio] [money] NULL,
	[feriado] [bit] NULL,
 CONSTRAINT [pk_Funcion] PRIMARY KEY CLUSTERED 
(
	[id_funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUNCIONXBUTACA]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCIONXBUTACA](
	[id_funcionxbutaca] [int] IDENTITY(1,1) NOT NULL,
	[id_funcion] [int] NULL,
	[id_butaca] [int] NULL,
	[id_estado] [int] NULL,
 CONSTRAINT [PK_FUNCIONXBUTACA] PRIMARY KEY CLUSTERED 
(
	[id_funcionxbutaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos_de_Peliculas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos_de_Peliculas](
	[id_genero] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Generos_Peliculas] PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Idiomas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Idiomas](
	[id_tipo_Idioma] [int] IDENTITY(1,1) NOT NULL,
	[Idioma] [varchar](100) NULL,
 CONSTRAINT [pk_Idiomas] PRIMARY KEY CLUSTERED 
(
	[id_tipo_Idioma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Metodo_Ventas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metodo_Ventas](
	[id_Met_Venta] [int] IDENTITY(1,1) NOT NULL,
	[Metodo_Venta] [varchar](50) NULL,
 CONSTRAINT [PK_Metodo_Ventas] PRIMARY KEY CLUSTERED 
(
	[id_Met_Venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[id_pais] [int] IDENTITY(1,1) NOT NULL,
	[pais] [varchar](100) NULL,
 CONSTRAINT [pk_Paises] PRIMARY KEY CLUSTERED 
(
	[id_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[id_pelicula] [int] NOT NULL,
	[nom_pelicula] [varchar](100) NULL,
	[sinopsis] [varchar](400) NULL,
	[anio] [int] NULL,
	[id_pais] [int] NULL,
	[duracion] [int] NULL,
	[id_idioma] [int] NULL,
	[id_genero] [int] NULL,
	[id_Clasificacion] [int] NULL,
 CONSTRAINT [pk_Peliculas] PRIMARY KEY CLUSTERED 
(
	[id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PeliculasxDirectores]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PeliculasxDirectores](
	[id_PeliculaxDirector] [int] IDENTITY(1,1) NOT NULL,
	[id_pelicula] [int] NULL,
	[id_director] [int] NULL,
 CONSTRAINT [pk_PxD] PRIMARY KEY CLUSTERED 
(
	[id_PeliculaxDirector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[id_persona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[apellido] [varchar](100) NULL,
	[sexo] [char](1) NULL,
	[nro_doc] [varchar](20) NULL,
	[fecha_nac] [date] NULL,
	[direccion] [varchar](100) NULL,
	[id_barrio] [int] NULL,
 CONSTRAINT [pk_Personas] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[id_provincia] [int] IDENTITY(1,1) NOT NULL,
	[Provincia] [varchar](100) NULL,
	[id_pais] [int] NULL,
 CONSTRAINT [pk_Provincias] PRIMARY KEY CLUSTERED 
(
	[id_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESERVAS]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVAS](
	[id_reserva] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NULL,
	[hora_vto] [datetime] NULL,
	[fecha] [datetime] NULL,
	[fecha_baja] [datetime] NULL,
 CONSTRAINT [PK_RESERVAS] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salas](
	[nro_sala] [int] IDENTITY(1,1) NOT NULL,
	[id_tipo_sala] [int] NULL,
	[cantidad_asientos] [int] NULL,
 CONSTRAINT [PK_SALA] PRIMARY KEY CLUSTERED 
(
	[nro_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temporadas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporadas](
	[id_temporada] [int] IDENTITY(1,1) NOT NULL,
	[Temporada] [varchar](100) NULL,
 CONSTRAINT [pk_Temporadas] PRIMARY KEY CLUSTERED 
(
	[id_temporada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Butacas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Butacas](
	[id_tipo_butaca] [int] IDENTITY(1,1) NOT NULL,
	[tipo_butaca] [varchar](50) NULL,
 CONSTRAINT [PK_Tipo_Butacas] PRIMARY KEY CLUSTERED 
(
	[id_tipo_butaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoContactos]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoContactos](
	[id_tipo_contacto] [int] IDENTITY(1,1) NOT NULL,
	[tipo_contacto] [varchar](100) NULL,
 CONSTRAINT [pk_TipoContactos] PRIMARY KEY CLUSTERED 
(
	[id_tipo_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_salas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_salas](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_tipos_salas] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](20) NULL,
	[contra] [varchar](100) NULL,
 CONSTRAINT [pk_usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedores]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedores](
	[id_vendedor] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NULL,
	[fecha_ingreso] [date] NULL,
 CONSTRAINT [pk_Vendedores] PRIMARY KEY CLUSTERED 
(
	[id_vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actores]  WITH CHECK ADD  CONSTRAINT [FK_Actor_Pais] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Paises] ([id_pais])
GO
ALTER TABLE [dbo].[Actores] CHECK CONSTRAINT [FK_Actor_Pais]
GO
ALTER TABLE [dbo].[Barrios]  WITH CHECK ADD  CONSTRAINT [fk_Barrios_Ciudades] FOREIGN KEY([id_ciudad])
REFERENCES [dbo].[Ciudades] ([id_ciudad])
GO
ALTER TABLE [dbo].[Barrios] CHECK CONSTRAINT [fk_Barrios_Ciudades]
GO
ALTER TABLE [dbo].[BUTACAS]  WITH CHECK ADD  CONSTRAINT [FK_Butacas_Sala] FOREIGN KEY([nro_sala])
REFERENCES [dbo].[Salas] ([nro_sala])
GO
ALTER TABLE [dbo].[BUTACAS] CHECK CONSTRAINT [FK_Butacas_Sala]
GO
ALTER TABLE [dbo].[BUTACAS]  WITH CHECK ADD  CONSTRAINT [FK_Butacas_Tipo_Butaca] FOREIGN KEY([id_tipo_butaca])
REFERENCES [dbo].[Tipo_Butacas] ([id_tipo_butaca])
GO
ALTER TABLE [dbo].[BUTACAS] CHECK CONSTRAINT [FK_Butacas_Tipo_Butaca]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [fk_Ciudades_Provincias] FOREIGN KEY([id_provincia])
REFERENCES [dbo].[Provincias] ([id_provincia])
GO
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [fk_Ciudades_Provincias]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [fk_Clientes_Personas] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id_persona])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [fk_Clientes_Personas]
GO
ALTER TABLE [dbo].[COMPROBANTES]  WITH CHECK ADD  CONSTRAINT [FK_com_descuento] FOREIGN KEY([id_descuento])
REFERENCES [dbo].[Descuentos] ([id_descuento])
GO
ALTER TABLE [dbo].[COMPROBANTES] CHECK CONSTRAINT [FK_com_descuento]
GO
ALTER TABLE [dbo].[COMPROBANTES]  WITH CHECK ADD  CONSTRAINT [FK_com_fpago] FOREIGN KEY([id_forma_pago])
REFERENCES [dbo].[Formas_Pagos] ([Id_FPago])
GO
ALTER TABLE [dbo].[COMPROBANTES] CHECK CONSTRAINT [FK_com_fpago]
GO
ALTER TABLE [dbo].[COMPROBANTES]  WITH CHECK ADD  CONSTRAINT [FK_com_res] FOREIGN KEY([id_reserva])
REFERENCES [dbo].[RESERVAS] ([id_reserva])
GO
ALTER TABLE [dbo].[COMPROBANTES] CHECK CONSTRAINT [FK_com_res]
GO
ALTER TABLE [dbo].[COMPROBANTES]  WITH CHECK ADD  CONSTRAINT [FK_com_tventa] FOREIGN KEY([id_tipo_vta])
REFERENCES [dbo].[Metodo_Ventas] ([id_Met_Venta])
GO
ALTER TABLE [dbo].[COMPROBANTES] CHECK CONSTRAINT [FK_com_tventa]
GO
ALTER TABLE [dbo].[COMPROBANTES]  WITH CHECK ADD  CONSTRAINT [FK_com_ven] FOREIGN KEY([id_vendedor])
REFERENCES [dbo].[Vendedores] ([id_vendedor])
GO
ALTER TABLE [dbo].[COMPROBANTES] CHECK CONSTRAINT [FK_com_ven]
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD  CONSTRAINT [fk_Contactos_Personas] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id_persona])
GO
ALTER TABLE [dbo].[Contactos] CHECK CONSTRAINT [fk_Contactos_Personas]
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD  CONSTRAINT [fk_Contactos_TipoContactos] FOREIGN KEY([id_tipo_contacto])
REFERENCES [dbo].[TipoContactos] ([id_tipo_contacto])
GO
ALTER TABLE [dbo].[Contactos] CHECK CONSTRAINT [fk_Contactos_TipoContactos]
GO
ALTER TABLE [dbo].[DETALLE_COMPROBANTES]  WITH CHECK ADD  CONSTRAINT [FK_DET_com_FBUT] FOREIGN KEY([id_funcionxbutaca])
REFERENCES [dbo].[FUNCIONXBUTACA] ([id_funcionxbutaca])
GO
ALTER TABLE [dbo].[DETALLE_COMPROBANTES] CHECK CONSTRAINT [FK_DET_com_FBUT]
GO
ALTER TABLE [dbo].[DETALLE_COMPROBANTES]  WITH CHECK ADD  CONSTRAINT [FK_detcom_com] FOREIGN KEY([id_comprobante])
REFERENCES [dbo].[COMPROBANTES] ([nro_comprobante])
GO
ALTER TABLE [dbo].[DETALLE_COMPROBANTES] CHECK CONSTRAINT [FK_detcom_com]
GO
ALTER TABLE [dbo].[DETALLES_RESERVAS]  WITH CHECK ADD  CONSTRAINT [FK_DET_RES_FBUT] FOREIGN KEY([id_funcionxbutaca])
REFERENCES [dbo].[FUNCIONXBUTACA] ([id_funcionxbutaca])
GO
ALTER TABLE [dbo].[DETALLES_RESERVAS] CHECK CONSTRAINT [FK_DET_RES_FBUT]
GO
ALTER TABLE [dbo].[DETALLES_RESERVAS]  WITH CHECK ADD  CONSTRAINT [FK_DET_Res_res] FOREIGN KEY([id_reserva])
REFERENCES [dbo].[RESERVAS] ([id_reserva])
GO
ALTER TABLE [dbo].[DETALLES_RESERVAS] CHECK CONSTRAINT [FK_DET_Res_res]
GO
ALTER TABLE [dbo].[DETALLES_RESERVAS_New]  WITH CHECK ADD  CONSTRAINT [FK_DET_RES_FBUTACA] FOREIGN KEY([id_funcionxbutaca])
REFERENCES [dbo].[FUNCIONXBUTACA] ([id_funcionxbutaca])
GO
ALTER TABLE [dbo].[DETALLES_RESERVAS_New] CHECK CONSTRAINT [FK_DET_RES_FBUTACA]
GO
ALTER TABLE [dbo].[DETALLES_RESERVAS_New]  WITH CHECK ADD  CONSTRAINT [FK_DET_Res_reseserva] FOREIGN KEY([id_reserva])
REFERENCES [dbo].[RESERVAS] ([id_reserva])
GO
ALTER TABLE [dbo].[DETALLES_RESERVAS_New] CHECK CONSTRAINT [FK_DET_Res_reseserva]
GO
ALTER TABLE [dbo].[Directores]  WITH CHECK ADD  CONSTRAINT [FK_Directores_Pais] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Paises] ([id_pais])
GO
ALTER TABLE [dbo].[Directores] CHECK CONSTRAINT [FK_Directores_Pais]
GO
ALTER TABLE [dbo].[Elencos]  WITH CHECK ADD  CONSTRAINT [fk_Elencos_Actores] FOREIGN KEY([id_actor])
REFERENCES [dbo].[Actores] ([cod_actor])
GO
ALTER TABLE [dbo].[Elencos] CHECK CONSTRAINT [fk_Elencos_Actores]
GO
ALTER TABLE [dbo].[Elencos]  WITH CHECK ADD  CONSTRAINT [fk_Elencos_Peliculas] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[Peliculas] ([id_pelicula])
GO
ALTER TABLE [dbo].[Elencos] CHECK CONSTRAINT [fk_Elencos_Peliculas]
GO
ALTER TABLE [dbo].[Funciones]  WITH CHECK ADD  CONSTRAINT [fk_Funcion_Peliculas] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[Peliculas] ([id_pelicula])
GO
ALTER TABLE [dbo].[Funciones] CHECK CONSTRAINT [fk_Funcion_Peliculas]
GO
ALTER TABLE [dbo].[Funciones]  WITH CHECK ADD  CONSTRAINT [fk_Funcion_Temporadas] FOREIGN KEY([id_temporada])
REFERENCES [dbo].[Temporadas] ([id_temporada])
GO
ALTER TABLE [dbo].[Funciones] CHECK CONSTRAINT [fk_Funcion_Temporadas]
GO
ALTER TABLE [dbo].[FUNCIONXBUTACA]  WITH CHECK ADD  CONSTRAINT [fk_estado_butacas] FOREIGN KEY([id_estado])
REFERENCES [dbo].[Estados_Butacas] ([id_estado])
GO
ALTER TABLE [dbo].[FUNCIONXBUTACA] CHECK CONSTRAINT [fk_estado_butacas]
GO
ALTER TABLE [dbo].[FUNCIONXBUTACA]  WITH CHECK ADD  CONSTRAINT [fk_fxb_b] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[BUTACAS] ([id_butaca])
GO
ALTER TABLE [dbo].[FUNCIONXBUTACA] CHECK CONSTRAINT [fk_fxb_b]
GO
ALTER TABLE [dbo].[FUNCIONXBUTACA]  WITH CHECK ADD  CONSTRAINT [fk_fxb_f] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[Funciones] ([id_funcion])
GO
ALTER TABLE [dbo].[FUNCIONXBUTACA] CHECK CONSTRAINT [fk_fxb_f]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [fk_Peliculas_Clasificaciones] FOREIGN KEY([id_Clasificacion])
REFERENCES [dbo].[Clasificaciones] ([id_Clasificacion])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [fk_Peliculas_Clasificaciones]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [fk_Peliculas_Generos] FOREIGN KEY([id_genero])
REFERENCES [dbo].[Generos_de_Peliculas] ([id_genero])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [fk_Peliculas_Generos]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [fk_Peliculas_Idiomas] FOREIGN KEY([id_idioma])
REFERENCES [dbo].[Idiomas] ([id_tipo_Idioma])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [fk_Peliculas_Idiomas]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [fk_Peliculas_Paises] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Paises] ([id_pais])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [fk_Peliculas_Paises]
GO
ALTER TABLE [dbo].[PeliculasxDirectores]  WITH CHECK ADD  CONSTRAINT [FK_PxD_Director] FOREIGN KEY([id_director])
REFERENCES [dbo].[Directores] ([id_director])
GO
ALTER TABLE [dbo].[PeliculasxDirectores] CHECK CONSTRAINT [FK_PxD_Director]
GO
ALTER TABLE [dbo].[PeliculasxDirectores]  WITH CHECK ADD  CONSTRAINT [FK_PxD_Pelicula] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[Peliculas] ([id_pelicula])
GO
ALTER TABLE [dbo].[PeliculasxDirectores] CHECK CONSTRAINT [FK_PxD_Pelicula]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [fk_Personas_Barrios] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrios])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [fk_Personas_Barrios]
GO
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [fk_prov_pais] FOREIGN KEY([id_pais])
REFERENCES [dbo].[Paises] ([id_pais])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [fk_prov_pais]
GO
ALTER TABLE [dbo].[RESERVAS]  WITH CHECK ADD  CONSTRAINT [fk_res_cli] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[RESERVAS] CHECK CONSTRAINT [fk_res_cli]
GO
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FK_SALA_TIPO_SALA] FOREIGN KEY([id_tipo_sala])
REFERENCES [dbo].[tipos_salas] ([id_tipo])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FK_SALA_TIPO_SALA]
GO
ALTER TABLE [dbo].[Vendedores]  WITH CHECK ADD  CONSTRAINT [fk_Vendedores_Personas] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id_persona])
GO
ALTER TABLE [dbo].[Vendedores] CHECK CONSTRAINT [fk_Vendedores_Personas]
GO
/****** Object:  StoredProcedure [dbo].[pa_Acomodar_butacas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_Acomodar_butacas] 
@funcion  int,
@butaca int
as
begin
		UPDATE FUNCIONXBUTACA
		SET id_butaca = @butaca
		where id_funcionxbutaca= @funcion
end
GO
/****** Object:  StoredProcedure [dbo].[pa_Actualizar_Persona]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Actualizar_Persona]
@id_persona int,
@nombre varchar(50),
@apellido varchar(50),
@sexo varchar(1),
@nro_doc varchar(50),
@fecha_nac datetime,
@direc varchar(50),
@id_barrio int
AS
BEGIN
	UPDATE  Personas
    SET nombre=@nombre,
		apellido=@apellido,
		sexo=@sexo,
		nro_doc=@nro_doc,
		fecha_nac=@fecha_nac,
		direccion=@direc,
		id_barrio=@id_barrio
    where id_persona=@id_persona
END
GO
/****** Object:  StoredProcedure [dbo].[pa_cambiar_Estado]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_cambiar_Estado]
@id_FxB int 
as
begin
	  UPDATE FUNCIONXBUTACA 
	  set id_estado = 3
	  where id_funcionxbutaca=@id_FxB
end
GO
/****** Object:  StoredProcedure [dbo].[PA_CONSUL_CLIENTES_PARAMETROS]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_CONSUL_CLIENTES_PARAMETROS]
@id_cliente INT =NULL,
@apellido VARCHAR(50)=NULL,
@nombre VARCHAR(50)=NULL, 
@nrodni VARCHAR(50)=NULL
AS
BEGIN
	
	SELECT c.id_cliente, p.id_persona, p.nombre, p.apellido, p.sexo, p.nro_doc, p.fecha_nac, p.direccion, p.id_barrio  
	from CLIENTES c
	join Personas p on c.id_persona=p.id_persona
	WHERE c.activo = 's' AND (id_cliente=@id_cliente OR  apellido=@apellido OR nombre=@nombre OR nro_doc=@nrodni)
END
GO
/****** Object:  StoredProcedure [dbo].[PA_CONSULTA_UNO]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_CONSULTA_UNO]
AS
BEGIN 
	SELECT t.Temporada Temporada, p.nom_pelicula Pelicula, gp.descripcion Genero, count(FXB.id_butaca)'Butacas vendidas'
	FROM DETALLE_COMPROBANTES DC
	JOIN FUNCIONXBUTACA FXB ON FXB.ID_FUNCIONXBUTACA = DC.ID_FUNCIONXBUTACA
	JOIN FUNCIONES F ON F.ID_FUNCION=FXB.ID_FUNCION
	JOIN TEMPORADAS T ON T.ID_TEMPORADA = F.ID_TEMPORADA
	JOIN PELICULAS P ON P.ID_PELICULA = F.ID_PELICULA
	JOIN GENEROS_DE_PELICULAS GP ON GP.ID_GENERO=P.ID_GENERO
	JOIN COMPROBANTES C ON C.NRO_COMPROBANTE= DC.ID_COMPROBANTE
	JOIN DESCUENTOS D ON D.ID_DESCUENTO = C.ID_DESCUENTO
	JOIN ESTADOS_BUTACAS E ON E.ID_ESTADO=FXB.ID_ESTADO
	GROUP BY T.TEMPORADA, P.NOM_PELICULA, GP.DESCRIPCION
END
GO
/****** Object:  StoredProcedure [dbo].[pa_consultar_Barrios]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultar_Barrios]
AS
BEGIN
		SELECT id_barrios,barrio FROM Barrios
		where id_ciudad=1
END
GO
/****** Object:  StoredProcedure [dbo].[pa_consultar_Butacas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultar_Butacas]
@id_funcion int 
AS
BEGIN
		SELECT b.id_butaca,b.fila ,b.nro_butaca 
		FROM BUTACAS b
		JOIN FUNCIONXBUTACA f on f.id_butaca= b.id_butaca
		where b.nro_sala=1 
		and f.id_funcion= @id_funcion
		and  f.id_estado= 2
END
GO
/****** Object:  StoredProcedure [dbo].[pa_consultar_Estados]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultar_Estados]
AS
BEGIN
		SELECT e.id_estado, e.estado FROM Estados_Butacas e
END
GO
/****** Object:  StoredProcedure [dbo].[pa_consultar_Funciones]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultar_Funciones]
@id_pelicula int
AS
BEGIN
		SELECT f.id_funcion, f.Horario FROM Funciones f
		where @id_pelicula= f.id_pelicula
END
GO
/****** Object:  StoredProcedure [dbo].[pa_consultar_FuncionsxFiltro]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_consultar_FuncionsxFiltro]
@hora DATETIME
AS
BEGIN
		SELECT f.id_funcion, f.Horario FROM Funciones f
		where @hora= f.Horario
END

GO
/****** Object:  StoredProcedure [dbo].[pa_consultar_FuncXButaca]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultar_FuncXButaca]
@id_funcion int,
@id_butaca int,
@id_estado int
AS
BEGIN
		SELECT f.id_funcionxbutaca, f.id_butaca, f.id_funcion, f.id_estado  FROM FUNCIONXBUTACA f
		where @id_funcion= f.id_funcion and
			@id_butaca= f.id_butaca and
			@id_estado= f.id_estado

END
GO
/****** Object:  StoredProcedure [dbo].[pa_consultar_id_FxB]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultar_id_FxB]
@id_butaca int,
@id_Funcion int
as
begin 
		SELECT F.id_funcionxbutaca
		FROM FUNCIONXBUTACA F
		WHERE F.id_butaca=@id_butaca
			AND F.id_funcion = @id_Funcion
END
GO
/****** Object:  StoredProcedure [dbo].[pa_consultar_Peliculas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_consultar_Peliculas]
AS
BEGIN
		SELECT p.id_pelicula, p.nom_pelicula FROM Peliculas p
		
END
GO
/****** Object:  StoredProcedure [dbo].[pa_consultar_PeliculasxFiltro]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_consultar_PeliculasxFiltro]
@nombre varchar(50)
AS
BEGIN
		SELECT p.id_pelicula, p.nom_pelicula
		FROM Peliculas p
		where  p.nom_pelicula=@nombre
		
END
GO
/****** Object:  StoredProcedure [dbo].[pa_traer_Una_Pelicula]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pa_traer_Una_Pelicula]
@id_funcion int
AS
BEGIN
		SELECT  p.nom_pelicula
		FROM Peliculas p
		join Funciones f on f.id_pelicula= p.id_pelicula
		where p.id_pelicula=@id_funcion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Actores]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--20

Create Procedure [dbo].[sp_Actores]
@nombre VARCHAR(100),
@apellido VARCHAR(100),
@nombre_artistico VARCHAR(100),
@fecha_nac Datetime,
@id_pais INT
as 
	INSERT INTO Actores (nombre ,
apellido,
nombre_artistico,
fecha_nac,
id_pais ) values (@nombre,
@apellido,
@nombre_artistico,
@fecha_nac,
@id_pais
)
GO
/****** Object:  StoredProcedure [dbo].[sp_Barrios]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--15
Create Procedure [dbo].[sp_Barrios]
@descripcion varchar(50),
@ciudad int
as 
	INSERT INTO Barrios (barrio,id_ciudad) values (@descripcion,@ciudad)
GO
/****** Object:  StoredProcedure [dbo].[sp_BUTACAS]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--25
Create Procedure [dbo].[sp_BUTACAS]
@fila CHAR(1),
@nro_sala INT,
@nro_butaca INT,
@id_tipo_butaca INT
as 
	INSERT INTO BUTACAS (fila ,
nro_sala,
nro_butaca,
id_tipo_butaca
) values (@fila,
@nro_sala,
@nro_butaca ,
@id_tipo_butaca
)
GO
/****** Object:  StoredProcedure [dbo].[sp_Ciudades]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--7 Acá metan todas las capitales de las provincias y RioCuarto, Carlos Paz, Rosario y alguna ciudad más.No recuerdo para q era esta tabla

Create Procedure [dbo].[sp_Ciudades]
@descripcion varchar(50),
@provincia int
as 
	INSERT INTO Ciudades (Ciudad,id_provincia) values (@descripcion,@provincia)
GO
/****** Object:  StoredProcedure [dbo].[sp_Clasificaciones]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--11 El cine tiene clasificaciones por letra. R 18 es para mayores las otras no tengo idea...Invente Roman invente

Create Procedure [dbo].[sp_Clasificaciones]
@descripcion varchar(50)
as 
	INSERT INTO Clasificaciones (Clasificacion) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_Clientes]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--18

Create Procedure [dbo].[sp_Clientes]
@id_persona int,
@act varchar(1)
as 
	INSERT INTO Clientes (id_persona, activo) values (@id_persona, @act)
GO
/****** Object:  StoredProcedure [dbo].[sp_COMPROBANTES]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--29
Create Procedure [dbo].[sp_COMPROBANTES]
@fecha date,
@id_descuento INT,
@id_forma_pago INT,
@id_tipo_vta INT,
@id_reserva INT,
@id_vendedor int
as 
	INSERT INTO COMPROBANTES(fecha ,
id_descuento ,
id_forma_pago ,
id_tipo_vta ,
id_reserva ,
id_vendedor) values (@fecha,
@id_descuento,
@id_forma_pago,
@id_tipo_vta,
@id_reserva,
@id_vendedor
)
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_CLIENTES]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_CLIENTES]
AS
BEGIN
	
	SELECT c.id_cliente, p.id_persona, p.nombre, p.apellido, p.sexo, p.nro_doc, p.fecha_nac, p.direccion, p.id_barrio  
	from CLIENTES c
	join Personas p on c.id_persona=p.id_persona
	WHERE c.activo = 's'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_consultar_usuarios]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_consultar_usuarios]
@usuario varchar(20),
@contra varchar(100)
as
begin
Select usuario, contra 
from Usuarios 
where usuario = @usuario and @contra = @contra
end
GO
/****** Object:  StoredProcedure [dbo].[sp_Contactos]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--19
Create Procedure [dbo].[sp_Contactos]
@id_persona int,
@contacto VARCHAR(100),
@id_tipo_contacto INT
as 
	INSERT INTO Contactos (id_persona,contacto,id_tipo_contacto) values (@id_persona,@contacto,@id_tipo_contacto)
GO
/****** Object:  StoredProcedure [dbo].[sp_Descuentos]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--13 Ni idea q era esto, Giuli encargate vos XD


Create Procedure [dbo].[sp_Descuentos]
@descripcion varchar(50),
@porcentaje int 
as 
	INSERT INTO Descuentos (descripcion,porcentaje) values (@descripcion,@porcentaje)
GO
/****** Object:  StoredProcedure [dbo].[sp_DETALLE_COMPROBANTES]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--31

Create Procedure [dbo].[sp_DETALLE_COMPROBANTES]
@id_comprobante INT ,
@precio int, --precio de la funcion menos el descuento del comprobante
@id_funcionxbutaca INT
as 
	INSERT INTO DETALLE_COMPROBANTES(id_comprobante,
precio,
id_funcionxbutaca
) values (@id_comprobante,
@precio,
@id_funcionxbutaca
)
GO
/****** Object:  StoredProcedure [dbo].[sp_DETALLES_RESERVAS]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--30

Create Procedure [dbo].[sp_DETALLES_RESERVAS]
@id_reserva INT ,
@id_funcionxbutaca INT
as 
	INSERT INTO DETALLES_RESERVAS_new (id_reserva,id_funcionxbutaca) values (@id_reserva,@id_funcionxbutaca)
GO
/****** Object:  StoredProcedure [dbo].[sp_Directores]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







--22


Create Procedure [dbo].[sp_Directores]
@nombre VARCHAR(50),
@apellido VARCHAR(50),
@nombre_artistico VARCHAR(50),
@fecha_nac DATE,
@id_pais INT
as 
	INSERT INTO Directores (nombre,
apellido,
nombre_artistico,
fecha_nac,
id_pais
) values (@nombre,
@apellido,
@nombre_artistico,
@fecha_nac,
@id_pais
)
GO
/****** Object:  StoredProcedure [dbo].[sp_Elencos]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Tablas Transaccionales 
--26

Create Procedure [dbo].[sp_Elencos]
@id_pelicula INT,
@id_actor INT
as 
	INSERT INTO Elencos (id_pelicula, id_actor) values (@id_pelicula,@id_actor)
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_CLIENTE]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ELIMINAR_CLIENTE]
	@cliente_nro int
AS
BEGIN
	UPDATE CLIENTES SET activo = 'n'
	WHERE id_cliente = @cliente_nro;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_RESERVA]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SP_ELIMINAR_RESERVA]
	@id_reserva int
AS
BEGIN
	UPDATE reservas SET fecha_baja = GETDATE()
	WHERE id_reserva = @id_reserva;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Estados_Butacas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--14

Create Procedure [dbo].[sp_Estados_Butacas]
@descripcion varchar(50)
as 
	INSERT INTO Estados_Butacas (estado) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_Funciones]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--24
Create Procedure [dbo].[sp_Funciones]
@Horario datetime,
@estreno bit,
@id_temporada int,
@id_pelicula int,
@Precio money,
@feriado bit
as 
	INSERT INTO Funciones (Horario,
estreno,
id_temporada,
id_pelicula,
Precio,
feriado
) values (@Horario,
@estreno,
@id_temporada,
@id_pelicula,
@Precio,
@feriado
)
GO
/****** Object:  StoredProcedure [dbo].[sp_funciones_por_peli]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_funciones_por_peli]
@fecha_desde datetime,
@fecha_hasta datetime
as
begin
select p.nom_pelicula as Pelicula,count(f.id_pelicula) as Funciones
from Funciones f , Peliculas p 
where f.id_pelicula=p.id_pelicula AND
f.Horario between @fecha_desde and @fecha_hasta
GROUP BY p.nom_pelicula ;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_FUNCIONXBUTACA]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--28

Create Procedure [dbo].[sp_FUNCIONXBUTACA]
@id_funcion INT,
@id_butaca INT,
@id_estado int
as 
	INSERT INTO FUNCIONXBUTACA(id_funcion,
id_butaca,
id_estado) values (@id_funcion,
@id_butaca,
@id_estado
)
GO
/****** Object:  StoredProcedure [dbo].[sp_Generos_de_Peliculas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--12

Create Procedure [dbo].[sp_Generos_de_Peliculas]
@descripcion varchar(50)
as 
	INSERT INTO Generos_de_Peliculas (descripcion) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_Idiomas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--10 Acá metan algunos idiomas populares de peliculas como aleman ingles koreano español...Invente Roman invente

Create Procedure [dbo].[sp_Idiomas]
@descripcion varchar(50)
as 
	INSERT INTO Idiomas (Idioma) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_CLIENTE]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_CLIENTE]
	@id_persona int,
	@act varchar(1)
AS
BEGIN
	INSERT INTO Clientes(id_persona, activo)
    VALUES (@id_persona, @act);  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DETALLE]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_DETALLE]
	@reserva_nro int,
	@detalle int, 
	@id_funcionxButaca int
AS
BEGIN
	INSERT INTO DETALLES_RESERVAS_New(id_reserva,id_detalle_reserva,id_funcionxButaca)
    VALUES (@reserva_nro, @detalle,	@id_funcionxButaca);
  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_MAESTRO]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_MAESTRO]
	@cliente int, 
	@vto datetime,
	@id_reserva int OUTPUT
AS
BEGIN
	INSERT INTO RESERVAS(id_cliente,hora_vto)
    VALUES (@cliente,@vto);
    --Asignamos el valor del último ID autogenerado (obtenido --  
    --mediante la función SCOPE_IDENTITY() de SQLServer)	
    SET @id_reserva = SCOPE_IDENTITY();
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_PERSONA]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_PERSONA]
@nombre varchar(50),
@apellido varchar(50),
@sexo varchar(1),
@nro_doc varchar(50),
@fecha_nac datetime,
@direc varchar(50),
@id_barrio int,
@persona_nro int OUTPUT
AS
BEGIN
	INSERT INTO Personas(nombre,apellido,sexo,nro_doc,fecha_nac,direccion,id_barrio)
    VALUES (@nombre,@apellido,@sexo,@nro_doc,@fecha_nac,@direc,@id_barrio)
    --Asignamos el valor del último ID autogenerado (obtenido --  
    --mediante la función SCOPE_IDENTITY() de SQLServer)	
    SET  @persona_nro = SCOPE_IDENTITY();

END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_usuario]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_insertar_usuario]
@usuario varchar(20),
@contra varchar(100)
as
insert into Usuarios (usuario, contra) values (@usuario, @contra)
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertFormasPago]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PROCEDIMIENTOS ALMACENADOS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

--use CinePolis2

--Tablas auxiliares 

--1 

Create Procedure [dbo].[sp_InsertFormasPago]
@descripcion varchar(50)
as 
	INSERT INTO Formas_Pagos (descripcion) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_Metodo_Ventas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--3 Acá era si era por ventanilla o por internet

Create Procedure [dbo].[sp_Metodo_Ventas]
@descripcion varchar(50)
as 
	INSERT INTO Metodo_Ventas(Metodo_Venta) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_Paises]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--5 Todos los paises del globo metan acá. Argentina tiene q ser el PRIMERO Q CARGUEN CON ID 1

Create Procedure [dbo].[sp_Paises]
@descripcion varchar(50)
as 
	INSERT INTO Paises (pais) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_Peliculas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Tablas Maestras
--23
Create Procedure [dbo].[sp_Peliculas]
@id_pelicula INT,
@nom_pelicula VARCHAR(100),
@sinopsis VARCHAR(400),
@anio INT,
@id_pais INT,
@duracion INT,
@id_idioma INT,
@id_genero INT,
@id_Clasificacion INT

as 
	INSERT INTO Peliculas (id_pelicula,
nom_pelicula,
sinopsis,
anio,
id_pais,
duracion,
id_idioma,
id_genero,
id_Clasificacion
) values (@id_pelicula,
@nom_pelicula,
@sinopsis,
@anio,
@id_pais,
@duracion,
@id_idioma,
@id_genero,
@id_Clasificacion
)
GO
/****** Object:  StoredProcedure [dbo].[sp_PeliculasxDirectores]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[sp_PeliculasxDirectores]
@id_pelicula int,
@id_director int
as
Insert into PeliculasxDirectores (id_pelicula, id_director) values (@id_pelicula, @id_director)
GO
/****** Object:  StoredProcedure [dbo].[sp_Personas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--16

Create Procedure [dbo].[sp_Personas]
@nombre varchar(50),
@apellido varchar(50),
@sexo CHAR(1),
@nro_doc VARCHAR(20),
@fecha_nac DATE,
@direccion VARCHAR(100),
@barrio int
as 
	INSERT INTO Personas (nombre,apellido,sexo ,nro_doc,fecha_nac,direccion,id_barrio) values (@nombre,
@apellido,
@sexo,
@nro_doc,
@fecha_nac,
@direccion,
@barrio
)
GO
/****** Object:  StoredProcedure [dbo].[sp_Provincias]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






--6

Create Procedure [dbo].[sp_Provincias] 
@descripcion varchar(50),
@pais int =1
as 
	INSERT INTO Provincias (Provincia,id_pais) values (@descripcion,@pais)
GO
/****** Object:  StoredProcedure [dbo].[sp_RESERVAS]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--27
Create Procedure [dbo].[sp_RESERVAS] 
@id_cliente int,
@hora_vto datetime,
@activo datetime,
@fec datetime
as 
	INSERT INTO RESERVAS  (id_cliente,hora_vto,fecha, fecha_baja) values (@id_cliente,@hora_vto,@activo, @fec)
GO
/****** Object:  StoredProcedure [dbo].[sp_Salas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





--21

Create Procedure [dbo].[sp_Salas]
@id_tipo_sala INT,
@cantidad_asientos INT
as 
	INSERT INTO Salas (id_tipo_sala ,
cantidad_asientos
) values (@id_tipo_sala,
@cantidad_asientos
)
GO
/****** Object:  StoredProcedure [dbo].[sp_Temporadas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--9 Googleen como se divide las temporadas en cine. Creo q es como las estaciones pero no estoy seguro

Create Procedure [dbo].[sp_Temporadas]
@descripcion varchar(50)
as 
	INSERT INTO Temporadas (Temporada) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_Tipo_Butacas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--4 Acá era si eran butacas para obesos, gente con sillas de ruedas o las de tipo común

Create Procedure [dbo].[sp_Tipo_Butacas]
@descripcion varchar(50)
as 
	INSERT INTO Tipo_Butacas (tipo_butaca) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_TipoContactos]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--8 los usuales

Create Procedure [dbo].[sp_TipoContactos]
@descripcion varchar(50)
as 
	INSERT INTO TipoContactos (tipo_contacto) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_tipos_salas]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--2

Create Procedure [dbo].[sp_tipos_salas]
@descripcion varchar(50)
as 
	INSERT INTO tipos_salas (descripcion) values (@descripcion)
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendedores]    Script Date: 21-Nov-23 6:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--17
Create Procedure [dbo].[sp_Vendedores]
@id_persona INT,
@fecha_ingreso DATE
as 
	INSERT INTO Vendedores (id_persona,fecha_ingreso) values (@id_persona,
@fecha_ingreso
)
GO
USE [master]
GO
ALTER DATABASE [CinePolis2] SET  READ_WRITE 
GO

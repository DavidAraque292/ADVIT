SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clase_Vehiculo](
	[IDClase] [int] IDENTITY(1,1) NOT NULL,
	[Clase_vehiculo] [nvarchar](9) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clase_Vehiculo] ADD  CONSTRAINT [PK_Clase_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[IDClase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


--prueba
CREATE TABLE [dbo].[ViajesTerminalesTerrestres] (
    [IdViaje]                INT  IDENTITY (1, 1) NOT NULL,
    [IdTerminal]             INT  NOT NULL,
    [IdClaseVehiculo]        INT  NOT NULL,
    [IdNivelServicio]        INT  NOT NULL,
    [IdMunicipioOrigen]      INT  NOT NULL,
    [IdDepartamentoOrigen]   INT  NOT NULL,
    [IdMunicipioDestino]     INT  NOT NULL,
    [IdDespartamentoDestino] INT  NOT NULL,
    [FechaDespacho]          DATE NOT NULL,
    [HoraDespacho]           INT  NOT NULL,
    [CantidadDespachos]      INT  NOT NULL,
    [CantidadPasajeros]      INT  NOT NULL,
    [IdTipoDespacho]         INT  NOT NULL,
    CONSTRAINT [PK_ViajesTerminalesTerrestres] PRIMARY KEY CLUSTERED ([IdViaje] ASC),
    CONSTRAINT [FK_ClaseVehiculo] FOREIGN KEY ([IdClaseVehiculo]) REFERENCES [dbo].[ClaseVehiculo] ([IDClaseVehiculo]),
    CONSTRAINT [FK_DepartamentoDestino] FOREIGN KEY ([IdDespartamentoDestino]) REFERENCES [dbo].[Departamentos] ([IdDepartamento]),
    CONSTRAINT [FK_DepartamentoOrigen] FOREIGN KEY ([IdDepartamentoOrigen]) REFERENCES [dbo].[Departamentos] ([IdDepartamento]),
    CONSTRAINT [FK_MunicipioDestino] FOREIGN KEY ([IdMunicipioDestino]) REFERENCES [dbo].[Municipos] ([IdMunicipio]),
    CONSTRAINT [FK_MunicipoOrigen] FOREIGN KEY ([IdMunicipioOrigen]) REFERENCES [dbo].[Municipos] ([IdMunicipio]),
    CONSTRAINT [FK_NivelServicio] FOREIGN KEY ([IdNivelServicio]) REFERENCES [dbo].[NivelServicio] ([IDNivelServicio]),
    CONSTRAINT [FK_TipoDespacho] FOREIGN KEY ([IdTipoDespacho]) REFERENCES [dbo].[TipoDespacho] ([IDTipoDespacho]),
    CONSTRAINT [FK_ViajesTerminales] FOREIGN KEY ([IdTerminal]) REFERENCES [dbo].[Terminales] ([IDTerminal])
);
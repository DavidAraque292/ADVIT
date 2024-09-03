
CREATE TABLE MovilidadDim.dbo.DimClaseVehiculo (
	IDClaseVehiculo int NOT NULL,
	NombreClaseVehiculo nvarchar(9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_DimClaseVehiculo PRIMARY KEY (IDClaseVehiculo)
);


-- MovilidadDim.dbo.DimMunicipios definition

-- Drop table

-- DROP TABLE MovilidadDim.dbo.DimMunicipios;

CREATE TABLE MovilidadDim.dbo.DimMunicipios (
	IDMunicipio int NOT NULL,
	NombreMunicipio nvarchar(27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NombreDepartamento nvarchar(56) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_DimMunicipios PRIMARY KEY (IDMunicipio)
);


-- MovilidadDim.dbo.DimNivelServicio definition

-- Drop table

-- DROP TABLE MovilidadDim.dbo.DimNivelServicio;

CREATE TABLE MovilidadDim.dbo.DimNivelServicio (
	IDNivelServicio int NOT NULL,
	NombreNivelServicio nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_DimNivelServicio PRIMARY KEY (IDNivelServicio)
);


-- MovilidadDim.dbo.DimTerminales definition

-- Drop table

-- DROP TABLE MovilidadDim.dbo.DimTerminales;

CREATE TABLE MovilidadDim.dbo.DimTerminales (
	IDTerminal int NOT NULL,
	NombreTerminal nvarchar(23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_DimTerminales PRIMARY KEY (IDTerminal)
);


-- MovilidadDim.dbo.DimTiempo definition

-- Drop table

-- DROP TABLE MovilidadDim.dbo.DimTiempo;

CREATE TABLE MovilidadDim.dbo.DimTiempo (
	Fecha date NOT NULL,
	DiaMes int NOT NULL,
	Mes int NOT NULL,
	Anno int NOT NULL,
	DiaSemana int NOT NULL,
	Trimestre int NOT NULL,
	Hora int NOT NULL,
	CONSTRAINT PK_FactViajesTerminalesTerrestres PRIMARY KEY (Fecha,Hora)
);


-- MovilidadDim.dbo.DimTipoDespacho definition

-- Drop table

-- DROP TABLE MovilidadDim.dbo.DimTipoDespacho;

CREATE TABLE MovilidadDim.dbo.DimTipoDespacho (
	IDTipoDespacho int NOT NULL,
	TipoDespacho nvarchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT PK_DimTipoDespacho PRIMARY KEY (IDTipoDespacho)
);


-- MovilidadDim.dbo.FactViajesTerminales definition

-- Drop table

-- DROP TABLE MovilidadDim.dbo.FactViajesTerminales;

CREATE TABLE MovilidadDim.dbo.FactViajesTerminales (
	IDViajes int NOT NULL,
	IdClaseVehiculo int NOT NULL,
	IdTerminal int NOT NULL,
	IdNivelServicio int NOT NULL,
	IdMunicipioOrigen int NOT NULL,
	IdDepartamentoOrigen int NOT NULL,
	IdMunicipioDestino int NOT NULL,
	IdDepartamentoDestino int NOT NULL,
	FechaDespacho date NOT NULL,
	HoraDespacho int NOT NULL,
	CantidadDespachos int NOT NULL,
	CantidadPasajeros int NOT NULL,
	IdTipoDespacho int NOT NULL,
	CONSTRAINT PK_FactViajesTerminales PRIMARY KEY (IDViajes),
	CONSTRAINT FK_DimClaseVehiculo FOREIGN KEY (IdClaseVehiculo) REFERENCES MovilidadDim.dbo.DimClaseVehiculo(IDClaseVehiculo),
	CONSTRAINT FK_DimMunicipiosDestino FOREIGN KEY (IdMunicipioDestino) REFERENCES MovilidadDim.dbo.DimMunicipios(IDMunicipio),
	CONSTRAINT FK_DimMunicipiosOrigen FOREIGN KEY (IdMunicipioDestino) REFERENCES MovilidadDim.dbo.DimMunicipios(IDMunicipio),
	CONSTRAINT FK_DimNivelServicio FOREIGN KEY (IdNivelServicio) REFERENCES MovilidadDim.dbo.DimNivelServicio(IDNivelServicio),
	CONSTRAINT FK_DimTerminales FOREIGN KEY (IdTerminal) REFERENCES MovilidadDim.dbo.DimTerminales(IDTerminal),
	CONSTRAINT FK_DimTipoDespacho FOREIGN KEY (IdTipoDespacho) REFERENCES MovilidadDim.dbo.DimTipoDespacho(IDTipoDespacho),
	CONSTRAINT FK_FactViajesTerminales_DimTiempo FOREIGN KEY (FechaDespacho,HoraDespacho) REFERENCES MovilidadDim.dbo.DimTiempo(Fecha,Hora)
);
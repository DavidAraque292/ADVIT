CREATE TABLE [dbo].[DimClaseVehiculo] (
    [IDClaseVehiculo]     INT          NOT NULL,
    [NombreClaseVehiculo] NVARCHAR (9) NOT NULL,
    CONSTRAINT [PK_DimClaseVehiculo] PRIMARY KEY CLUSTERED ([IDClaseVehiculo] ASC)
);

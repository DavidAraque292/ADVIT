CREATE TABLE [dbo].[DimMunicipios] (
    [IDMunicipio]        INT           NOT NULL,
    [NombreMunicipio]    NVARCHAR (27) NOT NULL,
    [NombreDepartamento] NVARCHAR (56) NOT NULL,
    CONSTRAINT [PK_DimMunicipios] PRIMARY KEY CLUSTERED ([IDMunicipio] ASC)
);
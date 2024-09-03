CREATE TABLE [dbo].[DimNivelServicio] (
    [IDNivelServicio]     INT           NOT NULL,
    [NombreNivelServicio] NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_DimNivelServicio] PRIMARY KEY CLUSTERED ([IDNivelServicio] ASC)
);
CREATE TABLE [dbo].[NivelServicio] (
    [IDNivelServicio]     INT           NOT NULL,
    [NombreNivelServicio] NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_NivelServicio] PRIMARY KEY CLUSTERED ([IDNivelServicio] ASC)
);
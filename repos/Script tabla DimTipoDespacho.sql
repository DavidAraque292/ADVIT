CREATE TABLE [dbo].[DimTipoDespacho] (
    [IDTipoDespacho] INT          NOT NULL,
    [TipoDespacho]   NVARCHAR (8) NOT NULL,
    CONSTRAINT [PK_DimTipoDespacho] PRIMARY KEY CLUSTERED ([IDTipoDespacho] ASC)
);

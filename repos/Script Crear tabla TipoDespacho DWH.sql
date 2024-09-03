CREATE TABLE [dbo].[TipoDespacho] (
    [IDTipoDespacho] INT          NOT NULL,
    [TipoDespacho]   NVARCHAR (8) NOT NULL,
    CONSTRAINT [PK_TipoDespacho] PRIMARY KEY CLUSTERED ([IDTipoDespacho] ASC)
);
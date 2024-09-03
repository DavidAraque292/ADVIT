CREATE TABLE [dbo].[DimTerminales] (
    [IDTerminal]     INT           NOT NULL,
    [NombreTerminal] NVARCHAR (23) NOT NULL,
    CONSTRAINT [PK_DimTerminales] PRIMARY KEY CLUSTERED ([IDTerminal] ASC)
);

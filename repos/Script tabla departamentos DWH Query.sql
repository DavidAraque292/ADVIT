CREATE TABLE [dbo].[Departamentos] (
    [IdDepartamento]     INT           NOT NULL,
    [NombreDepartamento] NVARCHAR (56) NULL,
    CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED ([IdDepartamento] ASC)
);
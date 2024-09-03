CREATE TABLE [dbo].[DimTiempo] (
    [Fecha]     DATE NOT NULL,
    [DiaMes]    INT  NOT NULL,
    [Mes]       INT  NOT NULL,
    [Anno]      INT  NOT NULL,
    [DiaSemana] INT  NOT NULL,
    [Trimestre] INT  NOT NULL,
    [Hora]      INT  NOT NULL,
    CONSTRAINT [PK_FactViajesTerminalesTerrestres] PRIMARY KEY CLUSTERED ([Fecha] ASC, [Hora] ASC)
);
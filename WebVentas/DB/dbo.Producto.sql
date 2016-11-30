CREATE TABLE [dbo].[Producto] (
    [IdProducto]  INT           IDENTITY (1, 1) NOT NULL,
    [Descripcion] VARCHAR (150) NULL,
    [Costo]       INT    NULL,
    [Precio]      INT    NULL,
    PRIMARY KEY CLUSTERED ([IdProducto] ASC)
);


create table Venta(
IdVenta int primary key Identity (1,1),
Fecha date,
TotalVenta int
);

create table Producto(
IdProducto int primary key Identity (1,1),
Descripcion varchar(150),
Costo int,
Precio int
);

create table Compra(
IdCompra int primary key Identity (1,1),
Idsuplidor int,
Fecha date,
TotalCompra float
);

create table Suplidor(
IdSuplidor int primary key Identity (1,1),
Nombre varchar(30), 
Apellido varchar(30),
Direccion varchar(30),
Telefono int,
Correo varchar(30),
Empresa varchar(30)
);

create table Usuario(
IdUsuario int primary key Identity (1,1),
Nombre varchar(30), 
Apellido varchar(30),
correo varchar(30),
NombreUsuario varchar(20),
Contraseña Varchar(20),
Imagen image
);

create table VentaProducto(
IdVentaProducto int primary key Identity (1,1),
IdVenta int,
IdCompra int,
Cantidad int
);
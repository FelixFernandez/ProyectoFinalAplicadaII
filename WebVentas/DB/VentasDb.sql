create table Venta(
IdVenta int primary key,
Fecha date,
TotalVenta float
);

create table Producto(
IdProducto int primary key,
Descripcion varchar(150),
Costo float,
Precio float
);

create table Compra(
IdCompra int primary key,
Idsuplidor int,
Fecha date,
TotalCompra float
);

create table Suplidor(
IdSuplidor int primary key,
Nombre varchar(30), 
Apellido varchar(30),
Direccion varchar(30),
Telefono int,
correo varchar(30),
Empresa varchar(30)
);

create table Usuario(
IdUsuario int primary key,
Nombre varchar(30), 
Apellido varchar(30),
correo varchar(30),
NombreUsuario varchar(20),
Contraseña Varchar(20),
Imagen image
);

create table VentaProducto(
IdVentaProducto int primary key,
IdVenta int,
IdCompra int,
Cantidad int
);
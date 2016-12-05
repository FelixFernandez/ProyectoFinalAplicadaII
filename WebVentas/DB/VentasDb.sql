create table Venta(
IdVenta int primary key identity(1,1),
Fecha date,
TotalVenta float
);

create table Producto(
IdProducto int primary key identity(1,1),
Descripcion varchar(150),
Costo float,
Precio float
);

create table Compra(
IdCompra int primary key identity(1,1),
Idsuplidor int,
Fecha date,
TotalCompra float
);

create table Suplidor(
IdSuplidor int primary key identity(1,1),
Nombre varchar(50), 
Apellido varchar(50),
Direccion varchar(50),
Telefono varchar(50),
Correo varchar(50),
Empresa varchar(50)
);

create table Usuario(
IdUsuario int primary key identity(1,1),
Nombre varchar(50), 
Apellido varchar(50),
Correo varchar(50),
NombreUsuario varchar(50),
Contraseña Varchar(50),
);


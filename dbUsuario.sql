--Tabla categor�a
create table categoria(
	idcategoria integer primary key identity,
	nombre varchar(50) not null unique,
	descripcion varchar(256) null,
	condicion bit default(1)
);

--Tabla art�culo
create table articulo(
	idarticulo integer primary key identity,
	idcategoria integer not null,
	codigo varchar(50) null,
	nombre varchar(100) not null unique,
	precio_venta decimal(11,2) not null,
	stock integer not null,
	descripcion varchar(256) null,
	condicion bit default(1),
	FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria)
);


--Tabla rol
create table rol(
	idrol integer primary key identity,
	nombre varchar(30) not null,
	descripcion varchar(100) null,
	condicion bit default(1)
);

--Tabla usuario
create table usuario(
	idusuario integer primary key identity,
	idrol integer not null,
	nombre varchar(100) not null,
	tipo_documento varchar(20) null,
	num_documento varchar(20) null,
	direccion varchar(70) null,
	telefono varchar(20) null,
	email varchar(50) not null,
	password_hash varbinary not null,
	password_salt varbinary not null,
	condicion bit default(1),
	FOREIGN KEY (idrol) REFERENCES rol (idrol)
);


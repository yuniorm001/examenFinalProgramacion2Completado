/*CREANDO PROYECTO*/
go
create database proyecto_final_programacion2
go
/*USANDO PROYECTO*/
use proyecto_final_programacion2
go

/*CREANDO TABLAS*/
create table usuario
(
id_usuario int not null primary key,
nombre varchar(50),
correo varchar(50) unique not null,
clave char(10) not null,
estado char(8) not null
);

insert into prestamo values(12.1,1,1,1,'2019/01/01',1,'2019/01/01',21.3,12.1,12.1,12.1,12.1,12.1,12.1,12.1)



/*create table prestamo
(
monto_prestamo int,
interes_annual_porciento int,
periodo_prestamo_año int,
numero_pagos_año int,
fecha_inicio_prestamo datetime default getdate(),
no_prestamo int not null primary key,
fecha_de_pago datetime,
saldo_inicial decimal(13,10),
cuaota decimal(13,10),
avances decimal(13,10),
pago_total decimal(13,10),
capital decimal(13,10),
interes decimal(13,10),
balance_final decimal(13,10),
interes_acumulado decimal(13,10),
);*/

create table prestamo
(
monto_prestamo int,
interes_annual_porciento int,
periodo_prestamo_año int,
numero_pagos_año int,
fecha_inicio_prestamo datetime default getdate(),
no_prestamo int not null primary key,
fecha_de_pago datetime,
saldo_inicial decimal(6,5),
cuaota decimal(6,5),
avances decimal(6,5),
pago_total decimal(6,5),
capital decimal(6,5),
interes decimal(6,5),
balance_final decimal(6,5),
interes_acumulado decimal(6,5),
);




drop table prestamo
drop table cliente


create table cliente
(
id_cliente int not null primary key,
nombre varchar(50),
apellido varchar(50),
cedula char(11) unique not null,
fecha_nacimiento datetime,
edad char(2),
direccion char(50) default 'Desconocido' not null,
pais char(50) default 'República Dominicana' not null,
ciudad_provincia char(25) default 'Santo Domingo' not null,
telefono char(10),
celular char(10),
id_prestamo int,
constraint fk_id_prestamo foreign key (id_prestamo) references prestamo (no_prestamo),
);

go

insert into usuario 
values(1,'yunior','yuniorm001@gmail.com','123','activo')

insert into usuario 
values(2,'anuel','reym@gmail.com','28','inactivo')

delete from usuario

/*DROP*/
drop table usuario
drop table cliente
drop table prestamo

/*SELECT*/
select * from usuario
select * from prestamo
select * from cliente

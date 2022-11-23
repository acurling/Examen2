
create database UHGIMNASIO





Create table Persona
(
   cedula varchar(12), 
   nombre varchar(50) not null,
   apellido1 varchar(50) not null,

   tipo varchar(10) 
   CONSTRAINT PK_CEDULA PRIMARY KEY(cedula),
   CONSTRAINT CHK_TIPO CHECK (tipo='Empleado' or Tipo = 'Cliente')
)

insert into persona values('3', 'Felipe','Ramirez','Porras','Cliente'),('2', 'Daniel','Sanchez','Ocampo','Empleado')

alter table Persona
drop column direccion
Create table Telefono
(
  id int identity,
  cedula varchar(12),
  tipo varchar(12) not null,
  ntelefono varchar (12) not null
  CONSTRAINT PK_idtelefono PRIMARY KEY(id),
  CONSTRAINT FK_CEDULATELEFONO FOREIGN KEY(cedula) REFERENCES Persona(Cedula),
)

create table Direccion
(
	id int identity,
	cedula varchar(12),
	provincia varchar(20) not null,
	canton varchar(20) not null,
	Distrito varchar(20) not null,
	comentarios varchar(50) null
	 CONSTRAINT PK_iddireccion PRIMARY KEY(id),
    CONSTRAINT FK_CEDULAdireccion FOREIGN KEY(cedula) REFERENCES Persona(Cedula),
)

create table Usuario
(
   id int identity(1,1), 
   email varchar(50),
   clave varchar(50) not null,
   cedula varchar(12)
   CONSTRAINT PK_IDUSUARIO PRIMARY KEY(id),
   CONSTRAINT FK_CEDULAUSUARIO FOREIGN KEY(cedula) REFERENCES Persona(Cedula),
   CONSTRAINT UQ_EMAIL UNIQUE(email)
)
insert into Usuario values ('daniel@gmail.com','123',2), ('diana@gmail.com','456',1)
select * from Persona

select email, clave from usuario where email='daniel@gmail.com' and clave ='456'


create table FacturaMaestro
(
   nfactura int identity(1,1),
   cliente varchar(12),
   fecha datetime CONSTRAINT DF_FECHA DEFAULT GETDATE(),
   monto money CONSTRAINT DF_MONTO DEFAULT 0,
   iva  money CONSTRAINT DF_IVA DEFAULT 0,
   descuento money CONSTRAINT DF_descuento DEFAULT 0,
   CONSTRAINT PK_nfactura PRIMARY KEY(nfactura),
)

create table FacturaDetalle
(
   id int identity,
   nfactura int,
   cliente varchar(12),
   codigoServicio int,
   precioUnitario money CONSTRAINT DF_Preciounitatio DEFAULT 0,
   iva  money CONSTRAINT DF_IVAdetalle DEFAULT 0,
   descuento money CONSTRAINT DF_descuentoDetalle DEFAULT 0,
   CONSTRAINT PK_id PRIMARY KEY(id),
   CONSTRAINT FK_nfacturadetalle FOREIGN KEY(nfactura) REFERENCES FacturaMaestro(nfactura),
)


select cedula + ' ' + nombre + ' ' + apellido1 as Persona, cedula from persona
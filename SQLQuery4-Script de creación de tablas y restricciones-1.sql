create database  CineMaxCESDE;
go
use CineMaxCESDE;
go

------------------------------------------------
--Script de creación de tablas y restricciones--
------------------------------------------------

--tabla Peliculas 1
create table tblPeliculas (
IDpeliculas int primary key,
titulo varchar(50),
duracion int,
clasificacionEdad varchar(10),
precioBase money,
genero varchar(30)
);
go

--tabla Salas 2

CREATE TABLE tblSalas (
    SalaID INT PRIMARY KEY,
    NombreSala VARCHAR(50) NOT NULL,
    CapacidadSala INT NOT NULL
);
go

--tabla Clientes 3

CREATE TABLE tblClientes (
    ClienteID INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    CorreoElectronico VARCHAR(100) NOT NULL UNIQUE,
    fechaUltima date not null
);
go

--tabla Funciones 4

CREATE TABLE tblFunciones (
    FuncionID INT PRIMARY KEY,
    FK_PeliculaID INT NOT NULL,
    FK_SalaID INT NOT NULL,
    Horario DATETIME NOT NULL,

    CONSTRAINT FK_Funciones_Peliculas 
        FOREIGN KEY (FK_PeliculaID) 
        REFERENCES tblPeliculas(IDpeliculas),

    CONSTRAINT FK_Funciones_Salas 
        FOREIGN KEY (FK_SalaID) 
        REFERENCES tblSalas(SalaID)
);
go

--tabla Tickets 5

CREATE TABLE tblTickets (
TicketID int primary key,
FK_ClienteID int not null,
FK_FuncionID int not null,
CantidadTickets int not null,
PrecioTotalPagado float

CONSTRAINT FK_Tickets_Funciones
        FOREIGN KEY (FK_FuncionID) 
        REFERENCES tblFunciones(FuncionID),

CONSTRAINT FK_Tickets_Clientes
        FOREIGN KEY (FK_ClienteID)
        REFERENCES tblClientes(ClienteID)
);
go

--tabla Almacenados

create table Almacenados (
nickname varchar(50) primary key,
password varchar(15) not null,
lastLogin datetime,
ClienteID int
);
go

ALTER TABLE Almacenados
ADD CONSTRAINT FK_Almacenados_Cliente
FOREIGN KEY (ClienteID) 
REFERENCES tblClientes(ClienteID);
go
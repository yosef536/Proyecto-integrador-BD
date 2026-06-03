use CineMaxCESDE;
go

-----------------------------------------------------------
--Scripts de los Procedimientos Almacenados desarrollados--
-----------------------------------------------------------

--Primer proceso almacenado (registrar cliente)

create procedure uspcrearAlmacenados
    @nickname varchar(50),
    @password varchar(15),
    @lastLogin datetime,
    @ClienteID int

as
begin
    
    if exists (select nickname from Almacenados where nickname = @nickname)
        select 'El nombre de Usuario ya existe'
    Else
    begin

    insert into Almacenados (ClienteID,nickname, password, lastLogin)
    values (@ClienteID,@nickname, @password, @lastLogin)
    execute uspCrearAlmacenados 'Juan Perez', '7890', null
    execute uspCrearAlmacenados 'Maria Gomez','5678',null
    execute uspCrearAlmacenados 'Carlos Lopez','5678',null
    execute uspCrearAlmacenados 'Ana Martinez','2345',null
    execute uspCrearAlmacenados 'Luis Rodriguez','9587',null
    end
end;
go

--segundo proceso almacenado (actualiza la fecha de secion)

create procedure uspRegistroInicioSesion
    @nickname varchar(50)
    
as
begin
    update Almacenados 
    set lastLogin = GETDATE()
    where nickname = @nickname
    
    select 'OK' as resultado
    execute uspRegistroInicioSesion 'Juan Perez'
    execute uspRegistroInicioSesion 'Maria Gomez'
    execute uspRegistroInicioSesion 'Carlos Lopez'
    execute uspRegistroInicioSesion 'Ana Martinez'
    execute uspRegistroInicioSesion 'Luis Rodriguez'
end;
go


--tercer proceso almacenado (optiene todos los clientes)

CREATE PROCEDURE spobtener_Clientes
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * 
    FROM tblClientes;
END;
GO

--cuarto proceso almacenado (optiene clientes por id)

CREATE PROCEDURE sp_obtener_Clientes_por_id
    @ClienteID INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT ClienteID, Nombre, CorreoElectronico
    FROM tblClientes WHERE ClienteID = @ClienteID;
END;
GO


--quinto proceso alamacenado (borra clientes)

CREATE PROCEDURE sp_eliminar_Cliente
    @ClienteID INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM tblClientes WHERE ClienteID = @ClienteID;
END;
GO

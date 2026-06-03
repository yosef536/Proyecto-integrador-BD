use CineMaxCESDE;
go

------------------------------------------
--Script de inserción de datos de prueba--
------------------------------------------

--datos Peliculas 1

INSERT INTO tblPeliculas (IDpeliculas, titulo, duracion, clasificacionEdad, precioBase, genero) VALUES
(1,  'Inception',              148, 'PG-13', 15000.00, 'Ciencia Ficcion'),
(2,  'Toy Story',              81,  'G',     12000.00, 'Animacion'),
(3,  'The Dark Knight',        152, 'PG-13', 16000.50, 'Accion'),
(4,  'Deadpool',               108, 'R',     18000.75, 'Comedia'),
(5,  'Interstellar',           169, 'PG-13', 17000.00, 'Ciencia Ficcion'),
(6,  'Avengers Endgame',       181, 'PG-13', 20000.00, 'Accion'),
(7,  'Frozen II',              103, 'G',     14000.00, 'Animacion'),
(8,  'Joker',                  122, 'R',     19000.50, 'Drama'),
(9,  'Titanic',                195, 'PG-13', 18000.00, 'Romance'),
(10, 'The Matrix',             136, 'R',     17500.00, 'Ciencia Ficcion'),
(11, 'Gladiator',              155, 'R',     18500.00, 'Accion'),
(12, 'Shrek',                  90,  'G',     13000.00, 'Animacion'),
(13, 'The Conjuring',          112, 'R',     17000.75, 'Terror'),
(14, 'Spider-Man No Way Home', 148, 'PG-13', 21000.00, 'Accion'),
(15, 'Coco',                   105, 'G',     13500.00, 'Animacion'),
(16, 'Parasite',               132, 'R',     19500.00, 'Drama'),
(17, 'Jurassic Park',          127, 'PG-13', 16000.00, 'Aventura'),
(18, 'The Lion King',          88,  'G',     12500.00, 'Animacion'),
(19, 'Doctor Strange',         115, 'PG-13', 18000.00, 'Accion'),
(20, 'A Quiet Place',          90,  'PG-13', 16500.00, 'Terror');
go

--datos salas 2

INSERT INTO tblSalas (SalaID, NombreSala, capacidadSala) VALUES
(1, 'Sala 1', 80),
(2, 'Sala 2', 100),
(3, 'Sala 3', 120),
(4, 'Sala 4', 60),
(5, 'Sala 5', 150),
(6, 'Sala VIP 1', 40),
(7, 'Sala VIP 2', 35),
(8, 'Sala 3D 1', 90),
(9, 'Sala 3D 2', 110),
(10, 'Sala IMAX', 200);
go

--datos Clientes 3

INSERT INTO tblClientes (ClienteID, Nombre, CorreoElectronico, fechaUltima) VALUES
(1,  'Juan Perez',         'juan.perez1@gmail.com',         '2026-03-15'),
(2,  'Maria Gomez',        'maria.gomez2@gmail.com',        '2026-11-22'),
(3,  'Carlos Lopez',       'carlos.lopez3@gmail.com',       '2026-07-08'),
(4,  'Ana Martinez',       'ana.martinez4@gmail.com',       '2026-09-30'),
(5,  'Luis Rodriguez',     'luis.rodriguez5@gmail.com',     '2026-01-17'),
(6,  'Sofia Hernandez',    'sofia.hernandez6@gmail.com',    '2026-05-25'),
(7,  'Diego Torres',       'diego.torres7@gmail.com',       '2026-12-04'),
(8,  'Valentina Ramirez',  'valentina.ramirez8@gmail.com',  '2026-08-19'),
(9,  'Jorge Castro',       'jorge.castro9@gmail.com',       '2026-06-11'),
(10, 'Camila Vargas',      'camila.vargas10@gmail.com',     '2025-02-28'),
(11, 'Andres Morales',     'andres.morales11@gmail.com',    '2025-09-03'),
(12, 'Laura Rojas',        'laura.rojas12@gmail.com',       '2025-08-14'),
(13, 'Fernando Diaz',      'fernando.diaz13@gmail.com',     '2025-04-22'),
(14, 'Daniela Cruz',       'daniela.cruz14@gmail.com',      '2026-10-07'),
(15, 'Miguel Ortiz',       'miguel.ortiz15@gmail.com',      '2026-06-30'),
(16, 'Paula Herrera',      'paula.herrera16@gmail.com',     '2026-07-18'),
(17, 'Ricardo Jimenez',    'ricardo.jimenez17@gmail.com',   '2026-11-05'),
(18, 'Natalia Medina',     'natalia.medina18@gmail.com',    '2026-05-23'),
(19, 'Sebastian Vega',     'sebastian.vega19@gmail.com',    '2026-10-12'),
(20, 'Alejandra Pardo',    'alejandra.pardo20@gmail.com',   '2026-04-09'),
(21, 'Felipe Navarro',     'felipe.navarro21@gmail.com',    '2025-12-01'),
(22, 'Diana Campos',       'diana.campos22@gmail.com',      '2026-03-27'),
(23, 'Oscar Reyes',        'oscar.reyes23@gmail.com',       '2025-07-16'),
(24, 'Patricia Silva',     'patricia.silva24@gmail.com',    '2025-02-14'),
(25, 'Kevin Mendoza',      'kevin.mendoza25@gmail.com',     '2026-09-28'),
(26, 'Monica Guerrero',    'monica.guerrero26@gmail.com',   '2026-01-31'),
(27, 'Julian Salazar',     'julian.salazar27@gmail.com',    '2025-05-07'),
(28, 'Tatiana Cardenas',   'tatiana.cardenas28@gmail.com',  '2026-11-19'),
(29, 'David Castillo',     'david.castillo29@gmail.com',    '2026-03-24'),
(30, 'Angela Fuentes',     'angela.fuentes30@gmail.com',    '2026-08-11');
go

--datos Funciones 4

INSERT INTO tblFunciones (FuncionID, FK_PeliculaID, FK_SalaID, Horario) VALUES
(1, 1, 1, '2025-10-20 10:00:00'),
(2, 2, 2, '2025-10-20 10:30:00'),
(3, 3, 3, '2025-10-20 11:00:00'),
(4, 4, 4, '2025-10-20 11:30:00'),
(5, 5, 5, '2025-10-20 12:00:00'),
(6, 6, 6, '2025-10-20 12:30:00'),
(7, 7, 7, '2025-10-20 13:00:00'),
(8, 8, 8, '2025-10-20 13:30:00'),
(9, 9, 9, '2025-10-20 14:00:00'),
(10, 10, 10, '2025-10-20 14:30:00'),
(11, 11, 1, '2025-10-20 16:00:00'),
(12, 12, 2, '2025-10-20 16:30:00'),
(13, 13, 3, '2025-10-20 17:00:00'),
(14, 14, 4, '2025-10-20 17:30:00'),
(15, 15, 5, '2025-10-20 18:00:00'),
(16, 16, 6, '2025-10-20 18:30:00'),
(17, 17, 7, '2025-10-20 19:00:00'),
(18, 18, 8, '2025-10-20 19:30:00'),
(19, 19, 9, '2025-10-20 20:00:00'),
(20, 20, 10, '2025-10-20 20:30:00');
go

--datos Tickets 5

INSERT INTO tblTickets
(TicketID, FK_ClienteID, FK_FuncionID, CantidadTickets, PrecioTotalPagado) VALUES
(1, 2, 1, 2, 30000.00),
(2, 4, 3, 1, 16000.50),
(3, 7, 5, 3, 51000.00),
(4, 14, 2, 2, 24000.00),
(5, 17, 7, 4, 56000.00),
(6, 19, 10, 1, 17500.00),
(7, 28, 12, 2, 26000.00);
go

--datos de Almacenados

insert into Almacenados (ClienteID,nickname, password, lastLogin) values 
(1,  'Juan Perez', '7890','2026-03-15'),
(2,  'Maria Gomez', '5678', '2026-11-22'),
(3,  'Carlos Lopez', '4656', '2026-07-08'),
(4,  'Ana Martinez', '2345', '2026-09-30'),
(5,  'Luis Rodriguez', '9587', '2026-01-17')
go

--cuenta cuantas peliculas hay por genero

SELECT genero, COUNT(*) AS TotalPeliculas
FROM tblPeliculas
GROUP BY genero;
go

--suma la capacidad total de las salas 

SELECT SUM(capacidadSala) AS CapacidadTotal
FROM tblSalas;
go

--actualiza el nunero de capacidad de la sala (de la sala 1)

UPDATE tblSalas
set capacidadSala = 79
where SalaID = 1;
go

--muestra la capacidad de la salas 

select capacidadSala
from tblSalas
go

--muestra todos los datos de los clientes

select *
from tblClientes
go

--borra todo lo que este por debajo de la fecha (ultimos 3 meses)

delete from tblClientes
where fechaUltima  < '2026-09-30';
go

--Relacion entre peliculas, funciones y salas

SELECT tblPeliculas.Titulo as 'Titulo de la Pelicula', tblFunciones.Horario, tblSalas.NombreSala as 'Nombre de la Sala', tblSalas.CapacidadSala as 'Capacidad de la Sala'
FROM tblPeliculas
INNER JOIN tblFunciones
ON tblPeliculas.IDpeliculas = tblFunciones.FK_PeliculaID
INNER JOIN tblSalas
ON tblFunciones.FK_SalaID = tblSalas.SalaID;
go

--Clientes con tickest

SELECT c.ClienteID, c.Nombre, t.TicketID, t.CantidadTickets, t.PrecioTotalPagado
FROM tblClientes as c
INNER JOIN tblTickets as t 
ON c.ClienteID = t.FK_ClienteID;
go

-- Funciones con Tickets

SELECT f.FuncionID, f.Horario, t.TicketID, t.CantidadTickets
FROM tblFunciones as f
INNER JOIN tblTickets as t 
ON f.FuncionID = t.FK_FuncionID;
go
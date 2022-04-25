create table acceso (
ci int primary key,
	usuario varchar(30),
	password varchar(30),
	rol varchar(30)
);

create table persona
(   ci int primary key,
    nombrecompleto varchar(60),
    fechanac datetime,
    departamento varchar(2),
	d_dep varchar(30)
);

create table inscripcion
(   ciestudiante int,
    sigla varchar(10),
    nota1 int,
    nota2 int,
    nota3 int, 
    notafinal int
);
/*insertar valores a las tablas....*/
--tabla acceso
insert into acceso values (1234,'juan','juan123','estudiante');
insert into acceso values (2222,'mari','mari123','estudiante');
insert into acceso values (2345,'luis','luis123','docente');
insert into acceso values (4444,'alex','alex123','estudiante');
insert into acceso values (4567, 'eve','eve123','estudiante');
insert into acceso values (5555,'reina','reina123','director');
insert into acceso values (7875,'sergio','ser123','estudiante');

--tabla persona
insert into persona values(7875, 'Sergio Huanca Cuellar', '1996-25-02', '02','La Paz');
insert into persona values(3456, 'Aldo Ramos Vega', '1990-20-08', '04','Oruro');
insert into persona values(4567, 'Evelyn Condori Tarqui', '1995-20-01', '02','La Paz');
insert into persona values(2222, 'Mari Laura Cuellar', '1993-20-09', '07','Santa Cruz');
insert into persona values(5555, 'Reina Cruz Mayta', '1994-04-03', '07','Santa Cruz');
insert into persona values(4444, 'Alex Saavedra', '1988-03-12', '05', 'Potosi');
insert into persona values(2345, 'Luis Mara Alcon', '1998-11-11', '03','Cochabamba');
insert into persona values(1234, 'Juan Perez Paz', '1995-01-02', '01','Chiquisaca');

--tabla inscripcion
insert into inscripcion values(7875, 'INF-324', 30,20,35, 85);
insert into inscripcion values(7875, 'INF-325', 25,25,30, 80);
insert into inscripcion values(1234, 'INF-324', 20,25,15, 60);
insert into inscripcion values(1234, 'INF-317', 15,30,25, 70);
insert into inscripcion values(4567, 'INF-330', 18,25,30, 73);
insert into inscripcion values(2222, 'INF-324', 13,25,30, 68);
insert into inscripcion values(2222, 'INF-325', 10,25,30, 65);
insert into inscripcion values(4444, 'INF-324', 10,20,20, 50);


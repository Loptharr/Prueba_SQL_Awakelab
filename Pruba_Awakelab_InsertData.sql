-- INSERT DATA TO TABLES --

--Crear Secuencia
Create Sequence SEQ_ALUMN
MINVALUE 1
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

--Insertar data a tabla CURSO
insert into curso
values(1,'FullStack Java Trainee',2020);
insert into curso
values(2,'Desarrollo Android',2020);
insert into curso
values(3,'Data Base Adminitration Pro',2022);
insert into curso
values(4,'Curso sin tests',2021);

--Insertar data a tabla ALUMNO
insert into alumno
values(SEQ_ALUMN.NEXTVAL,16029856-3,'Mauricio Jorquera', 1);
insert into alumno
values(SEQ_ALUMN.NEXTVAL,10029676-7,'Oliver Atom', 1);
insert into alumno
values(SEQ_ALUMN.NEXTVAL,13024566-7,'Claudio Borrego', 2);
insert into alumno
values(SEQ_ALUMN.NEXTVAL,16029856-3,'Mauricio Jorquera', 2);
insert into alumno
values(SEQ_ALUMN.NEXTVAL,2503476-7,'Jonathan May', 3);
insert into alumno
values(SEQ_ALUMN.NEXTVAL,26058976-7,'Kenneth Cole', 3);

--Insertar data a tabla TEST
insert into test (id_test,nombre,descripcion,unidad,autor,fecha,curso_id_curso)
values(100,'Prueba annihilator', 'Prueba para aniquilar a los alumnos',4,'BadAss',DATE '2020-03-12',1);
insert into test
values(101,'Prueba annihilator2', 'Prueba para aniquilar a los alumnos2',6,'BadAss',DATE '2020-05-21',1);
insert into test
values(102,'Prueba Easy', 'Prueba para que pasen los alumnos',1,'SoftSpot',DATE '2020-02-15',2);
insert into test
values(103,'Prueba Easy2', 'Prueba para que pasen los alumnos2',2,'SoftSpot',DATE '2020-04-18',2);
insert into test
values(104,'Prueba DBA Master', 'Prueba para masters',1,'Killer',DATE '2022-06-14',3);
insert into test
values(105,'Prueba Sin alternativas', 'Prueba para masters',4,'Killer',DATE '2023-06-14',3);

--Insertar data a tabla PREGUNTAS
insert into preguntas
values(1,'Pregunta 1,Prueba annihilator',5,100);
insert into preguntas
values(2,'Pregunta 2,Prueba annihilator',5,100);
insert into preguntas
values(3,'Pregunta 3,Prueba annihilator',10,100);
insert into preguntas
values(4,'Pregunta 4,Prueba annihilator',7,100);

insert into preguntas
values(5,'Pregunta 1,Prueba annihilator2',6,101);
insert into preguntas
values(6,'Pregunta 2,Prueba annihilator2',10,101);
insert into preguntas
values(7,'Pregunta 3,Prueba annihilator2',8,101);

insert into preguntas
values(8,'Pregunta 1,Prueba Easy',4,102);
insert into preguntas
values(9,'Pregunta 2,Prueba Easy',7,102);
insert into preguntas
values(10,'Pregunta 3,Prueba Easy',10,102);

insert into preguntas 
values(11,'Pregunta 1,Prueba Easy2',5,103);
insert into preguntas
values(12,'Pregunta 2,Prueba Easy2',5,103);
insert into preguntas
values(13,'Pregunta 3,Prueba Easy2',10,103);
insert into preguntas
values(14,'Pregunta 4,Prueba Easy2',7,103);

insert into preguntas
values(15,'Pregunta 1,Prueba DBA Master',10,104);
insert into preguntas
values(16,'Pregunta 2,Prueba DBA Master',5,104);
insert into preguntas
values(17,'Pregunta 3,Prueba DBA Master',8,104);
insert into preguntas
values(18,'Pregunta 4,Prueba DBA Master',2,104);

--Insertar data a tabla ALTERNATIVAS
insert into alternativas
values(1,'Alternativa 1, preg 1',1,0.5,1);
insert into alternativas
values(2,'Alternativa 2, preg 1',0,0.5,1);
insert into alternativas
values(3,'Alternativa 3, preg 1',0,0.5,1);
insert into alternativas
values(4,'Alternativa 1, preg 2',1,0.5,5);
insert into alternativas
values(5,'Alternativa 2, preg 2',0,0.5,5);
insert into alternativas
values(6,'Alternativa 3, preg 2',0,0.5,5);

--Insertar data a tabla ALUMN_TEST
insert into alumn_test
values(1,1,100);
insert into alumn_test
values(2,2,100);
insert into alumn_test
values(3,3,101);
insert into alumn_test
values(4,4,101);

--Insertar data a tabla RESPUESTA_ALUM
insert into respuesta_alum
values(1,1,1,1);
insert into respuesta_alum
values(2,0,1,2);
insert into respuesta_alum
values(3,0,1,3);
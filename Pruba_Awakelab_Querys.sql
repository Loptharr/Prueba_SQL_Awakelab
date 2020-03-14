-- QUERYS --

--Conocer el número de evaluaciones por curso
select curso.nombre as "NOMBRE CURSO", count(*) as "EV X CURSO" from curso join test on (curso.id_curso=curso_id_curso)
group by curso.nombre;

--Conocer los cursos sin evaluaciones.
select nomCurs as "CURSOS SIN TESTS" from (select curso.nombre as nomCurs ,test.nombre as nomTest from curso left outer join test on (curso.id_curso=curso_id_curso))
where nomTest is null;

--Determinar las evaluaciones con deficiencia
select nomTest, numPreg from ( select test.nombre as nomTest, count(preguntas.test_id_test) as numPreg from test left outer join preguntas on (test.id_test=preguntas.test_id_test)group by test.nombre)
where numPreg = 0;

select * from (
select id_preguntas, count(*) as numAlt from preguntas join alternativas on (preguntas.id_preguntas=alternativas.preguntas_id_preguntas)
group by id_preguntas) WHERE numAlt>2;


--Determinar cuántos alumnos hay en cada curso.
select curso.nombre, count(*) as "alumnos x curso" from curso right outer join alumno on (alumno.curso_id_curso=curso.id_curso)
group by curso.nombre;

--Obtener  el  puntaje  no  normalizado  de  cada  evaluación.

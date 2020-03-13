-- QUERYS --

--Conocer el número de evaluaciones por curso
select curso.nombre as "NOMBRE CURSO", count(*) as "EV X CURSO" from curso join test on (curso.id_curso=curso_id_curso)
group by curso.nombre;

--Conocer los cursos sin evaluaciones.
select nomCurs from (select curso.nombre as nomCurs ,test.nombre as nomTest from curso left outer join test on (curso.id_curso=curso_id_curso))
where nomTest is null;

--Determinar las evaluaciones con deficiencia

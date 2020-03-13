-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-03-12 21:09:14 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE alternativas (
    id_alt                  INTEGER NOT NULL,
    descripcion             VARCHAR2(30 CHAR) NOT NULL,
    escorrecta              CHAR(1) NOT NULL,
    percent_aporte          NUMBER,
    preguntas_id_preguntas  INTEGER NOT NULL
);

ALTER TABLE alternativas ADD CONSTRAINT alternativas_pk PRIMARY KEY ( id_alt );

CREATE TABLE alumn_test (
    id_alumn_test     INTEGER NOT NULL,
    alumno_id_alumno  INTEGER NOT NULL,
    test_id_test      INTEGER NOT NULL
);

ALTER TABLE alumn_test ADD CONSTRAINT alumn_test_pk PRIMARY KEY ( id_alumn_test );

CREATE TABLE alumno (
    id_alumno       INTEGER NOT NULL,
    rut             VARCHAR2(10 CHAR) NOT NULL,
    nombre          VARCHAR2(30 CHAR) NOT NULL,
    curso_id_curso  INTEGER NOT NULL
);

ALTER TABLE alumno ADD CONSTRAINT alumno_pk PRIMARY KEY ( id_alumno );

CREATE TABLE curso (
    id_curso    INTEGER NOT NULL,
    nombre      VARCHAR2(30 CHAR) NOT NULL,
    generacion  INTEGER NOT NULL
);

ALTER TABLE curso ADD CONSTRAINT curso_pk PRIMARY KEY ( id_curso );

CREATE TABLE preguntas (
    id_preguntas      INTEGER NOT NULL,
    enunciado         VARCHAR2(40 CHAR) NOT NULL,
    puntaje_asociado  FLOAT,
    test_id_test      INTEGER NOT NULL
);

ALTER TABLE preguntas ADD CONSTRAINT preguntas_pk PRIMARY KEY ( id_preguntas );

CREATE TABLE respuesta_alum (
    id_respuests              INTEGER NOT NULL,
    fueselec                  CHAR(1) NOT NULL,
    alumn_test_id_alumn_test  INTEGER NOT NULL,
    alternativas_id_alt       INTEGER NOT NULL
);

CREATE UNIQUE INDEX respuesta_alum__idx ON
    respuesta_alum (
        alternativas_id_alt
    ASC );

ALTER TABLE respuesta_alum ADD CONSTRAINT respuesta_alum_pk PRIMARY KEY ( id_respuests );

CREATE TABLE test (
    id_test         INTEGER NOT NULL,
    nombre          VARCHAR2(30 CHAR),
    descripcion     VARCHAR2(50 CHAR),
    unidad          INTEGER NOT NULL,
    autor           VARCHAR2(25 CHAR),
    fecha           DATE NOT NULL,
    curso_id_curso  INTEGER NOT NULL
);

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( id_test );

ALTER TABLE alternativas
    ADD CONSTRAINT alternativas_preguntas_fk FOREIGN KEY ( preguntas_id_preguntas )
        REFERENCES preguntas ( id_preguntas );

ALTER TABLE alumn_test
    ADD CONSTRAINT alumn_test_alumno_fk FOREIGN KEY ( alumno_id_alumno )
        REFERENCES alumno ( id_alumno );

ALTER TABLE alumn_test
    ADD CONSTRAINT alumn_test_test_fk FOREIGN KEY ( test_id_test )
        REFERENCES test ( id_test );

ALTER TABLE alumno
    ADD CONSTRAINT alumno_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );

ALTER TABLE preguntas
    ADD CONSTRAINT preguntas_test_fk FOREIGN KEY ( test_id_test )
        REFERENCES test ( id_test );

ALTER TABLE respuesta_alum
    ADD CONSTRAINT respuesta_alum_alternativas_fk FOREIGN KEY ( alternativas_id_alt )
        REFERENCES alternativas ( id_alt );

ALTER TABLE respuesta_alum
    ADD CONSTRAINT respuesta_alum_alumn_test_fk FOREIGN KEY ( alumn_test_id_alumn_test )
        REFERENCES alumn_test ( id_alumn_test );

ALTER TABLE test
    ADD CONSTRAINT test_curso_fk FOREIGN KEY ( curso_id_curso )
        REFERENCES curso ( id_curso );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             1
-- ALTER TABLE                             15
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0

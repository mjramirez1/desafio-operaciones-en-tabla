-- parte 1
-- creación de base de datos
CREATE DATABASE posts;
-- acceso a la base de datos
\c posts;
-- creación de tabla
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    nombre_usuario VARCHAR(30) NOT NULL,
    fecha_creacion DATE NOT NULL,
    contenido VARCHAR(300) NOT NULL,
    descripcion VARCHAR(100) NOT NULL
    );
-- insertar datos
INSERT INTO posts (
    nombre_usuario,
    fecha_creacion,
    contenido, 
    descripcion) 
    VALUES ('Pamela', '2022-04-05', 'Hola mundo', 'Mi primer post, aprendiendo a usar PostgreSQL');
INSERT INTO posts (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Pamela', '2022-04-05', 'Hola universo', 'Mi segundo post, acabo de colapsar con PostgreSQL :(');
INSERT INTO posts (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('Carlos', '2022-04-05', 'Hola mundo', 'Estoy aprendiendo PostgreSQL');
-- modificar tabla (agregar columna)
ALTER TABLE posts ADD titulo VARCHAR(100);
-- actualizar datos de la tabla (agregar datos a titulo)
UPDATE posts SET titulo = 'Mi primer post' WHERE id = 1;
UPDATE posts SET titulo = 'Mi segundo post' WHERE id = 2;
UPDATE posts SET titulo = 'Mi primer post' WHERE id = 3;
-- insertar nuevo usuario
INSERT INTO posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '2022-04-05', 'Hola k ace', 'Hola soy Pedro estoy jugando con PostgreSQL', 'Mi primer post');
INSERT INTO posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Pedro', '2022-04-05', 'Mi post para mejorar mis conocimientos', 'Acá Pedro actualizando', 'Mi segundo post');
-- eliminar datos de la tabla
DELETE FROM posts WHERE id = 3;
-- insertar nuevo post
INSERT INTO posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Carlos', '2022-04-05', 'Hola soy Carlos otra vez, me hackearon, pero he vuelto', 'Sufriendo con los hackers', 'De vuelta a la vida');
-- parte 2
-- creación de tabla
CREATE TABLE comentarios (id SERIAL PRIMARY KEY, fecha DATE NOT NULL, hora_creacion TIME NOT NULL, contenido VARCHAR(300) NOT NULL, id_post INT, FOREIGN KEY (id_post) REFERENCES posts(id) );
-- insertar datos 
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '21:31:00', 'Hola Pamela, bienvenida', 1);
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '21:31:00', 'Hola Pamela, ¿cómo te ido con PostgreSQL?', 1);
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '21:53:20', 'Hola Carlos, ¿cómo te ido con PostgreSQL?', 6);
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '22:03:02', 'Carlos, no has presentado tu avance.', 6);
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '22:24:00', 'Oh Carlos, que pena lo sucedido con el hack', 6);
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '22:26:30', '¿Te robaron alguna información importante?', 6);
-- modificar tabla (agregar nuevo usuario y post)
INSERT INTO posts (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('Margarita', '2022-04-05', 'Hola mundo', 'Mi primer post, estoy aprendiendo a usar PostgreSQL', 'Inicializando PostgreSQL');
-- insertar comentario
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '20:37:00', 'Hola Margarita, bienvenida', 7);
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '22:32:00', 'Hola Margarita, ¿cómo van tus avances con PostgreSQL?', 7);
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '22:53:20', 'Margarita, ¿qué es PostgreSQL?', 7);
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '23:03:02', '¿Das clases de PostgreSQL?', 7);
INSERT INTO comentarios (fecha, hora_creacion, contenido, id_post) VALUES ('2022-04-05', '23:24:00', 'Margarita, eres seca!!!!', 7);
--parte 1
CREATE DATABASE post 
--\c post
CREATE TABLE post(id SERIAL, nombre_usuario VARCHAR(70), fecha_de _creacion DATE, contenido VARCHAR(70), descripcion VARCHAR(200));
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion) VALUES('pamela', '2020-08-31', 'ensayo', 'ensayo sobre la naturaleza del rio bravo'), ('pamela', '2020-09-01', 'monografia', 'opinion sobre el estado social'), ('carlos', '2020-09-02', 'articulo', 'desempeño de los maestros virtuales'); 
ALTER TABLE post ADD COLUMN titulo VARCHAR(70);
UPDATE post SET titulo='rio_bravo' WHERE id=1;
UPDATE post SET titulo='politica_actual' WHERE id=2;
UPDATE post SET titulo='eduacion distancia' WHERE id=3;
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('pedro', '2020-09-03', 'columna_opinion', 'opiniones sobre la afectacion de la pandemia', 'pandemia'), ('pedro', '2020-09-04', 'resumen', 'situacion economica del pais', 'economia actual');
DELETE FROM post WHERE id=3;
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('carlos', '2020-09-05', 'articulo', 'desempeño maestros virtuales', 'educacion');
--parte 2
CREATE TABLE comentarios(id INT, fecha TIMESTAMP, contenido VARCHAR(70));
ALTER TABLE post ADD PRIMARY KEY(id);
ALTER TABLE comentarios ADD FOREIGN KEY(id) REFERENCES post(id);
INSERT INTO comentarios (id, fecha, contenido) VALUES(1, '2020-09-08 10:30:00', 'me parece una burla al rio bravo'), (2, '2020-10-11 11:45:30', 'me gusta la forma de escribir'), (6, '2020-09-15 12:30:45', 'los maestros deben mejorar'), (6, '2020-09-14 10:30:20', 'espero el material sea suficiente'), (6, '2020-08-10 11:40:30', 'el proyecto de eduacion no convence'), (6, '2020-09-20 12:30:05', 'el proyecto tiene vacios');
INSERT INTO post(nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES('margarita', '2020-08-15', 'articulo', 'investigaciones sobre la posibilidad de vida en marte', 'vida en marte');
INSERT INTO comentarios (id, fecha, contenido) VALUES(7, '2020-09-08 10:30:00', 'me parece una burla la vida en marte'), (7, '2020-10-11 11:45:30', 'me gusta la forma de escribir'), (7, '2020-09-15 12:30:45', 'los marcianos deben mejorar'), (7, '2020-09-14 10:30:20', 'espero el material sea suficiente'), (7, '2020-08-10 11:40:30', 'el proyecto de los marcianos no me convence');
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
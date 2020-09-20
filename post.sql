DROP TABLE comentarios;
DROP TABLE post;

--1--
-- sebastianandres=# CREATE DATABASE post;
-- \c post;

--2--

CREATE TABLE post(
    id_post serial PRIMARY KEY,
    nombre_usuario VARCHAR(20) NOT NULL,
    fecha_creacion DATE,
    contenido VARCHAR(60),
    descripcion VARCHAR(40)
);
--3--
INSERT INTO post(
    nombre_usuario
) 

VALUES
    ('PAMELA'), 
    ('CARLOS'), 
    ('PAMELA'
);

--4--
ALTER TABLE post 
ADD COLUMN titulo VARCHAR(20);

--5--
UPDATE post
SET titulo = 'titulo_1'
WHERE id_post = 1;


UPDATE post
SET titulo = 'titulo_2'
WHERE id_post = 2;


UPDATE post
SET titulo = 'titulo_3'
WHERE id_post = 3;

--6--

INSERT INTO post(
    nombre_usuario,
    descripcion,
    fecha_creacion,
    contenido,
    titulo
) 

VALUES
    ('PEDRO', 'd_1', '01-09-2020', 'FRONTEND', 'titulo_4'
);

--7--

DELETE FROM post
WHERE nombre_usuario='CARLOS';

--8--

INSERT INTO post(
    nombre_usuario,
    descripcion,
    fecha_creacion,
    contenido,
    titulo
) 

VALUES
    ('CARLOS', 'd_2', '09-18-2020', 'BACKEND', 'titulo_5'
);


--PARTE 2 --


--9--
CREATE TABLE comentarios(
    id_c INT,
    FOREIGN KEY (id_c) REFERENCES post(id_post),
    fecha_creacion TIMESTAMP,
    contenido VARCHAR(60)
);




--10--

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '1','01-09-2020 22:00:00','CONTENIDO_1'
);

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '3','02-09-2020 22:30:00','CONTENIDO_2'
);

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '5','05-09-2020 23:00:00','CONTENIDO_1'
);

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '5','05-10-2020 23:00:00','CONTENIDO_2'
);

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '5','03-10-2020 23:00:00','CONTENIDO_3'
);

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '5','03-10-2020 18:00:00','CONTENIDO_4'
);

--11--

INSERT INTO post(
    nombre_usuario,
    descripcion,
    fecha_creacion,
    contenido,
    titulo
) 

VALUES
    ('MARGARITA', 'd_3', '01-09-2020', 'FRONTEND', 'titulo_6'
);

--12--

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '6','03-10-2020 23:00:00','CONTENIDO_1'
);

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '6','03-10-2020 23:00:00','CONTENIDO_2'
);

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '6','03-10-2020 23:00:00','CONTENIDO_3'
);

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '6','03-10-2020 23:00:00','CONTENIDO_4'
);

INSERT INTO comentarios(
    id_c,
    fecha_creacion,
    contenido
) 

VALUES(
    '6','03-10-2020 23:00:00','CONTENIDO_5'
);


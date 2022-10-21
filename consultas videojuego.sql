USE VIDEOJUEGO;

SELECT * from distribuidora;
SELECT * from cliente;
SELECT * from contenido;
SELECT * from aplicacion;
SELECT * from juego;

#  Mostrar la información del título de todos los juegos y aplicaciones ordenados de la Z-A
SELECT con_titulo FROM contenido
	ORDER BY con_titulo DESC;
#Mostrar el nombre de los juegos que incluyan dentro de su clasificación el carácter + (más)
SELECT con_titulo 
	FROM contenido JOIN juego
		ON contenido.con_id =juego.jug_id
	WHERE jug_clasificacion  like "%+%";
#Mostrar nombre, clasificación y categoría de los juegos de Activision 
SELECT con_titulo,jug_clasificacion,jug_categoria 
	FROM contenido JOIN juego JOIN distribuidora
		ON contenido.con_id =juego.jug_id AND distribuidora.dis_id=juego.jug_distribuidor
	WHERE dis_nombre LIKE '%Activision%';
#       Mostrar el titulo de los juegos y aplicaciones que adquirió el usuario hoodoo
SELECT con_titulo 
	FROM contenido JOIN biblioteca JOIN cliente
		ON contenido.con_id= biblioteca.bib_contenido AND biblioteca.bib_tag=cliente.cli_tag
	WHERE cli_tag LIKE '%hoodoo%';
#      Mostrar nombre completo de las personas que adquirieron Spyro Reignited Trilogy, ordenados de la A-Z
SELECT cli_nombre
	FROM contenido JOIN biblioteca JOIN cliente
		ON contenido.con_id= biblioteca.bib_contenido AND biblioteca.bib_tag=cliente.cli_tag
        WHERE con_titulo LIKE '%Spyro Reignited Trilogy%'
        ORDER BY cli_nombre ASC;
#Mostrar cuantas aplicaciones son de tipo Música
SELECT count(app_tipo)
	FROM aplicacion
	WHERE app_tipo LIKE '%Música%';
#Mostrar la columna email del usuario andre09
SELECT cli_email FROM cliente
	WHERE cli_tag ='andre09';
SELECT * from biblioteca;
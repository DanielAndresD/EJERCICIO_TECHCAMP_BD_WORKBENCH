USE videojuego;
#Cambiar el nombre de la aplicación Spotify Music por Spotify.
UPDATE contenido 
	SET con_titulo = 'Spotify'
	WHERE con_id=7;
#Cambiar el email del cliente andre09 por andre@outloook.com.
UPDATE cliente
	SET cli_email='andre@outloook.com'
	WHERE cli_tag='andre09';
#Borrar de la librería de holy el juego " Tetris Effect: Connected "
DELETE FROM biblioteca
	WHERE (bib_tag='holy' AND bib_contenido=1);
# Cambiar USA por Estados Unidos en todas las distribuidoras que sean de ese país.
UPDATE distribuidora
	SET dis_pais='Estados Unidos'
    WHERE dis_pais like '%USA%';
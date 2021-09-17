/***** Seleccione los nombres de las personas que tienen más de un hijo ******/

SELECT nombre FROM edades
WHERE id IN (   SELECT idpadre
                FROM edades     
                GROUP BY idpadre 
                HAVING COUNT(*) > 1
            )


/***** Quiénes son mayores de edad? ******/

SELECT id, nombre, edad FROM edades
WHERE edad > 18


/****** Quiénes son abuelos? ******/

#Realizamos la consulta para saber quienes son padres
SELECT idpadre,nombre FROM edades
WHERE id IN (SELECT
            idpadre
            FROM edades
            ORDER BY idpadre)
 
#hacemos un JOIN para saber las relaciones padre e hijo y cuales hijos son padres
SELECT 
DISTINCT hijo.id AS id,
hijo.nombre AS Abuelos,
hijo.edad AS edad_actual
FROM edades AS hijo
JOIN edades AS padre ON hijo.id = padre.idpadre
WHERE hijo.id IN (
        SELECT idpadre FROM edades
        WHERE id IN (SELECT
                    idpadre
                    FROM edades
                    ORDER BY idpadre)
)
ORDER BY id



/****** A qué edad tuvo su primer hijo cada padre? ******/

#definimos un alias y hacemos un JOIN para saber las relaciones padre e hijo
SELECT 
hijo.id AS id,
hijo.nombre AS nombre,
hijo.edad AS edad_actual_padre,
padre.nombre AS nombre_hijo,
padre.edad AS edad_actual_hijo,
hijo.edad - padre.edad AS edad_del_padre_cuando_nacio_el_hijo
FROM edades AS hijo
JOIN edades AS padre ON hijo.id = padre.idpadre
ORDER BY id




/****** Cuántos hijos tiene Rafael? ******/

#Solucion 1
SELECT COUNT(*) AS Nro_Hijos_Rafael FROM edades WHERE idpadre = 1

#Solucion 2
SELECT COUNT(*) AS Nro_de_hijos_Rafael FROM edades 
WHERE idpadre IN (SELECT id FROM edades
                    WHERE id IN (   SELECT idpadre
                                    FROM edades     
                                    GROUP BY idpadre 
                                    HAVING COUNT(*) > 1
                                ))

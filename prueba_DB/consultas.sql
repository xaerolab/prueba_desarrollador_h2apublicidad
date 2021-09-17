/*Seleccione los nombres de las personas que tienen más de un hijo*/
SELECT nombre FROM edades
WHERE id IN (   SELECT idpadre
                FROM edades     
                GROUP BY idpadre 
                HAVING COUNT(*) > 1
            )


/*Quiénes son mayores de edad?*/
SELECT id, nombre, edad FROM edades
WHERE edad > 18


/*Quiénes son abuelos?*/




/* A qué edad tuvo su primer hijo cada padre? */




/* Cuántos hijos tiene Rafael? */
/*Solucion 1*/
SELECT COUNT(*) AS Nro_Hijos_Rafael FROM edades WHERE idpadre = 1

/*Solucion 2*/
SELECT COUNT(*) AS Nro_de_hijos_Rafael FROM edades 
WHERE idpadre IN (SELECT id FROM edades
                    WHERE id IN (   SELECT idpadre
                                    FROM edades     
                                    GROUP BY idpadre 
                                    HAVING COUNT(*) > 1
                                ))

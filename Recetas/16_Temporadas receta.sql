USE recetas_para_aprobar;
GO

SELECT 
    r.nombre AS 'RECETA',
    CASE 
        WHEN COUNT(DISTINCT t.id_temporada) = 1 THEN MAX(t.nombre)
        ELSE 'Varias temporadas'
    END AS 'TEMPORADA',
    STUFF((
        SELECT ', ' + t2.nombre
        FROM ingredientes_recetas ir2
        JOIN ingredientes i2 ON ir2.id_ingrediente = i2.id_ingrediente
        JOIN temporadas t2 ON i2.id_temporada = t2.id_temporada
        WHERE ir2.id_receta = r.id_receta
        GROUP BY t2.nombre
        FOR XML PATH('')
    ), 1, 2, '') AS 'TEMPORADAS COMBINADAS'
FROM 
    recetas r
JOIN 
    ingredientes_recetas ir ON r.id_receta = ir.id_receta
JOIN 
    ingredientes i ON ir.id_ingrediente = i.id_ingrediente
JOIN 
    temporadas t ON i.id_temporada = t.id_temporada
GROUP BY 
    r.id_receta, r.nombre
ORDER BY 
    r.nombre;
GO
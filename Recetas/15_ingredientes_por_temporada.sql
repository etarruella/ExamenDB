USE recetas_para_aprobar;
GO

SELECT 
    t.nombre AS 'TEMPORADA',
    COUNT(i.id_ingrediente) AS 'NÚMERO DE INGREDIENTES',
    STRING_AGG(i.nombre, ', ') AS 'LISTADO DE INGREDIENTES'
FROM 
    temporadas t
LEFT JOIN 
    ingredientes i ON t.id_temporada = i.id_temporada
GROUP BY 
    t.nombre, t.id_temporada
ORDER BY 
    t.id_temporada;
GO
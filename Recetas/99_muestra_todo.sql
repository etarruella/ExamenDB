USE recetas_para_aprobar;
GO

-- Mostrar contenido de todas las tablas con formato claro
PRINT '========================================';
PRINT 'CONTENIDO COMPLETO DE LA BASE DE DATOS';
PRINT '========================================';
PRINT '';

-- Tabla dificultades
PRINT 'DIFICULTADES:';
PRINT '-------------';
SELECT * FROM dificultades;
PRINT '';

-- Tabla categorias
PRINT 'CATEGORÍAS:';
PRINT '-----------';
SELECT * FROM categorias;
PRINT '';

-- Tabla temporadas
PRINT 'TEMPORADAS:';
PRINT '----------';
SELECT * FROM temporadas;
PRINT '';

-- Tabla ingredientes
PRINT 'INGREDIENTES:';
PRINT '------------';
SELECT 
    i.id_ingrediente AS 'ID',
    i.nombre AS 'Ingrediente',
    t.nombre AS 'Temporada'
FROM 
    ingredientes i
JOIN 
    temporadas t ON i.id_temporada = t.id_temporada;
PRINT '';

-- Tabla recetas
PRINT 'RECETAS:';
PRINT '-------';
SELECT 
    r.id_receta AS 'ID',
    r.nombre AS 'Receta',
    d.nombre AS 'Dificultad',
    c.nombre AS 'Categoría',
    r.tiempo_elaboracion AS 'Tiempo (min)',
    LEFT(r.instrucciones, 50) + '...' AS 'Instrucciones (resumen)'
FROM 
    recetas r
JOIN 
    dificultades d ON r.id_dificultad = d.id_dificultad
JOIN 
    categorias c ON r.id_categoria = c.id_categoria;
PRINT '';

-- Tabla ingredientes_recetas
PRINT 'INGREDIENTES POR RECETA:';
PRINT '----------------------';
SELECT 
    r.nombre AS 'Receta',
    i.nombre AS 'Ingrediente',
    ir.cantidad_gramos AS 'Gramos',
    t.nombre AS 'Temporada'
FROM 
    ingredientes_recetas ir
JOIN 
    recetas r ON ir.id_receta = r.id_receta
JOIN 
    ingredientes i ON ir.id_ingrediente = i.id_ingrediente
JOIN 
    temporadas t ON i.id_temporada = t.id_temporada
ORDER BY 
    r.nombre, i.nombre;
PRINT '';

-- Resumen estadístico
PRINT 'ESTADÍSTICAS:';
PRINT '-----------';
SELECT 
    (SELECT COUNT(*) FROM dificultades) AS 'Total dificultades',
    (SELECT COUNT(*) FROM categorias) AS 'Total categorías',
    (SELECT COUNT(*) FROM temporadas) AS 'Total temporadas',
    (SELECT COUNT(*) FROM ingredientes) AS 'Total ingredientes',
    (SELECT COUNT(*) FROM recetas) AS 'Total recetas',
    (SELECT COUNT(*) FROM ingredientes_recetas) AS 'Total relaciones ingredientes-recetas';
GO
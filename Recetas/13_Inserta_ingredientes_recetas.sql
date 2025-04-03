USE recetas_para_aprobar;
GO

-- Primero obtener el ID de la receta "Sopa de Calabaza"
DECLARE @id_receta INT;
SELECT @id_receta = id_receta FROM recetas WHERE nombre = 'Sopa de Calabaza';

-- Verificar que existe la receta
IF @id_receta IS NOT NULL
BEGIN
    -- Obtener IDs de los ingredientes
    DECLARE @id_calabaza INT, @id_cebolla_tierna INT, @id_perejil INT;
    
    SELECT @id_calabaza = id_ingrediente FROM ingredientes WHERE nombre = 'Calabaza';
    SELECT @id_cebolla_tierna = id_ingrediente FROM ingredientes WHERE nombre = 'Cebolla tierna';
    SELECT @id_perejil = id_ingrediente FROM ingredientes WHERE nombre = 'Perejil';
    
    -- Insertar ingredientes de la receta
    INSERT INTO ingredientes_recetas (id_receta, id_ingrediente, cantidad_gramos) VALUES
    (@id_receta, @id_calabaza, 500),
    (@id_receta, @id_cebolla_tierna, 150),
    (@id_receta, @id_perejil, 5);
    
    PRINT '3 ingredientes para la receta insertados correctamente.';
END
ELSE
BEGIN
    PRINT 'Error: No se encontró la receta "Sopa de Calabaza".';
END
GO
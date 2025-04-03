USE recetas_para_aprobar;
GO

DECLARE @id_categoria INT, @id_dificultad INT;

-- Obtener IDs necesarios
SELECT @id_categoria = id_categoria FROM categorias WHERE nombre = 'Sopas';
SELECT @id_dificultad = id_dificultad FROM dificultades WHERE nombre = 'Elaborada';

-- Insertar receta
INSERT INTO recetas (nombre, instrucciones, tiempo_elaboracion, id_categoria, id_dificultad)
VALUES (
    'Sopa de Calabaza',
    'Cortar la calabaza (500grm) en cubos y caramelizar la cebolla tierna (150 grm). Cocinar hasta que la calabaza esté tierna. Triturar. Servir caliente, decorada con perejil fresco (5 gr).',
    30,
    @id_categoria,
    @id_dificultad
);

PRINT 'Receta "Sopa de Calabaza" insertada correctamente.';
GO
USE recetas_para_aprobar;
GO

-- Usando c�digos de temporada (m�s eficiente en espacio)
-- 1: Invierno, 2: Primavera, 3: Verano, 4: Oto�o
IF NOT EXISTS (SELECT 1 FROM ingredientes WHERE nombre = 'Manzana')
BEGIN
    INSERT INTO ingredientes (nombre, id_temporada) VALUES
    ('Manzana', 4),('Pera', 4),('Calabaza', 4),('Boniato', 4),('Nuez', 4),
    ('Casta�a', 4),('Col', 4),('Br�coli', 4),('Coliflor', 4),('Champi��n', 4),
    ('Naranja', 1),('Mandarina', 1),('Pomelo', 1),('Kiwi', 1),('Lim�n', 1),
    ('Zanahoria', 1),('Nabos', 1),('Remolacha', 1),('Puerro', 1),('Col lombarda', 1),
    ('Fresa', 2),('Cereza', 2),('Albaricoque', 2),('Esp�rrago', 2),('Guisante', 2),
    ('Acelga', 2),('Espinaca', 2),('Rabanito', 2),('Cebolla tierna', 2),('Lechuga', 2),
    ('Tomate', 3),('Pepino', 3),('Mel�n', 3),('Sand�a', 3),('Pimiento', 3),
    ('Berenjena', 3),('Calabac�n', 3),('Ma�z', 3),('Albahaca', 3),('Perejil', 3);
    
    PRINT '40 ingredientes insertados correctamente.';
END
ELSE
BEGIN
    PRINT 'Los ingredientes ya estaban insertados.';
END
GO
USE recetas_para_aprobar;
GO

-- Verificar si ya existen registros para evitar duplicados
IF NOT EXISTS (SELECT 1 FROM categorias)
BEGIN
    INSERT INTO categorias (nombre) VALUES 
    ('Entrantes'), ('Ensaladas'), ('Sopas'), ('Cremas'), ('Hortalizas'),
    ('Legumbres'), ('Huevos'), ('Arroces'), ('Pastas'), ('Aves'),
    ('Carnes'), ('Pescados'), ('Mariscos'), ('Postres');
    
    PRINT '14 categor�as insertadas correctamente.';
END
ELSE
BEGIN
    PRINT 'Las categor�as ya estaban insertadas.';
END
GO
USE recetas_para_aprobar;
GO

IF NOT EXISTS (SELECT 1 FROM temporadas)
BEGIN
    INSERT INTO temporadas (nombre) VALUES 
    ('Invierno'), ('Primavera'), ('Verano'), ('Otoño');
    
    PRINT '4 temporadas insertadas correctamente.';
END
ELSE
BEGIN
    PRINT 'Las temporadas ya estaban insertadas.';
END
GO
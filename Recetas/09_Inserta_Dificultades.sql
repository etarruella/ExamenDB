USE recetas_para_aprobar;
GO

IF NOT EXISTS (SELECT 1 FROM dificultades)
BEGIN
    INSERT INTO dificultades (nombre) VALUES 
    ('Muy fácil'), ('Elaborada'), ('Complicada');
    
    PRINT '3 niveles de dificultad insertados correctamente.';
END
ELSE
BEGIN
    PRINT 'Los niveles de dificultad ya estaban insertados.';
END
GO
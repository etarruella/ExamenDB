USE recetas_para_aprobar;
GO

IF OBJECT_ID('temporadas', 'U') IS NULL
BEGIN
    CREATE TABLE temporadas (
        id_temporada INT IDENTITY(1,1) PRIMARY KEY,
        nombre VARCHAR(10) NOT NULL CONSTRAINT CK_Temporada_Nombre 
            CHECK (nombre IN ('Verano', 'Invierno', 'Primavera', 'Oto�o'))
    );
    
    INSERT INTO temporadas (nombre) VALUES 
    ('Verano'), ('Invierno'), ('Primavera'), ('Oto�o');
    
    PRINT 'Tabla temporadas creada con �xito.';
END
ELSE
BEGIN
    PRINT 'La tabla temporadas ya existe.';
END
GO
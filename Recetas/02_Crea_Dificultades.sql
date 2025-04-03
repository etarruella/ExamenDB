USE recetas_para_aprobar;
GO

IF OBJECT_ID('dificultades', 'U') IS NULL
BEGIN
    CREATE TABLE dificultades (
        id_dificultad INT IDENTITY(1,1) PRIMARY KEY,
        nombre VARCHAR(20) NOT NULL CONSTRAINT CK_Dificultad_Nombre 
            CHECK (nombre IN ('Muy f�cil', 'Elaborada', 'Complicada'))
    );
    
    INSERT INTO dificultades (nombre) VALUES 
    ('Muy f�cil'), 
    ('Elaborada'), 
    ('Complicada');
    
    PRINT 'Tabla dificultades creada con �xito.';
END
ELSE
BEGIN
    PRINT 'La tabla dificultades ya existe.';
END
GO
USE recetas_para_aprobar;
GO

IF OBJECT_ID('ingredientes', 'U') IS NULL
BEGIN
    CREATE TABLE ingredientes (
        id_ingrediente INT IDENTITY(1,1) PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL,
        id_temporada INT NOT NULL,
        CONSTRAINT FK_Ingredientes_Temporadas FOREIGN KEY (id_temporada) 
            REFERENCES temporadas(id_temporada)
    );
    
    PRINT 'Tabla ingredientes creada con éxito.';
END
ELSE
BEGIN
    PRINT 'La tabla ingredientes ya existe.';
END
GO
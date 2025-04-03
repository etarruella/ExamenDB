USE recetas_para_aprobar;
GO

IF OBJECT_ID('recetas', 'U') IS NULL
BEGIN
    CREATE TABLE recetas (
        id_receta INT IDENTITY(1,1) PRIMARY KEY,
        nombre VARCHAR(100) NOT NULL,
        instrucciones NVARCHAR(MAX) NOT NULL, -- Usamos NVARCHAR(MAX) en lugar de TEXT (obsoleto)
        tiempo_elaboracion INT NOT NULL CONSTRAINT CK_Tiempo_Elaboracion 
            CHECK (tiempo_elaboracion > 0 AND tiempo_elaboracion <= 240),
        id_dificultad INT NOT NULL,
        id_categoria INT NOT NULL,
        CONSTRAINT FK_Recetas_Dificultades FOREIGN KEY (id_dificultad) 
            REFERENCES dificultades(id_dificultad),
        CONSTRAINT FK_Recetas_Categorias FOREIGN KEY (id_categoria) 
            REFERENCES categorias(id_categoria)
    );
    
    PRINT 'Tabla recetas creada con éxito.';
END
ELSE
BEGIN
    PRINT 'La tabla recetas ya existe.';
END
GO
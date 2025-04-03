USE recetas_para_aprobar;
GO

IF OBJECT_ID('ingredientes_recetas', 'U') IS NULL
BEGIN
    CREATE TABLE ingredientes_recetas (
        id_receta INT NOT NULL,
        id_ingrediente INT NOT NULL,
        cantidad_gramos INT NOT NULL CONSTRAINT CK_Cantidad_Gramos 
            CHECK (cantidad_gramos >= 1),
        CONSTRAINT PK_Ingredientes_Recetas PRIMARY KEY (id_receta, id_ingrediente),
        CONSTRAINT FK_IR_Recetas FOREIGN KEY (id_receta) 
            REFERENCES recetas(id_receta),
        CONSTRAINT FK_IR_Ingredientes FOREIGN KEY (id_ingrediente) 
            REFERENCES ingredientes(id_ingrediente)
    );
    
    PRINT 'Tabla ingredientes_recetas creada con éxito.';
END
ELSE
BEGIN
    PRINT 'La tabla ingredientes_recetas ya existe.';
END
GO
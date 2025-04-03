USE recetas_para_aprobar;
GO

IF OBJECT_ID('categorias', 'U') IS NULL
BEGIN
    CREATE TABLE categorias (
        id_categoria INT IDENTITY(1,1) PRIMARY KEY,
        nombre VARCHAR(20) NOT NULL CONSTRAINT CK_Categoria_Nombre 
            CHECK (nombre IN ('Entrantes', 'Ensaladas', 'Sopas', 'Cremas', 'Hortalizas', 
                             'Legumbres', 'Huevos', 'Arroces', 'Pastas', 'Aves', 
                             'Carnes', 'Pescados', 'Mariscos', 'Postres'))
    );
    
    INSERT INTO categorias (nombre) VALUES 
    ('Entrantes'), ('Ensaladas'), ('Sopas'), ('Cremas'), ('Hortalizas'),
    ('Legumbres'), ('Huevos'), ('Arroces'), ('Pastas'), ('Aves'),
    ('Carnes'), ('Pescados'), ('Mariscos'), ('Postres');
    
    PRINT 'Tabla categorias creada con éxito.';
END
ELSE
BEGIN
    PRINT 'La tabla categorias ya existe.';
END
GO
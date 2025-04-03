USE master;
GO

IF DB_ID('recetas_para_aprobar') IS NULL
BEGIN
    CREATE DATABASE recetas_para_aprobar;
    PRINT 'Base de datos recetas_para_aprobar creada con éxito.';
END
ELSE
BEGIN
    PRINT 'La base de datos recetas_para_aprobar ya existe.';
END
GO

USE recetas_para_aprobar;
GO
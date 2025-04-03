# 🍽️ MIS RECETAS (Relación Mucho a Muchos)

Este proyecto tiene como objetivo la creación de una base de datos de recetas de cocina en SQL Server, estableciendo una relación **mucho a muchos** entre recetas e ingredientes. 

## 📌 Descripción del Proyecto

Cada receta contiene una lista de ingredientes con su cantidad en gramos, asegurando que:
- La cantidad mínima de cada ingrediente es **1 gramo**.
- Cada ingrediente aparece **una sola vez** en una receta.
- Cada receta tiene **instrucciones detalladas de elaboración**.
- Se almacena el **tiempo de preparación** (máximo 4 horas, normalmente 20 minutos).
- Cada receta pertenece a una **categoría** como:
  - Entrantes, Ensaladas, Sopas, Cremas, Hortalizas, Legumbres, Huevos, Arroces, Pastas, Aves, Carnes, Pescados, Mariscos y Postres.
- Cada receta tiene un **nivel de dificultad**: Muy fácil, Elaborada o Complicada.
- Cada ingrediente está asociado a una **temporada del año**: Verano, Invierno, Primavera u Otoño.

---
## 🛠️ Actividades

### 🔹 1. Creación del Proyecto
1️⃣ Crear una solución en SSMS llamada **ExamenBD**.  
2️⃣ Crear un proyecto en SSMS llamado **Recetas**.  
3️⃣ Crear la base de datos ejecutando `01_Creacion_BD.sql`.

### 🔹 2. Creación de Tablas
📌 Ejecutar las siguientes consultas SQL para crear las tablas del esquema de base de datos:
- `02_Crea_Dificultades.sql` → Tabla **dificultades** (Muy fácil, Elaborada, Complicada).
- `03_Crea_Categorias.sql` → Tabla **categorías** (Entrantes, Ensaladas, etc.).
- `04_Crea_Temporadas.sql` → Tabla **temporadas** (Invierno, Primavera, etc.).
- `05_Crea_Recetas.sql` → Tabla **recetas** (Almacena los datos principales de cada receta).
- `06_Crea_Ingredientes.sql` → Tabla **ingredientes** (Contiene los ingredientes y su temporada).
- `07_Crea_ingredientes_recetas.sql` → Tabla intermedia **ingredientes_recetas** (Vincula recetas con ingredientes y sus cantidades).

### 🔹 3. Inserción de Datos
📝 Insertar datos en las tablas para inicializar la base de datos:
- `08_Inserta_Categorias.sql` → Inserta las 14 categorías de recetas.
- `09_Inserta_Dificultades.sql` → Inserta los 3 niveles de dificultad.
- `10_Inserta_Temporadas.sql` → Inserta las 4 temporadas del año.
- `11_Inserta_Ingredientes.sql` → Inserta una lista de ingredientes junto con su temporada.

### 🔹 4. Inserción de Recetas y Relación con Ingredientes
👨‍🍳 Crear y asociar recetas con ingredientes:
- `12_Inserta_recetas.sql` → Inserta la receta **Sopa de Calabaza**.
- `13_Inserta_ingredientes_recetas.sql` → Inserta los ingredientes utilizados en la receta anterior (con cantidades en gramos).

### 🔹 5. Consultas SQL para Análisis de Datos
📊 Se desarrollan consultas para obtener información clave:
- `14_Consulta_peso.sql` → Muestra el peso total de los ingredientes por receta.
- `15_ingredientes_por_temporada.sql` → Lista ingredientes por temporada.
- `16_Temporadas_receta.sql` → Indica las temporadas de los ingredientes usados en cada receta.

### 🔹 6. Creación del Diagrama Entidad-Relación (DER)
📌 Generar un diagrama **DER** en SSMS y guardarlo como `diagrama.png` en la carpeta **ExamenBD**.

### 🔹 7. Evaluación y Envío del Proyecto
📂 **Subir la solución a GitHub siguiendo estos pasos:**
1. Crear un repositorio en **GitHub** llamado `Recetas_DB`.
2. Subir la carpeta con todas las consultas y archivos SQL.
3. Borrar la carpeta local y clonar el repositorio para verificar que todo funciona.

### 🔹 8. Verificación y Pruebas
🛠️ **Asegurar la correcta ejecución del proyecto**:
- Crear `99_muestra_todo.sql` para mostrar el contenido de todas las tablas.
- Borrar la base de datos y ejecutar todas las queries en orden para comprobar su funcionamiento.
- Simular el proceso de evaluación **como si fueras el evaluador**, asegurando que todas las queries corren sin errores.

---
## 📢 Consejos Finales
✔️ **Verifica que todo funcione antes de enviar el trabajo.**  
✔️ **Asegúrate de usar la base de datos correcta en cada query.**  
✔️ **Simula el proceso de evaluación y corrige cualquier error antes de la entrega.**  
✔️ **Usa buenas prácticas en GitHub: sube el código limpio y bien documentado.**  

🎯 **Este README proporciona la estructura y los pasos detallados para la correcta ejecución y entrega del proyecto MIS RECETAS.**

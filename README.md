# ECD: Seminario Intensivo de Tópicos Avanzados en Datos Complejos - R. TOVI | G. VIOLA
# Spotify Api con Spark, Postgres y Docker



## Descripción:
Este proyecto consiste en la creación de un ETL que extrae datos de la API de Spotify, los transforma y los carga en una base de datos Postgres. Para ello se ha utilizado Spark, Postgres y Docker. A continuación se detalla el proceso de creación del ETL:

## 1. Configuración e Importaciones:
En primer lugar se importan las librerías necesarias para la ejecución del ETL.

## 2. Configuraciones:
Se definen constantes para la conexión a la base de datos y las credenciales de la API de Spotify.

## 3. Preparación de la Base de Datos:
Se verifica y, si es necesario, se crea una base de datos llamada music_discovery_db en PostgreSQL. Luego, se establecen tablas para almacenar términos de búsqueda y los resultados obtenidos desde Spotify.

## 4. Funciones de Utilidad:
 Se define una función para formatear las fechas de lanzamiento de las canciones, de acuerdo con su longitud.

## 5. Autenticación y Conexiones:
Se realiza la autenticación con las credenciales de Spotify y se inicia una conexión con la API a través de Spotipy.

## 6. Consultar Términos de Búsqueda:
Se consulta la tabla de términos de búsqueda y se almacenan los resultados en una lista.

## 7. Configuracion de Spark:
Se inicializa Spark y se configura una sesión con un nombre de aplicación específico.

## 8. Búsqueda en Spotify y Almacenamiento en la Lista:
Se define una función que busca en Spotify basándose en los términos de búsqueda, recopilando información relevante de las canciones encontradas y almacenándola en una lista.

## 9. Análisis Básico con Spark:
Se convierte la lista de canciones en un DataFrame de Spark y se realiza un análisis básico, como agrupar por artista y contar el número de canciones.

## 10. Almacenamiento en la Base de Datos:
Los datos recopilados de Spotify se insertan en la base de datos music_discovery_db en la tabla search_results.

## 11. Limpieza y Cierre:
Finalmente, se cierran las conexiones abiertas con la base de datos y Spark.


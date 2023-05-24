# ProyectoFinalCurso

Para instalar el proyecto, esta subido a github por lo tanto simplemente hay que hacer un 
git clone https://github.com/daw223-09/ProyectoFinalCursoAlvaroPerez.git

Despues en la carpeta de /web/laravel-app ejecutamos el siguiente comando: composer install.

Para la creación de la base de datos, al usar laravel podemos hacer un php artisan migrate, esto creara las tablas, 
luego para insertar los datos tendríamos que ejecutar el script “gimnasio.sql”,
para ejecutar el script tendríamos que ir al PhpMyAdmin y ejecutarlo, en mi caso entrando en esta ruta http://185.253.155.205:8081, es donde esta el PhpMyAdmin.
Otra forma seria ejecutar el script directamente ya que este también contiene la creación de las tablas de la base de datos.
Y por último hacemos un docker-compose up -d


Nota:

En la carpeta main de github esta el codigo de la aplicacion angular y laravel
y en la carpeta web es la que se ejecuta al hacer el docker-compose up -d,
en la carpeta de angular tiene los archivos creados al hacer el ng build.

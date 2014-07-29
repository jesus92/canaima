#!/bin/bash
fecha=$(date +"%m-%d-%Y-%T")

if (test -d  /var/www/respaldo)  then 

 echo "la Carpeta ya Existe."

else

mkdir /var/www/respaldo

fi 

cp -R /home/ususario/control /var/www/respaldo/respaldo$fecha



service apache2 stop

service apache2  start



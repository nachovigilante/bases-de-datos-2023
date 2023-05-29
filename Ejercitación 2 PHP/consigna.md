# Ejercicio HTML y PHP

## 0) Estructura

Crear una carpeta nueva en `C://AppServ/www/` para realizar este ejercicio

## 1) Formulario

Hacer un formulario en HTML que permita registrarse a un usuario ingresando:

- Nombre
- Apellido
- Email
- Fecha de nacimiento
- Provincia (`<select>`)
- Su color favorito
- Si será una cuenta de tipo personal o de empresa (_radio buttons_)
- Algunos de 10 intereses (`<checkbox>`)

## 2) Recepción de la request

- Transformar el archivo anterior en un `.php` para que ahora también pueda recibir _requests_. 
- Luego, arriba del código HTML crear una sección de PHP (`<?php ... ?>`) que recibirá la request de tipo `POST` y mostrar todos los valores recibidos en esta request
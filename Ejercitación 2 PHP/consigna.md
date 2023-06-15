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

## 3) Validación

En la sección de PHP crear un array `errores` en la que guarde los errores de cada uno de los datos (en forma de texto, por ejemplo: "El nombre es muy corto"), las condiciones que deben cumplir son las siguientes:

| Campo               | Min        | Max | Especial                                                             |
| ------------------- | ---------- | --- | -------------------------------------------------------------------- |
| Nombre              | 2          | 20  | N/A                                                                  |
| Apellido            | 2          | 20  | N/A                                                                  |
| Email               | 20         | 150 | Que contenga @                                                       |
| Fecha de nacimiento | 01/01/1900 | Hoy | N/A                                                                  |
| Provincia           | N/A        | N/A | Tiene que estar dentro de un array con los índices de las provincias |
| Color               | N/A        | N/A | N/A                                                                  |
| Tipo                | N/A        | N/A | Tiene que ser "personal" o "empresa"                                 |
| Intereses           | N/A        | N/A | Tiene que seleccionar al menos un interés                            |

## 4) Errores

Mostrar los errores para que los pueda ver el usuario en una lista (`<ul>`) en una sección entre los inputs y el botón de envío. Esta sección debe tener el subtítulo "Errores" y debe aparecer únicamente si hay errores.

Si no hay errores, redireccionar al usuario a una nueva página `"exito.php"`. Por ahora, puede decir únicamente "Se ha registrado con éxito!".

## 4.5) Persistencia de datos

Cuando enviamos el formulario con algún error, al recargarse la página se borran los datos que habíamos introducido. En este punto hay que lograr que se vuelvan a ingresar automáticamente. Esto se logra utilizando `php` para ingresar los valores nuevamente, por ejemplo:

```html
<input 
    type="text" 
    name="nombre" 
    id="nombre" 
    placeholder="Nombre"
    value="<?php if(isset($_POST['nombre'])) echo $_POST['nombre']; ?>"
>
```

Investigar por su cuenta cómo funciona `checked` y `selected` para los `checkbox`, los `radios` y las `options`.

## 5) Login

- Crear un formulario de login con nombre de usuario y contraseña en una nueva página `login.php`.
- Ahora usar la conexión con la base de datos para verificar si existe el usuario y si su contraseña coincide con la de ese usuario.

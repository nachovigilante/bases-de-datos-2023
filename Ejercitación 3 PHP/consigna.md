# Ejercitación 3 PHP

Para esta ejercitación se espera que realicen 3 ejercicios, todos tienen la misma dinámica.
No es necesario (ni recomendable) cambiar ninguna parte del código que no se pida explicitamente ya que hay un script y un archivo de estilos que dependen de que varias partes del código se mantengan como están.

## Grupos

La conformación de grupos es de **mínimo** 2 personas y **máximo** 3.

## Fecha de entrega

La fecha límite de entrega de este trabajo es el **viernes 7 de julio a las 23:59hs**. Esta fecha es **inflexible** ya que durante el fin de semana se corregirán para que el lunes 10 se entreguen las notas. Cualquiera que no entregue el trabajo a tiempo tendrá que ir a PIA.

## Ejercicios

### Ejercicio 1

Completar la primera sección de código para completar en el archivo `index.php`. Se espera que por cada empleado en la base de datos se cree un elemento `<li>` con la estructura que se presenta en el código. Es sumamente importante que se mantengan todos los atributos como se presentan para que funcione todo correctamente.

Para resolver este ejercicio será necesario hacer una query a la base de datos y recorrer los resultados (utilzilar el código de ejemplo en `mysql_functions.php`)

### Ejercicio 2

Completar la segunda sección de código para completar en el archivo `index.php`. Se espera que por cada sector en la base de datos se cree un elemento `<option>` con la estructura que se presenta en el código. Es sumamente importante que se mantengan todos los atributos como se presentan para que funcione todo correctamente.

Para resolver este ejercicio será necesario hacer una query a la base de datos y recorrer los resultados (utilzilar el código de ejemplo en `mysql_functions.php`)

### Ejercicio 3

Completar la sección de código faltante en el archivo `edit.php` para realizar la query que actualiza el empleado elegido. Recordar que NO SE PUEDE HACER ESTA QUERY DE MANERA INSEGURA, y que la clave primaria de los empleados es el DNI (es decir, este valor nunca cambia ys se puede utilizar para diferenciar de manera unívoca a cada empleado).

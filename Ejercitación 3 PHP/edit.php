<?php

include_once('mysql_functions.php');

// Chequeamos que no falte ningún dato
if (!isset($_POST['dni']) || !isset($_POST['nombre']) || !isset($_POST['apellido']) || !isset($_POST['sector']))
{
    echo 'Faltan datos';
    // header('Location: ./index.php');
    exit();
}

// -------- COMPLETAR --------
// Acá debemos actualizar al empleado en la base de datos realizando una query
// Se debe guardar el resultado de la query en $result para que funciones el if de abajo
// $query = ...
// $result = ...

if ($result->error())
{
    echo 'Error al actualizar el empleado';
    exit();
}
else
{
    header('Location: ./index.php');
    exit();
}
?>
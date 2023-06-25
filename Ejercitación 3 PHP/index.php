<?php include_once("mysql_functions.php"); ?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Los Simuladores</title>
    <link rel="stylesheet" href="./css/style.css">
</head>

<body>
    <h1>Lista de empleados de la empresa</h1>
    <ul class="empleados">
        <?php
        // ------------- COMPLETAR -------------
        // Queremos que por cada empleado en la base de datos
        // se cree un elemento <li> así:
        /*
            <li> 
                <div class="dni">DNI: <span class="dni-val">*dni*</span></div>
                <div class="nombre">Nombre y apellido:
                <span class="nombre-val">*nombre*</span>
                <span class="apellido-val">*apellido*</span></div>
                <div class="sector">Sector: <span class="sector-val">*nombre del sector*</span></div>
                <button class="edit">Editar</button>
            </li>
        */
        // ES FUNDAMENTAL MANTENER LA ESTRUCTURA DEL <li> PARA QUE FUNCIONE CORRECTAMENTE
        ?>
    </ul>
    <div class="dark"></div>
    <div id="modal">
        <form action="./edit.php" method="POST">
            <label for="dni">DNI:</label>
            <input type="text" name="dni" id="dni" value="" readonly>
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" id="nombre" value="">
            <label for="apellido">Apellido:</label>
            <input type="text" name="apellido" id="apellido" value="">
            <label for="sector">Sector:</label>
            <select name="sector" id="sector">
                <?php
                // ------------- COMPLETAR -------------
                // Queremos que por cada sector en la base de datos
                // se cree una opción en el select así:
                // <option value="*id*">*nombre*</option>
                // ES FUNDAMENTAL MANTENER LA ESTRUCTURA DE LA <option> PARA QUE FUNCIONE CORRECTAMENTE
                ?>
            </select>
            <div class="center">
                <input type="submit" value="Guardar">
            </div>
        </form>
    </div>
    <script src="./js/script.js"></script>
</body>

</html>
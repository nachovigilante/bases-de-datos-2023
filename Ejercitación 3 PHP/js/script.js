/* ----------------------- ACLARACIÓN ----------------------- */
/* 
    Este archivo contiene el código javascript que se encarga de
    mostrar el modal de edición de usuarios y de rellenar los
    campos del modal con los datos del usuario que se quiere editar.

    NO ES NECESARIO (NI RECOMENDABLE) MODIFICAR NADA DE ESTE ARCHIVO PARA COMPLETAR EL TP
    Y TAMPOCO ES NECESARIO ENTENDERLO
*/

const editButtons = document.querySelectorAll(".edit"); // Esta linea selecciona todos los botones de editar
const modal = document.querySelector("#modal");
const dark = document.querySelector(".dark");

dark.addEventListener("click", function () {
    modal.classList.remove("active"); // Esta linea selecciona el modal y le quita la clase active
    dark.classList.remove("active"); // Esta linea selecciona el dark y le quita la clase active
});

// Listen to escape key
document.addEventListener("keydown", function (e) {
    if (e.keyCode === 27) {
        modal.classList.remove("active");
        dark.classList.remove("active");
    }
});

editButtons.forEach(function (btn) {
    btn.addEventListener("click", function (e) {
        e.preventDefault(); // Esta linea evita que se recargue la pagina
        const dni = e.target.parentElement.querySelector(".dni-val").innerHTML; // Selecciona el dni del usuario que se quiere editar
        const name =
            e.target.parentElement.querySelector(".nombre-val").innerHTML; // Selecciona el nombre del usuario que se quiere editar
        const lastname =
            e.target.parentElement.querySelector(".apellido-val").innerHTML; // Selecciona el apellido del usuario que se quiere editar
        const sector =
            e.target.parentElement.querySelector(".sector-val").innerHTML; // Selecciona el sector del usuario que se quiere editar
        dark.classList.add("active"); // Agrega la clase active al div dark
        modal.querySelector("#dni").value = dni; // Selecciona el input dni y le asigna el valor del dni del usuario que se quiere editar
        modal.querySelector("#nombre").value = name; // Selecciona el input nombre y le asigna el valor del nombre del usuario que se quiere editar
        modal.querySelector("#apellido").value = lastname; // Selecciona el input apellido y le asigna el valor del apellido del usuario que se quiere editar

        const options = Array.from(modal.querySelector("#sector")); // Selecciona el select sector y lo convierte en un array
        const optionToSelect = options.find((item) => item.text === sector); // Selecciona la opcion del select que corresponda con el sector del usuario que se quiere editar
        optionToSelect.selected = true; // Selecciona la opción del select que corresponda con el sector del usuario que se quiere editar

        modal.classList.add("active"); // Agrega la clase active al div modal
    });
});

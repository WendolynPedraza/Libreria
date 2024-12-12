window.onload = function () {
    document.getElementById('myForm').addEventListener('submit', function (event) {
        // Evitar el envío del formulario si la validación falla
        event.preventDefault();

        let isValid = true; // Bandera para saber si el formulario es válido

        // Validar el nombre (solo letras y espacios)
        const nombre = document.getElementById('nombre').value;
        const nombreRegex = /^[A-Za-zÑñÁáÉéÍíÓóÚúÜü\s]+$/; // Solo letras y espacios
        if (!nombreRegex.test(nombre)) {
            
            Swal.fire('Error: El nombre solo puede contener letras y espacios.');
            isValid = false;
        }

        // Validar el número de teléfono (formato básico)
        const numero = document.getElementById('numero').value;
        const numeroRegex = /^[0-9]{10}$/; // Asumimos que el número es de 10 dígitos (ajusta según sea necesario)
        if (!numeroRegex.test(numero)) {
            Swal.fire('Error: El número de teléfono debe contener 10 dígitos.');
            isValid = false;
        }

        // Validar el correo (formato estándar de correo)
        const correo = document.getElementById('correo').value;
        const correoRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/; // Expresión regular para correos
        if (!correoRegex.test(correo)) {
            Swal.fire('Error: Por favor, ingresa un correo electrónico válido.');
            isValid = false;
        }

        // Validar la fecha (puedes agregar más validaciones si es necesario)
        const fecha = document.getElementById('fecha').value;
        if (!fecha) {
            Swal.fire('Error: La fecha no puede estar vacía.');
            isValid = false;
        }

        // Si todo es válido, mostrar un mensaje y enviar el formulario
        if (isValid) {
            Swal.fire('Formulario enviado correctamente');
            // Aquí puedes enviar el formulario de forma programática si es necesario:
            // this.submit();
        } else {
            Swal.fire('El formulario contiene errores. No se ha enviado.');
        }
    });
};





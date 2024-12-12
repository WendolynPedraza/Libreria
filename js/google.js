console.log("Hola desde mi consola de google")

$(document).ready(function () {
    obtenerubicacion();
});
//Funcon para obtener la localizacion
function obtenerubicacion() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(mostrarUbicacion, mostrarerror)

    } else {
        alert("la geolocalizacion no es soportada por el navegador ")
    }
}

//Funcion para mostrar la ubicacion (si es que podemos recuperarla)
function mostrarUbicacion(position) {

    console.log(position);
    const lat = 19.314015039965188;
    const lon = -99.11772220513485;
    //const lat = position.coords.latitude;
    //const lon = position.coords.longitude;


    //muestro la latitud y longitud

    console.log("Latitud: " + lat + ", Longitud: " + lon);

    //llamar a la funcion para obtener la direccion
    obtenerDirectorio(lat, lon);

    //Inicializar el mapa y el Street View
    initMapaComponents(lat, lon)
}

function mostrarerror(error) {

    switch (error.code) {
        case error.PERMISSION_DENIED:
            alert("El usuario nego el permiso de ubicacion");
            break;
        case error.POSITION_UNAVAILABLE:
            alert("La ubicacion no esta disponible");
            break;

        case error.TIMEOUT:
            alert("Se agoto el tiempo de espera");
            break;
        default:
            alert("Error desconocido: " + error.message);
            break;
    }
}

//Funcion para obtener la direccion de las coordenadas

function obtenerDirectorio(lat, lon) {
    const latLng = { lat: lat, lng: lon };
    const geocoder = new google.maps.Geocoder();

    //Argumeto de salida: funcion de resultado y status
    geocoder.geocode({ location: latLng }, function (results, status) {
        if (status === 'OK') {
            console.log(results)
            if (results[0]) {
                //Toma la direccion y la busca con formatted_address
                const direccion = results[0].formatted_address;
                //Mostrarla direccion obtenida en el HTML
                document.getElementById('direccion').innerText = 'Direccion: ' + direccion;
            } else {
                alert("No se encontraron resultados de dirreccion");
            }
        } else {
            alert("Geocalizacion fallida: " + status);
        }
    });
}

// 
function initMapaComponents(lat, lon) {
    //Genera 
    const ubicacion = { lat: lat, lng: lon };

    //Inicializar el mapa
    const mapa = new google.maps.Map(document.getElementById("map"), {
        zoom: 15,
        center: ubicacion
    });

    //Añadir un marcado en el mapa
    new google.maps.Marker({
        position: ubicacion,
        map: mapa,
        title: "Ubicacion actual"
    });

    //Configurar Street View
    const panorama = new google.maps.StreetViewPanorama(
        document.getElementById("street"), {
        position: ubicacion,
        pov: { heading: 90, pitch: 5 }
    }
    );

    //Vincular el Street View al mapa
    mapa.StreetViewPanorama(panorama);
}
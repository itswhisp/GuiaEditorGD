<?php

require "../config/connection.php";
require "../lib/Parsedown.php";

$guide = filter_input(INPUT_GET, 'g', FILTER_SANITIZE_STRING);

$stmt = $conn->prepare("SELECT * FROM secciones WHERE nombre_seccion = ?"); # Obtiene el valor $_GET de "g" para realizar una consulta a la DB
    $stmt->execute([$guide]); # Ejecuta de forma segura la consulta MySQL
    $seccion = $stmt->fetch(); # Obtiene los datos obtenidos de la consulta y los guarda en $seccion


if (!empty($seccion)) { # Condicional: "Si la variable $seccion no está vacia"
    # Inicia la carga del archivo markdown
    $url = $seccion["seccion_url"];
    $contenido = file_get_contents($url);
    $Parsedown = new Parsedown();
    echo Parsedown::instance()
        ->setBreaksEnabled(true) # Activa saltos de linea automaticos
        ->text($contenido); # Comienza la carga del archivo.md obtenido de la base de datos
} else {
    http_response_code(404);
    echo "Error";
}
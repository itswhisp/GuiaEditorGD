<!-- CONEXION A LA BASE DE DATOS, CARGA DE LIBRERIAS Y CONSULTA A LA BASE DE DATOS PARA MOSTRAR CONTENIDO -->

<?php

    require "config/connection.php";
    require "lib/Parsedown.php";

    $guide = filter_input(INPUT_GET, 'g', FILTER_SANITIZE_STRING);

    if(empty($guide)){ # Condicional: "Si en la URL no se agrega un dato valido"
        header ("Location: index.php"); # Regresa al usuario a la pagina principal
    }
    else {

    $stmt = $conn->prepare("SELECT * FROM secciones WHERE nombre_seccion = ?"); # Obtiene el valor $_GET de "g" para realizar una consulta a la DB
    $stmt->execute([$guide]); # Ejecuta de forma segura la consulta MySQL
    $seccion = $stmt->fetch(); # Obtiene los datos obtenidos de la consulta y los guarda en $seccion

    # TO-DO: HACER UN EXPLOITPATCH PARA SANITIZAR AUN MEJOR LAS PETICIONES GET

?>

<!-- ESTRUCTURA DE LA PAGINA + PHP -->

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- METADATOS DE LA PAGINA  -->
    <meta name="theme-color" content="#039dfc"> <? # METADATO COLOR (DISCORD) ?>
    <meta name="twitter:title" content="<?php echo 'Guia del Editor';?>"> <? # METADATO TITULO ?>
    <meta name="twitter:description" content="<?php if (!empty($seccion)) { echo $seccion['titulo']; } else { echo "Enlace invalido"; } ?>"> <? # METADATO DINAMICO DESCRIPCION ?>
    <meta name="twitter:image" content="https://guia.editorgd.xyz/GuiaEditor.png"> <? # METADATO IMAGEN ?>
    <meta name="twitter:card" content="summary_large_image">
    <title><?php if (!empty($seccion)) { echo $seccion["titulo"]; } else { echo "Guia no encontrada"; } ?> - Guia del Editor</title> <? # TITULO DINAMICO DE LA PAGINA ?>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/guia.css">
</head>

<body>
    <div class="overlay" id="loading">
        <img src="assets/img/loading.png">
    </div>
    <div class="overlay hidden" id="error">
        <div class="dialogalt">
            <span class="gold">Error (404)</span>
            <p>La guia no se encuentra disponible o el enlace es invalido</p>
            <img class="dialog-button" onclick="goBack()" src="assets/img/VolverAtras.png">
        </div>
    </div>
    <div class="titlebar">
        <img class="back" onclick="goBack()" src="assets/img/left.png">
        <span id="title"><?php if (!empty($seccion)) { echo $seccion["titulo"]; } else { echo "Error 404 - Guia no encontrada"; } ?></span>
    </div>
    <div class="container">

        <div class="navbar unselectable" id="guideNavbar">

            <?php

                /**
                 * ALGORITMO DE CARGA DEL MENU DE NAVEGACION - AUN SIN TERMINAR
                 * TO-DO: MEJORAR EL CODIGO Y OPTIMIZAR PARA EVITAR SOBRECARGAS
                 * EN EL SERVIDOR Y CORREGIR ERRORES
                 */

                $categories = $conn->query("SELECT * FROM categorias");

                $html = '<ul>';
                while ($row = $categories->fetch(PDO::FETCH_ASSOC)) {
                $section = $row['titulo'];
                $id = $row['id_categoria'];

                $openSection = false;

                $html .= "<li><details"  . ($openSection ? " open" : "") . "><summary>{$section}</summary><ul>";
                $html .= "<ul>";
                    $guides = $conn->query("SELECT * FROM secciones");

                    foreach ($guides as $guide){
                        if($row['id_categoria'] == $guide['id_categoria']){

                            $html .= "<li>";
                            $html .= "<a class=not-translated href=pagina.php?g={$guide['nombre_seccion']}>{$guide['titulo']}</a>";
                            $html .= "</li>";
                        }
                    }
                $html .= "</ul>";
                $html .= '</ul></details></li>';
                }
                    $html .= '</ul>';

                echo $html;
            ?>
        </div>

        <div class="content" id="guideContent">
        <?php

        if (!empty($seccion)){ # Condicional: "Si la variable $seccion no está vacia"

            //Inicia la carga del archivo markdown
            $url = $seccion["seccion_url"];
            $contenido = file_get_contents($url);
            $Parsedown = new Parsedown();

            echo Parsedown::instance()
            ->setBreaksEnabled(true) # Activa saltos de linea automaticos
            ->text($contenido); # Comienza la carga del archivo.md obtenido de la base de datos
        }
        else {
            http_response_code(404);
            echo "Error 404 - Guia no encontrada";
            echo "<script>document.getElementById('loading').classList.add('hidden'); document.getElementById('error').classList.remove('hidden');</script>";
        }

    } # Fin del else de la condicional del inicio del documento (linea 11) ?>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/showdown/2.1.0/showdown.min.js"></script>
    <script src="assets/js/guia.js"></script>
</body>

</html>
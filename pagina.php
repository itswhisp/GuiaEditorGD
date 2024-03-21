<?php
    # Conexion a la base de datos y carga de libreria Parsedown
    require "config/connection.php";
    require "config/config.php";
    require "lib/Parsedown.php";
    $guide = filter_input(INPUT_GET, 'g', FILTER_SANITIZE_STRING); // Obtencion del parametro $_GET de la URL sanitizado
    if(empty($guide)){ # Condicional: "Si en la URL no se agrega un dato valido"
        header ("Location: index.php"); # Regresa al usuario a la pagina principal
    }
    else {
    $stmt = $conn->prepare("SELECT * FROM secciones WHERE nombre_seccion = ?"); # Obtiene el valor $_GET de "g" para realizar una consulta a la DB
    $stmt->execute([$guide]); # Ejecuta de forma segura la consulta MySQL
    $seccion = $stmt->fetch(); # Obtiene los datos obtenidos de la consulta y los guarda en $seccion
    
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
    <meta name="twitter:description" content="<?php if (!empty($seccion)) { echo $seccion['titulo']; } else { http_response_code(404); echo "Enlace invalido"; } ?>"> <? # METADATO DINAMICO DESCRIPCION ?>
    <meta name="twitter:image" content="https://guia.editorgd.xyz/GuiaEditor.png"> <? # METADATO IMAGEN ?>
    <meta name="twitter:card" content="summary_large_image">
    <title><?php if (!empty($seccion)) { echo $seccion["titulo"]; } else { http_response_code(404); echo "Guia no encontrada"; } ?> - Guia del Editor</title> <? # TITULO DINAMICO DE LA PAGINA ?>
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
        <span id="title"><?php if (!empty($seccion)) { echo $seccion["titulo"]; } else { http_response_code(404); } ?></span>
    </div>
    <div class="container">
        <div class="navbar unselectable" id="guideNavbar">
            <?php
                # ALGORITMO DE CARGA DEL MENU DE NAVEGACION
                # TO-DO: Documentar este algoritmo :el_bromas:
                if(!empty($seccion)){
                    $categories = $conn->query("SELECT * FROM categorias");
                    $html = '<ul>';
                    foreach ($categories as $category){
                        $openSection = false;
                        if ($category['id_categoria'] == $seccion['id_categoria']){
                            $openSection = true;
                        }
                        $html .= "<li><details" . ($openSection ? " open" : "") . "><summary>{$category['titulo']}</summary>";
                        $html .= "<ul>";
                        $guias = $conn->query("SELECT * FROM secciones");
                        foreach ($guias as $guia){
                            if ($category['id_categoria'] == $guia['id_categoria']){ 
                            $html .= "<li>";
                                if($guia['nombre_seccion'] == $guide){
                                    # 'Flags' de las secciones
                                    switch($guia['flag']){
                                        case '1':
                                            $html .= "<strong class='not-translated'>{$guia['titulo']}</strong>"; # not-translated (1)
                                            $html .= "</li>";
                                        break;
                                        case '2':
                                            $html .= "<strong class='contains-mistakes'>{$guia['titulo']}</strong>"; # contains-mistakes (2)
                                            $html .= "</li>";
                                        break;
                                        case '3':
                                            $html .= "<strong class='outdated'>{$guia['titulo']}</strong>"; # outdated (3)
                                            $html .= "</li>";
                                        break;
                                        default:
                                            $html .= "<strong>{$guia['titulo']}</strong>"; # default (0)
                                            $html .= "</li>";
                                        break;
                                    }  
                                } else {
                                    switch($guia['flag']){
                                        case '1':
                                            $html .= "<a class='not-translated' href='pagina.php?g={$guia['nombre_seccion']}'>{$guia['titulo']}</a>"; # not-translated (1)
                                            $html .= "</li>";
                                        break;
                                        case '2':
                                            $html .= "<a class='contains-mistakes' href='pagina.php?g={$guia['nombre_seccion']}'>{$guia['titulo']}</a>"; # contains-mistakes (2)
                                            $html .= "</li>";
                                        break;
                                        case '3':
                                            $html .= "<a class='outdated' href='pagina.php?g={$guia['nombre_seccion']}'>{$guia['titulo']}</a>"; # outdated (3)
                                            $html .= "</li>";
                                        break;
                                        default:
                                            $html .= "<a href='pagina.php?g={$guia['nombre_seccion']}'>{$guia['titulo']}</a>"; # default (0)
                                            $html .= "</li>";
                                        break;
                                    }
                                }
                            }
                        }
                     $html .= '</ul></details></li>';
                }
                 $html .= '</ul>';
                 echo $html;
                } else {
                    http_response_code(404); # Devuelve un codigo de error http 404
                }
            ?>
        </div>
        <div class="content" id="guideContent">
        <?php
        if (!empty($seccion)) { # Condicional: "Si la variable $seccion no está vacia"
            # Inicia la carga del archivo markdown
            $url = $seccion["seccion_url"];
            $contenido = file_get_contents($url);
            $Parsedown = new Parsedown();
            echo Parsedown::instance()
            ->setBreaksEnabled(true) # Activa saltos de linea automaticos
            ->text($contenido); # Comienza la carga del archivo.md obtenido de la base de datos
        }
        else {
            http_response_code(404);
            echo "<script>document.getElementById('loading').classList.add('hidden'); document.getElementById('error').classList.remove('hidden');</script>";
        }
    } # Fin del else de la condicional del inicio del documento (linea 9) ?>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/showdown/2.1.0/showdown.min.js"></script>
    <script src="assets/js/guia.js"></script>
</body>
</html>
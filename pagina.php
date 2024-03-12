<?php

require "config/connection.php";
require "lib/Parsedown.php";

$guide = filter_input(INPUT_GET, 'g', FILTER_SANITIZE_STRING);

if(empty($guide)){
    header ("Location: index.php");
}
else{

try{

$stmt = $conn->prepare("SELECT * FROM secciones WHERE nombre_seccion = ?");
$stmt->execute([$guide]);
$seccion = $stmt->fetch();

} catch (Exception $e) {
    header("HTTP/1.1 404 Not Found");
    echo "Error 404: Guia no encontrada";
    $seccion["titulo"] = "Error 404: NOT FOUND";
    exit();
}

}
?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guia del Editor - <?php try { echo $seccion["titulo"]; } catch (Exception $error1){echo "Guia no encontrada";}?></title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/guia.css">
</head>

<body>
    <!-- <div class="overlay" id="loading">
        <img src="assets/img/loading.png"> -->
    </div>
    <div class="overlay hidden" id="error">
        <div class="dialogalt">
            <span class="gold">Error</span>
            <p>La guia no se encuentra disponible o la ID en la URL es invalida</p>
            <img class="dialog-button" onclick="goBack()" src="assets/img/VolverAtras.png">
        </div>
    </div>
    <div class="titlebar">
        <img class="back" onclick="goBack()" src="assets/img/left.png">
        <span id="title"><?php echo $seccion["titulo"] ?></span>
    </div>
    <div class="container">
        <div class="navbar unselectable" id="guideNavbar"></div>
        <div class="content" id="guideContent">
        <?php

        try{
            $url = $seccion["seccion_url"];
            
            $contenido = file_get_contents($url);
    
            $Parsedown = new Parsedown();
                
            echo Parsedown::instance()
            ->setBreaksEnabled(true) # enables automatic line breaks
            ->text($contenido); 
            } catch (Exception $error){
                header("HTTP/1.1 404 Not Found");
                echo "Error 404: Guia no encontrada";
                exit();
            }

        ?>

        </div>
    </div>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/showdown/2.1.0/showdown.min.js"></script>
    <script src="assets/js/guia.js"></script>
</body>

</html>
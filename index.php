<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guia del Editor</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/index.css">
</head>

<body>
    <div class="overlay hidden" id="credits">
        <div class="dialog">
            <img class="arrow left hidden" src="assets/img/left.png">
            <img class="close" src="assets/img/close.png"
                onclick="document.getElementById('credits').classList.add('hidden');">
            <div class="credits-page 01">
                <span>Creditos</span>
                <img class="icon" src="assets/img/credits/whisp.png">
                <a href="https://twitter.com/whispgd" target="_blank" class="gold">ItsWhisp</a>
                <span class="small">Diseño de la pagina</span>
            </div>
            <div class="credits-page 02 hidden">
                <span>Creditos</span>
                <img class="icon" style="height: 60px; padding: 10px 0;" src="assets/img/credits/jorge603.gif">
                <a href="https://youtube.com/@Jorge603" target="_blank" class="gold">Jorge603</a>
                <span class="small">Hosting web, dominio y backend</span>
            </div>
            <div class="credits-page 03 hidden">
                <span style="color: rgb(0, 255, 0);">Agradecimientos<br>Especiales</span>
                <div class="thanks-container">
                    <div class="thanks-item">
                        <img class="icon" style="height: 60px; padding: 10px 0;" src="assets/img/credits/colon.png">
                        <a href="https://twitter.com/TheRealGDColon" target="_blank" class="gold">Colon</a>
                        <span class="small">Parte del codigo de la interfaz</span>
                        <a href="https://gdbrowser.com/" target="_blank" class="smaller">(GD Browser)</a>
                    </div>
                </div>
            </div>
            <img class="arrow right" src="assets/img/right.png">
        </div>
    </div>
    <a href="https://github.com/ItsWhisp/GuiaEditorGD" target="_blank" class="github unselectable"><img
            src="assets/img/github.png"></a>
    <img class="logo unselectable" src="assets/img/logo.png">
    <span class="unselectable">Guia del editor</span>
    <span class="gold small unselectable">(En Construccion)</span>
    <div class="section menu unselectable">
        <a data-tippy-content="Servidor de Discord de Geometry Dash Español" target="_blank"
            class="menu-button disabled">
            <img src="assets/img/buttons/discord.png">
        </a>
        <a data-tippy-content="Guia oficial del editor (En Ingles)"
            href="https://www.robtopgames.com/files/GDEditor.pdf" target="_blank" class="menu-button">
            <img src="assets/img/buttons/guia-oficial.png">
        </a>
        <a data-tippy-content="Creditos y agradecimientos especiales" href="#creditos"
            onclick="document.getElementById('credits').classList.remove('hidden');" class="menu-button">
            <img src="assets/img/buttons/creditos.png">
        </a>
    </div>
    <div class="section unselectable">
        <span>Introduccion al editor</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#ConceptosBasicos">Conceptos Basicos</a>
            <a class="gd-button" href="pagina.html#ElegirCancion">Elegir una cancion</a>
            <a class="gd-button" href="pagina.html#MenuPausa">Menu de pausa</a>
            <a class="gd-button" href="pagina.html#PublicarNivel">Publicar tu nivel</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Objetos</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#ObjetosGameplay">Objetos del gameplay</a>
            <a class="gd-button" href="pagina.html#ObjetosAnimados">Objetos Animados</a>
            <a class="gd-button" href="pagina.html#ObjetosPersonalizados">Objetos Personalizados</a>
            <a class="gd-button" href="pagina.html#Items">Items</a>
            <a class="gd-button" href="pagina.html#Grupos">Editar Grupos</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Triggers: Basicos</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#IntroduccionTriggers">Introduccion</a>
            <a class="gd-button" href="pagina.html#StartPos"><img src="assets/img/triggers/StartPos.png"> Start
                Pos</a>
            <a class="gd-button" href="pagina.html#Move"><img src="assets/img/triggers/Move.png"> Move</a>
            <a class="gd-button" href="pagina.html#Stop"><img src="assets/img/triggers/Stop.png"> Stop</a>
            <a class="gd-button" href="pagina.html#Toggle"><img src="assets/img/triggers/Toggle.png"> Toggle</a>
            <a class="gd-button" href="pagina.html#Spawn"><img src="assets/img/triggers/Spawn.png"> Spawn</a>
            <a class="gd-button" href="pagina.html#Rotate"><img src="assets/img/triggers/Rotate.png"> Rotate</a>
            <a class="gd-button" href="pagina.html#Scale"><img src="assets/img/triggers/Scale.png"> Scale</a>
            <a class="gd-button" href="pagina.html#Touch"><img src="assets/img/triggers/Touch.png"> Touch</a>
            <a class="gd-button" href="pagina.html#OnDeath"><img src="assets/img/triggers/OnDeath.png"> On Death</a>
            <a class="gd-button" href="pagina.html#Options"><img src="assets/img/triggers/Options.png"> Options</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Triggers: Visuales</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#Color"><img src="assets/img/triggers/Color.png"> Color</a>
            <a class="gd-button" href="pagina.html#Pulse"><img src="assets/img/triggers/Pulse.png"> Pulse</a>
            <a class="gd-button" href="pagina.html#Alpha"><img src="assets/img/triggers/Alpha.png"> Alpha</a>
            <a class="gd-button" href="pagina.html#Shake"><img src="assets/img/triggers/Shake.png"> Shake</a>
            <a class="gd-button" href="pagina.html#Animate"><img src="assets/img/triggers/Animate.png"> Animate</a>
            <a class="gd-button" href="pagina.html#KeyframeAnimation"><img src="assets/img/triggers/Keyframe.png">
                Keyframe Animation</a>
            <a class="gd-button" href="pagina.html#Keyframe"><img src="assets/img/triggers/KeyframeArrow.png">
                Keyframe</a>
            <a class="gd-button" href="pagina.html#AreaTriggers"><img src="assets/img/triggers/AreaFade.png"><img
                    src="assets/img/triggers/AreaMove.png"><img src="assets/img/triggers/AreaRotate.png"><img
                    src="assets/img/triggers/AreaScale.png"><img src="assets/img/triggers/AreaStop.png"><img
                    src="assets/img/triggers/AreaTint.png"> Area Triggers</a>
            <a class="gd-button" href="pagina.html#EditArea"><img src="assets/img/triggers/EditAreaFade.png"><img
                    src="assets/img/triggers/EditAreaMove.png"><img src="assets/img/triggers/EditAreaRotate.png"><img
                    src="assets/img/triggers/EditAreaScale.png"><img src="assets/img/triggers/EditAreaTint.png"> Edit
                Area Triggers</a>
            <a class="gd-button" href="pagina.html#AreaStop"><img src="assets/img/triggers/AreaStop.png"> Area
                Stop</a>
            <a class="gd-button" href="pagina.html#ChangeBG"><img src="assets/img/triggers/BGSwitch.png"> <img
                    src="assets/img/triggers/GSwitch.png"> <img src="assets/img/triggers/MGSwitch.png"> Change
                BG/G/MG</a>
            <a class="gd-button" href="pagina.html#SpawnParticles"><img src="assets/img/triggers/SpawnParticle.png">
                Spawn Particles</a>
            <a class="gd-button" href="pagina.html#SetupMG"><img src="assets/img/triggers/MG.png"> Setup MG</a>
            <a class="gd-button" href="pagina.html#BGSpeed"><img src="assets/img/triggers/BGSpeed.png"> <img
                    src="assets/img/triggers/MGSpeed.png"> BG/MG Speed</a>
            <a class="gd-button" href="pagina.html#ToggleTrail"><img src="assets/img/triggers/EnableTrail.png"> <img
                    src="assets/img/triggers/DisableTrail.png"> Enable/Disable Trail</a>
            <a class="gd-button" href="pagina.html#ShowHide"><img src="assets/img/triggers/ShowIcon.png"> <img
                    src="assets/img/triggers/HideIcon.png"> Show/Hide</a>
            <a class="gd-button" href="pagina.html#BGEffect"><img src="assets/img/triggers/BGEffectOn.png"> <img
                    src="assets/img/triggers/BGEffectOff.png"> BG Effect On/Off</a>
            <a class="gd-button" href="pagina.html#Gradient"><img src="assets/img/triggers/Gradient.png"> Gradient</a>
            <a class="gd-button" href="pagina.html#EnterEffects">Enter Effects</a>
            <a class="gd-button" href="pagina.html#EnterTriggers"><img src="assets/img/triggers/EnterFade.png"><img
                    src="assets/img/triggers/EnterMove.png"><img src="assets/img/triggers/EnterRotate.png"><img
                    src="assets/img/triggers/EnterScale.png"><img src="assets/img/triggers/EnterTint.png">
                Move/Rotate/Scale/Fade/Tint Enter</a>
            <a class="gd-button" href="pagina.html#StopEnter"><img src="assets/img/triggers/EnterStop.png"> Stop
                Enter</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Triggers: Camara</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#CameraZoom"><img src="assets/img/triggers/CameraZoom.png"> Zoom</a>
            <a class="gd-button" href="pagina.html#CameraStatic"><img src="assets/img/triggers/CameraStatic.png">
                Static Camera</a>
            <a class="gd-button" href="pagina.html#CameraOffset"><img src="assets/img/triggers/CameraOffset.png">
                Camera Offset</a>
            <a class="gd-button" href="pagina.html#GPOffset"><img src="assets/img/triggers/GPOffset.png"> Gameplay
                Offset</a>
            <a class="gd-button" href="pagina.html#CameraRotate"><img src="assets/img/triggers/CameraRotate.png">
                Camera Rotation</a>
            <a class="gd-button" href="pagina.html#CameraEdge"><img src="assets/img/triggers/CameraEdge.png"> Camera
                Edge</a>
            <a class="gd-button" href="pagina.html#CameraGuide"><img src="assets/img/triggers/CameraGuide.png"> Camera
                Guide</a>
            <a class="gd-button" href="pagina.html#CameraMode"><img src="assets/img/triggers/CameraMode.png"> Camera
                Mode</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Triggers: Audio</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#Song"><img src="assets/img/triggers/Song.png"> Song</a>
            <a class="gd-button" href="pagina.html#EditSong"><img src="assets/img/triggers/EditSong.png"> Edit
                Song</a>
            <a class="gd-button" href="pagina.html#SFX"><img src="assets/img/triggers/SFX.png"> SFX</a>
            <a class="gd-button" href="pagina.html#EditSFX"><img src="assets/img/triggers/EditSFX.png"> Edit SFX</a>
            <a class="gd-button" href="pagina.html#BPM"><img src="assets/img/triggers/BPM.png"> BPM Guide</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Triggers: Shaders</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#Shader"><img src="assets/img/triggers/Shader.png"> Shader</a>
            <a class="gd-button" href="pagina.html#Shockwave"><img src="assets/img/triggers/ShockWave.png">
                ShockWave</a>
            <a class="gd-button" href="pagina.html#Shockline"><img src="assets/img/triggers/ShockLine.png">
                ShockLine</a>
            <a class="gd-button" href="pagina.html#Glitch"><img src="assets/img/triggers/Glitch.png"> Glitch</a>
            <a class="gd-button" href="pagina.html#Chromatic"><img src="assets/img/triggers/Chromatic.png">
                Chromatic</a>
            <a class="gd-button" href="pagina.html#ChromaticGlitch"><img
                    src="assets/img/triggers/ChromaticGlitch.png"> Chromatic Glitch</a>
            <a class="gd-button" href="pagina.html#Pixelate"><img src="assets/img/triggers/Pixelate.png"> Pixelate</a>
            <a class="gd-button" href="pagina.html#LensCircle"><img src="assets/img/triggers/LensCircle.png"> Lens
                Circle</a>
            <a class="gd-button" href="pagina.html#RadialBlur"><img src="assets/img/triggers/RadialBlur.png"> Radial
                Blur</a>
            <a class="gd-button" href="pagina.html#MotionBlur"><img src="assets/img/triggers/MotionBlur.png"> Motion
                Blur</a>
            <a class="gd-button" href="pagina.html#Bulge"><img src="assets/img/triggers/Bulge.png"> Bulge</a>
            <a class="gd-button" href="pagina.html#Pinch"><img src="assets/img/triggers/Pinch.png"> Pinch</a>
            <a class="gd-button" href="pagina.html#Grayscale"><img src="assets/img/triggers/GrayScale.png"> Gray
                Scale</a>
            <a class="gd-button" href="pagina.html#Sepia"><img src="assets/img/triggers/Sepia.png"> Sepia</a>
            <a class="gd-button" href="pagina.html#InvertColor"><img src="assets/img/triggers/InvertColor.png"> Invert
                Color</a>
            <a class="gd-button" href="pagina.html#Hue"><img src="assets/img/triggers/Hue.png"> Hue</a>
            <a class="gd-button" href="pagina.html#EditColor"><img src="assets/img/triggers/EditColor.png"> Edit
                Color</a>
            <a class="gd-button" href="pagina.html#SplitScreen"><img src="assets/img/triggers/SplitScreen.png"> Split
                Screen</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Triggers: Gameplay</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#Reverse"><img src="assets/img/triggers/Reverse.png"> Reverse</a>
            <a class="gd-button" href="pagina.html#RotateGP"><img src="assets/img/triggers/GPRotate.png"> Rotate
                Gameplay</a>
            <a class="gd-button" href="pagina.html#Event"><img src="assets/img/triggers/Event.png"> Event</a>
            <a class="gd-button" href="pagina.html#TimeWarp"><img src="assets/img/triggers/TimeWarp.png"> TimeWarp</a>
            <a class="gd-button" href="pagina.html#End"><img src="assets/img/triggers/End.png"> End</a>
            <a class="gd-button" href="pagina.html#PlayerControl"><img src="assets/img/triggers/PlayerControl.png">
                Player Control</a>
            <a class="gd-button" href="pagina.html#Gravity"><img src="assets/img/triggers/Gravity.png"> Gravity</a>
            <a class="gd-button" href="pagina.html#Teleport"><img src="assets/img/triggers/Teleport.png"> Teleport</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Triggers: Items</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#Count"><img src="assets/img/triggers/Count.png"> Count</a>
            <a class="gd-button" href="pagina.html#InstantCount"><img src="assets/img/triggers/InstantCount.png">
                Instant Count</a>
            <a class="gd-button" href="pagina.html#Pickup"><img src="assets/img/triggers/Pickup.png"> Pickup</a>
            <a class="gd-button" href="pagina.html#Time"><img src="assets/img/triggers/TimerTime.png"> Time</a>
            <a class="gd-button" href="pagina.html#TimeEvent"><img src="assets/img/triggers/TimerEvent.png"> Time
                Event</a>
            <a class="gd-button" href="pagina.html#TimeControl"><img src="assets/img/triggers/TimerControl.png"> Time
                Control</a>
            <a class="gd-button" href="pagina.html#ItemEdit"><img src="assets/img/triggers/ItemEdit.png"> Item
                Edit</a>
            <a class="gd-button" href="pagina.html#ItemComp"><img src="assets/img/triggers/ItemComp.png"> Item
                Compare</a>
            <a class="gd-button" href="pagina.html#ItemPers"><img src="assets/img/triggers/ItemPers.png"> Persistent
                Item</a>
            <a class="gd-button" href="pagina.html#Reset"><img src="assets/img/triggers/Reset.png"> Reset</a>
            <a class="gd-button" href="pagina.html#CounterLabel">Counter Label</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Triggers: Colisiones</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#Collision"><img src="assets/img/triggers/Collision.png">
                Collision</a>
            <a class="gd-button" href="pagina.html#InstantCollision"><img
                    src="/assets/img/triggers/InstantCollision.png"> Instant Collision</a>
            <a class="gd-button" href="pagina.html#CollisionState"><img src="assets/img/triggers/CollisionState.png">
                Collision State</a>
            <a class="gd-button" href="pagina.html#CollisionBlock"><img src="assets/img/triggers/CollisionBlock.png">
                Collision Block</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Triggers: Sin Organizar</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#Random"><img src="assets/img/triggers/Random.png"> Random</a>
            <a class="gd-button" href="pagina.html#AdvRandom"><img src="assets/img/triggers/AdvRandom.png"> Advanced
                Random</a>
            <a class="gd-button" href="pagina.html#Sequence"><img src="assets/img/triggers/Sequence.png"> Sequence</a>
            <a class="gd-button" href="pagina.html#UI"><img src="assets/img/triggers/UI.png"> UI Settings</a>
            <a class="gd-button" href="pagina.html#LinkVisible"><img src="assets/img/triggers/LinkVisible.png">
                Visibility Link</a>
        </div>
    </div>
    <div class="section unselectable">
        <span>Sistemas del editor</span>
        <div class="section-links">
            <a class="gd-button" href="pagina.html#Canales">Canales</a>
            <a class="gd-button" href="pagina.html#Keyframes">Keyframes</a>
            <a class="gd-button" href="/pagina.html#AutoBuild">Auto-Build</a>
        </div>
    </div>
    <script src="https://unpkg.com/@popperjs/core@2"></script>
    <script src="https://unpkg.com/tippy.js@6"></script>
    <script src="assets/js/index.js"></script>
</body>

</html>
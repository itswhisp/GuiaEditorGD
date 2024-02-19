-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2024 a las 08:28:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guia_editor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(12) NOT NULL,
  `titulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `titulo`) VALUES
(1, 'Introduccion al editor'),
(2, 'Objetos'),
(3, 'Triggers: Basicos'),
(4, 'Triggers: Visuales'),
(5, 'Triggers: Camara'),
(6, 'Triggers: Audio'),
(7, 'Triggers: Shaders'),
(8, 'Triggers: Gameplay'),
(9, 'Triggers: Items'),
(10, 'Triggers: Colisiones'),
(11, 'Triggers: Sin Organizar'),
(12, 'Sistemas del editor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int(11) NOT NULL,
  `uri_img` varchar(200) NOT NULL,
  `id_seccion` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id_imagen`, `uri_img`, `id_seccion`) VALUES
(4, 'assets/img/triggers/AreaFade.png', 42),
(5, 'assets/img/triggers/AreaMove.png', 42),
(6, 'assets/img/triggers/AreaRotate.png', 42),
(7, 'assets/img/triggers/AreaScale.png', 42),
(8, 'assets/img/triggers/AreaStop.png', 42),
(9, 'assets/img/triggers/AreaTint.png', 42),
(10, 'assets/img/triggers/EditAreaFade.png', 44),
(11, 'assets/img/triggers/EditAreaMove.png', 44),
(12, 'assets/img/triggers/EditAreaRotate.png', 44),
(13, 'assets/img/triggers/EditAreaScale.png', 44),
(14, 'assets/img/triggers/EditAreaTint.png', 44),
(15, 'assets/img/triggers/BGSwitch.png', 48),
(16, 'assets/img/triggers/GSwitch.png', 48),
(17, 'assets/img/triggers/MGSwitch.png', 48),
(18, 'assets/img/triggers/BGSpeed.png', 51),
(19, 'assets/img/triggers/MGSpeed.png', 51),
(20, 'assets/img/triggers/EnableTrail.png', 53),
(21, 'assets/img/triggers/DisableTrail.png', 53),
(22, 'assets/img/triggers/ShowIcon.png', 55),
(23, 'assets/img/triggers/HideIcon.png', 55),
(24, 'assets/img/triggers/BGEffectOn.png', 56),
(25, 'assets/img/triggers/BGEffectOff.png', 56),
(26, 'assets/img/triggers/EnterFade.png', 59),
(27, 'assets/img/triggers/EnterMove.png', 59),
(28, 'assets/img/triggers/EnterRotate.png', 59),
(29, 'assets/img/triggers/EnterScale.png', 59),
(30, 'assets/img/triggers/EnterTint.png', 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(12) NOT NULL,
  `nombre_seccion` varchar(1000) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `seccion_uri` varchar(1000) NOT NULL,
  `has_img` tinyint(1) NOT NULL DEFAULT 0,
  `imagen_uri` varchar(1000) DEFAULT NULL,
  `has_multiple_img` tinyint(1) NOT NULL DEFAULT 0,
  `id_categoria` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id_seccion`, `nombre_seccion`, `titulo`, `seccion_uri`, `has_img`, `imagen_uri`, `has_multiple_img`, `id_categoria`) VALUES
(4, 'ConceptosBasicos', 'Conceptos Basicos', 'guias/Introduccion/ConceptosBasicos.md', 0, NULL, 0, 1),
(5, 'ElegirCancion', 'Elegir una cancion', 'guias/Introduccion/ElegirCancion.md', 0, NULL, 0, 1),
(6, 'ObjetosGameplay', 'Objetos del gameplay', 'guias/Objetos/ObjetosGameplay.md', 0, NULL, 0, 2),
(11, 'MenuPausa', 'Menu de Pausa', 'pendiente', 0, NULL, 0, 1),
(12, 'PublicarNivel', 'Publicar tu nivel', 'pendiente', 0, NULL, 0, 1),
(14, 'ObjetosAnimados', 'Objetos Animados', 'pendiente', 0, NULL, 0, 2),
(15, 'ObjetosPersonalizados', 'Objetos Personalizados', 'pendiente', 0, NULL, 0, 2),
(16, 'Items', 'Items', 'pendiente', 0, NULL, 0, 2),
(17, 'Grupos', 'Editar Grupos', 'pendiente', 0, NULL, 0, 2),
(18, 'Introduccion', 'Introduccion', 'pendiente', 0, NULL, 0, 3),
(19, 'StartPos', 'Start Pos', 'pendiente', 1, 'assets/img/triggers/StartPos.png', 0, 3),
(24, 'Move', 'Move', 'pendiente', 1, 'assets/img/triggers/Move.png', 0, 3),
(25, 'Stop', 'Stop', 'pendiente', 1, 'assets/img/triggers/Stop.png', 0, 3),
(26, 'Toggle', 'Toggle', 'pend', 1, 'assets/img/triggers/Toggle.png', 0, 3),
(27, 'Spawn', 'Spawn', 'pend', 1, 'assets/img/triggers/Spawn.png', 0, 3),
(28, 'Rotate', 'Rotate', 'pend', 1, 'assets/img/triggers/Rotate.png', 0, 3),
(30, 'Scale', 'Scale', 'pend', 1, 'assets/img/triggers/Scale.png', 0, 3),
(31, 'Touch', 'Touch', 'pend', 1, 'assets/img/triggers/Touch.png', 0, 3),
(32, 'OnDeath', 'On Death', 'pend', 1, 'assets/img/triggers/OnDeath.png', 0, 3),
(33, 'Options', 'Options', 'pend', 1, 'assets/img/triggers/Options.png', 0, 3),
(34, 'Color', 'Color', 'pend', 1, 'assets/img/triggers/Color.png', 0, 4),
(35, 'Pulse', 'Pulse', 'pend', 1, 'assets/img/triggers/Pulse.png', 0, 4),
(36, 'Alpha', 'Alpha', 'pend', 1, 'assets/img/triggers/Alpha.png', 0, 4),
(37, 'Shake', 'Shake', 'pend', 1, 'assets/img/triggers/Shake.png', 0, 4),
(38, 'Animate', 'Animate', 'pendejo es yahir', 1, 'assets/img/triggers/Animate.png', 0, 4),
(39, 'KeyFrame', 'Keyframe Animation', 'pend', 1, 'assets/img/triggers/Keyframe.png', 0, 4),
(40, 'Keyframe', 'Keyframe', 'pend', 1, 'assets/img/triggers/KeyframeArrow.png', 0, 4),
(42, 'AreaTriggers', 'Area Triggers', 'pend', 1, NULL, 1, 4),
(44, 'EditArea', 'Edit Area Triggers', 'pend', 1, NULL, 1, 4),
(46, 'AreaStop', 'Area Stop', 'pend', 1, 'assets/img/triggers/AreaStop.png', 0, 4),
(48, 'ChangeBG', 'Change BG/G/MG', 'pend', 1, NULL, 1, 4),
(49, 'SpawnParticles', 'Spawn Particles', 'pendiente', 1, 'assets/img/triggers/SpawnParticle.png', 0, 4),
(50, 'SetupMG', 'Setup MG', 'pendiente', 1, 'assets/img/triggers/MG.png', 0, 4),
(51, 'BGSpeed', 'BG/MG Speed', 'pendiente', 1, NULL, 1, 4),
(53, 'ToggleTrail', 'Enable/Disable Trail', 'pendiente', 1, NULL, 1, 4),
(55, 'ShowHide', 'Show/Hide', 'pendiente', 1, NULL, 1, 4),
(56, 'BGEffect', 'BG Effect On/Off', 'pendiente', 1, NULL, 1, 4),
(57, 'Gradient', 'Gradient', 'pendiente', 1, 'assets/img/triggers/Gradient.png', 0, 4),
(58, 'EnterEffects', 'Enter Effects', 'pendiente', 0, NULL, 0, 4),
(59, 'EnterTriggers', 'Move/Rotate/Scale/Fade/Tint Enter', 'pendiente', 1, NULL, 1, 4),
(60, 'StopEnter', 'Stop Enter', 'pendiente', 1, 'assets/img/triggers/EnterStop.png', 0, 4),
(61, 'CameraZoom', 'Zoom', 'pendiente', 1, 'assets/img/triggers/CameraZoom.png', 0, 5),
(62, 'CameraStatic', 'Static Camera', 'pendiente', 1, 'assets/img/triggers/CameraStatic.png', 0, 5),
(63, 'CameraOffset', 'Camera Offset', 'pendiente', 1, 'assets/img/triggers/CameraOffset.png', 0, 5),
(64, 'GPOffset', 'Gameplay Offset', 'pend', 1, 'assets/img/triggers/GPOffset.png', 0, 5),
(65, 'CameraRotate', 'Camera Rotation', 'pendiente', 1, 'assets/img/triggers/CameraRotate.png', 0, 5),
(66, 'CameraEdge', 'Camera Edge', 'pendiente', 1, 'assets/img/triggers/CameraEdge.png', 0, 5),
(67, 'CameraGuide', 'Camera Guide', 'pendiente', 1, 'assets/img/triggers/CameraGuide.png', 0, 5),
(68, 'CameraMode', 'Camera Mode', 'pendiente', 1, 'assets/img/triggers/CameraMode.png', 0, 5),
(69, 'Song', 'Song', 'pendiente', 1, 'assets/img/triggers/Song.png', 0, 6),
(70, 'EditSong', 'Edit Song', 'pendiente', 1, 'assets/img/triggers/EditSong.png', 0, 6),
(71, 'SFX', 'SFX', 'pendiente', 1, 'assets/img/triggers/SFX.png', 0, 6),
(72, 'EditSFX', 'Edit SFX', 'pendiente', 1, 'assets/img/triggers/EditSFX.png', 0, 6),
(73, 'BPM', 'BPM Guide', 'pendiente', 1, 'assets/img/triggers/EditSFX.png', 0, 6),
(74, 'Shader', 'Shader', 'pendiente', 1, 'assets/img/triggers/Shader.png', 0, 7),
(75, 'ShockWave', 'ShockWave', 'pendiente', 1, 'assets/img/triggers/ShockWave.png', 0, 7),
(76, 'ShockLine', 'ShockLine', 'pendiente', 1, 'assets/img/triggers/ShockLine.png', 0, 7),
(77, 'Glitch', 'Glitch', 'pendiente', 1, 'assets/img/triggers/Glitch.png', 0, 7),
(78, 'Chromatic', 'Chromatic', 'pendiente', 1, 'assets/img/triggers/Chromatic.png', 0, 7),
(79, 'ChromaticGlitch', 'Chromatic Glitch', 'pendiente', 1, 'assets/img/triggers/ChromaticGlitch.png', 0, 7),
(80, 'Pixelate', 'Pixelate', 'pendiente', 1, 'assets/img/triggers/Pixelate.png', 0, 7),
(83, 'LensCircle', 'Lens Circle', 'pendiente', 1, 'assets/img/triggers/LensCircle.png', 0, 7),
(84, 'RadialBlur', 'Radial Blur', 'pendiente', 1, 'assets/img/triggers/RadialBlur.png', 0, 7),
(85, 'MotionBlur', 'Motion Blur', 'pendiente', 1, 'assets/img/triggers/MotionBlur.png', 0, 7),
(86, 'Bulge', 'Bulge', 'pendiente', 1, 'assets/img/triggers/Bulge.png', 0, 7),
(87, 'Pinch', 'Pinch', 'pendiente', 1, 'assets/img/triggers/Pinch.png', 0, 7),
(88, 'GrayScale', 'Gray Scale', 'pendiente', 1, 'assets/img/triggers/GrayScale.png', 0, 7),
(89, 'Sepia', 'Sepia', 'pendiente', 1, 'assets/img/triggers/Sepia.png', 0, 7),
(90, 'InvertColor', 'Invert Color', 'pendiente', 1, 'assets/img/triggers/InvertColor.png', 0, 7),
(91, 'Hue', 'Hue', 'pendiente', 1, 'assets/img/triggers/Hue.png', 0, 7),
(92, 'EditColor', 'Edit Color', 'pendiente', 1, 'assets/img/triggers/EditColor.png', 0, 7),
(93, 'SplitScreen', 'Split Screen', 'pendiente', 1, 'assets/img/triggers/SplitScreen.png', 0, 7),
(94, 'Reverse', 'Reverse', 'pendiente', 1, 'assets/img/triggers/Reverse.png', 0, 8),
(95, 'RotateGP', 'Rotate Gameplay', 'pendiente', 1, 'assets/img/triggers/GPRotate.png', 0, 8),
(96, 'Event', 'Event', 'pendiente', 1, 'assets/img/triggers/Event.png', 0, 8),
(97, 'TimeWarp', 'TimeWarp', 'pendiente', 1, 'assets/img/triggers/TimeWarp.png', 0, 8),
(98, 'End', 'End', 'pendiente', 1, 'assets/img/triggers/End.png', 0, 8),
(99, 'PlayerControl', 'Player Control', 'pendiente', 1, 'assets/img/triggers/PlayerControl.png', 0, 8),
(100, 'Gravity', 'Gravity', 'pendiente', 1, 'assets/img/triggers/Gravity.png', 0, 8),
(101, 'Teleport', 'Teleport', 'pendiente', 1, 'assets/img/triggers/Teleport.png', 0, 8),
(102, 'Count', 'Count', 'pendiente', 1, 'assets/img/triggers/Count.png', 1, 9),
(103, 'InstantCount', 'Instant Count', 'pendiente', 1, 'assets/img/triggers/InstantCount.png', 0, 9),
(104, 'Pickup', 'Pickup', 'pendiente', 1, 'assets/img/triggers/Pickup.png', 0, 9),
(105, 'Time', 'Time', 'pendiente', 1, 'assets/img/triggers/TimerTime.png', 0, 9),
(106, 'TimeEvent', 'Time Event', 'pendiente', 1, 'assets/img/triggers/TimerEvent.png', 0, 9),
(107, 'TimeControl', 'Time Control', 'pendiente', 1, 'assets/img/triggers/TimerControl.png', 0, 9),
(108, 'ItemEdit', 'Item Edit', 'pendiente', 1, 'assets/img/triggers/ItemEdit.png', 0, 9),
(109, 'ItemComp', 'Item Compare', 'pendiente', 1, 'assets/img/triggers/ItemComp.png', 0, 9),
(110, 'ItemPers', 'Persistent Item', 'pendiente', 1, 'assets/img/triggers/ItemPers.png', 0, 9),
(111, 'Reset', 'Reset', 'pendiente', 1, 'assets/img/triggers/Reset.png', 0, 9),
(112, 'CounterLabel', 'Counter Label', 'pendiente', 0, NULL, 0, 9),
(113, 'Collision', 'Collision', 'pendiente', 1, 'assets/img/triggers/Collision.png', 0, 10),
(114, 'InstantCollision', 'Instant Collision', 'pendiente', 1, 'assets/img/triggers/InstantCollision.png', 0, 10),
(115, 'CollisionState', 'Collision State', 'pendiente', 1, 'assets/img/triggers/CollisionState.png', 0, 10),
(116, 'CollisionBlock', 'Collision Block', 'pendiente', 1, 'assets/img/triggers/CollisionBlock.png', 0, 10),
(117, 'Random', 'Random', 'pendiente', 1, 'assets/img/triggers/Random.png', 0, 11),
(118, 'AdvRandom', 'Advanced Random', 'pendiente', 1, 'assets/img/triggers/AdvRandom.png', 0, 11),
(119, 'Sequence', 'Sequence', 'pendiente', 1, 'assets/img/triggers/Sequence.png', 0, 11),
(120, 'UI', 'UI Settings', 'pendiente', 1, 'assets/img/triggers/UI.png', 0, 11),
(121, 'LinkVisible', 'Visibility Link', 'pendiente', 1, 'assets/img/triggers/LinkVisible.png', 0, 11),
(125, 'Canales', 'Canales', 'pendiente', 0, NULL, 0, 12),
(126, 'Keyframes', 'Keyframes', 'pendiente', 0, NULL, 0, 12),
(127, 'AutoBuild', 'Auto-Build', 'pendiente', 0, NULL, 0, 12);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `id_seccion` (`id_seccion`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id_seccion`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id_seccion` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`id_seccion`) REFERENCES `secciones` (`id_seccion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `secciones_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2024 a las 07:28:33
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
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `titulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `fecha`, `titulo`) VALUES
(1, '2024-02-14', 'Introduccion al editor'),
(2, '2024-02-14', 'Objetos'),
(3, '2024-02-14', 'Triggers: Basicos'),
(4, '2024-02-14', 'Triggers: Visuales'),
(5, '2024-02-14', 'Triggers: Camara'),
(6, '2024-02-14', 'Triggers: Audio'),
(7, '2024-02-14', 'Triggers: Shaders'),
(8, '2024-02-15', 'Triggers: Gameplay'),
(9, '2024-02-15', 'Triggers: Items'),
(10, '2024-02-15', 'Triggers: Colisiones'),
(11, '2024-02-15', 'Triggers: Sin organizar'),
(12, '2024-02-15', 'Sistemas del editor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int(11) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `uri_img` varchar(200) NOT NULL,
  `id_seccion` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id_imagen`, `fecha`, `uri_img`, `id_seccion`) VALUES
(4, '2024-02-14', 'assets/img/triggers/AreaFade.png', 42),
(5, '2024-02-14', 'assets/img/triggers/AreaMove.png', 42),
(6, '2024-02-14', 'assets/img/triggers/AreaRotate.png', 42),
(7, '2024-02-14', 'assets/img/triggers/AreaScale.png', 42),
(8, '2024-02-14', 'assets/img/triggers/AreaStop.png', 42),
(9, '2024-02-14', 'assets/img/triggers/AreaTint.png', 42),
(10, '2024-02-14', 'assets/img/triggers/EditAreaFade.png', 44),
(11, '2024-02-14', 'assets/img/triggers/EditAreaMove.png', 44),
(12, '2024-02-14', 'assets/img/triggers/EditAreaRotate.png', 44),
(13, '2024-02-14', 'assets/img/triggers/EditAreaScale.png', 44),
(14, '2024-02-14', 'assets/img/triggers/EditAreaTint.png', 44),
(15, '2024-02-14', 'assets/img/triggers/BGSwitch.png', 48),
(16, '2024-02-14', 'assets/img/triggers/GSwitch.png', 48),
(17, '2024-02-14', 'assets/img/triggers/MGSwitch.png', 48),
(18, '2024-02-15', 'assets/img/triggers/BGSpeed.png', 51),
(19, '2024-02-15', 'assets/img/triggers/MGSpeed.png', 51),
(20, '2024-02-15', 'assets/img/triggers/EnableTrail.png', 53),
(21, '2024-02-15', 'assets/img/triggers/DisableTrail.png', 53),
(22, '2024-02-15', 'assets/img/triggers/ShowIcon.png', 55),
(23, '2024-02-15', 'assets/img/triggers/HideIcon.png', 55),
(24, '2024-02-15', 'assets/img/triggers/BGEffectOn.png', 56),
(25, '2024-02-15', 'assets/img/triggers/BGEffectOff.png', 56),
(26, '2024-02-16', 'assets/img/triggers/EnterFade.png', 59),
(27, '2024-02-16', 'assets/img/triggers/EnterMove.png', 59),
(28, '2024-02-16', 'assets/img/triggers/EnterRotate.png', 59),
(29, '2024-02-16', 'assets/img/triggers/EnterScale.png', 59),
(30, '2024-02-16', 'assets/img/triggers/EnterTint.png', 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id_seccion` int(12) NOT NULL,
  `nombre_seccion` varchar(1000) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
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

INSERT INTO `secciones` (`id_seccion`, `nombre_seccion`, `fecha`, `titulo`, `seccion_uri`, `has_img`, `imagen_uri`, `has_multiple_img`, `id_categoria`) VALUES
(4, 'ConceptosBasicos', '2024-02-14', 'Conceptos Basicos', 'guias/Introduccion/ConceptosBasicos.md', 0, NULL, 0, 1),
(5, 'ElegirCancion', '2024-02-14', 'Elegir una cancion', 'guias/Introduccion/ElegirCancion.md', 0, NULL, 0, 1),
(6, 'ObjetosGameplay', '2024-02-14', 'Objetos del gameplay', 'guias/Objetos/ObjetosGameplay.md', 0, NULL, 0, 2),
(11, 'MenuPausa', '2024-02-14', 'Menu de Pausa', 'pendiente', 0, NULL, 0, 1),
(12, 'PublicarNivel', '2024-02-14', 'Publicar tu nivel', 'pendiente', 0, NULL, 0, 1),
(14, 'ObjetosAnimados', '2024-02-14', 'Objetos Animados', 'pendiente', 0, NULL, 0, 2),
(15, 'ObjetosPersonalizados', '2024-02-14', 'Objetos Personalizados', 'pendiente', 0, NULL, 0, 2),
(16, 'Items', '2024-02-14', 'Items', 'pendiente', 0, NULL, 0, 2),
(17, 'Grupos', '2024-02-14', 'Editar Grupos', 'pendiente', 0, NULL, 0, 2),
(18, 'Introduccion', '2024-02-14', 'Introduccion', 'pendiente', 0, NULL, 0, 3),
(19, 'StartPos', '2024-02-14', 'Start Pos', 'pendiente', 1, 'assets/img/triggers/StartPos.png', 0, 3),
(24, 'Move', '2024-02-14', 'Move', 'pendiente', 1, 'assets/img/triggers/Move.png', 0, 3),
(25, 'Stop', '2024-02-14', 'Stop', 'pendiente', 1, 'assets/img/triggers/Stop.png', 0, 3),
(26, 'Toggle', '2024-02-14', 'Toggle', 'pend', 1, 'assets/img/triggers/Toggle.png', 0, 3),
(27, 'Spawn', '2024-02-14', 'Spawn', 'pend', 1, 'assets/img/triggers/Spawn.png', 0, 3),
(28, 'Rotate', '2024-02-14', 'Rotate', 'pend', 1, 'assets/img/triggers/Rotate.png', 0, 3),
(30, 'Scale', '2024-02-14', 'Scale', 'pend', 1, 'assets/img/triggers/Scale.png', 0, 3),
(31, 'Touch', '2024-02-14', 'Touch', 'pend', 1, 'assets/img/triggers/Touch.png', 0, 3),
(32, 'OnDeath', '2024-02-14', 'On Death', 'pend', 1, 'assets/img/triggers/OnDeath.png', 0, 3),
(33, 'Options', '2024-02-14', 'Options', 'pend', 1, 'assets/img/triggers/Options.png', 0, 3),
(34, 'Color', '2024-02-14', 'Color', 'pend', 1, 'assets/img/triggers/Color.png', 0, 4),
(35, 'Pulse', '2024-02-14', 'Pulse', 'pend', 1, 'assets/img/triggers/Pulse.png', 0, 4),
(36, 'Alpha', '2024-02-14', 'Alpha', 'pend', 1, 'assets/img/triggers/Alpha.png', 0, 4),
(37, 'Shake', '2024-02-14', 'Shake', 'pend', 1, 'assets/img/triggers/Shake.png', 0, 4),
(38, 'Animate', '2024-02-14', 'Animate', 'pend', 1, 'assets/img/triggers/Animate.png', 0, 4),
(39, 'KeyFrame', '2024-02-14', 'Keyframe Animation', 'pend', 1, 'assets/img/triggers/Keyframe.png', 0, 4),
(40, 'Keyframe', '2024-02-14', 'Keyframe', 'pend', 1, 'assets/img/triggers/KeyframeArrow.png', 0, 4),
(42, 'AreaTriggers', '2024-02-14', 'Area Triggers', 'pend', 1, NULL, 1, 4),
(44, 'EditArea', '2024-02-14', 'Edit Area Triggers', 'pend', 1, NULL, 1, 4),
(46, 'AreaStop', '2024-02-14', 'Area Stop', 'pend', 1, 'assets/img/triggers/AreaStop.png', 0, 4),
(48, 'ChangeBG', '2024-02-14', 'Change BG/G/MG', 'pend', 1, NULL, 1, 4),
(49, 'SpawnParticles', '2024-02-15', 'Spawn Particles', 'pendiente', 1, 'assets/img/triggers/SpawnParticle.png', 0, 4),
(50, 'SetupMG', '2024-02-15', 'Setup MG', 'pendiente', 1, 'assets/img/triggers/MG.png', 0, 4),
(51, 'BGSpeed', '2024-02-15', 'BG/MG Speed', 'pendiente', 1, NULL, 1, 4),
(53, 'ToggleTrail', '2024-02-15', 'Enable/Disable Trail', 'pendiente', 1, NULL, 1, 4),
(55, 'ShowHide', '2024-02-15', 'Show/Hide', 'pendiente', 1, NULL, 1, 4),
(56, 'BGEffect', '2024-02-15', 'BG Effect On/Off', 'pendiente', 1, NULL, 1, 4),
(57, 'Gradient', '2024-02-15', 'Gradient', 'pendiente', 1, 'assets/img/triggers/Gradient.png', 0, 4),
(58, 'EnterEffects', '2024-02-15', 'Enter Effects', 'pendiente', 0, NULL, 0, 4),
(59, 'EnterTriggers', '2024-02-16', 'Move/Rotate/Scale/Fade/Tint Enter', 'pendiente', 1, NULL, 1, 4),
(60, 'StopEnter', '2024-02-16', 'Stop Enter', 'pendiente', 1, 'assets/img/triggers/EnterStop.png', 0, 4),
(61, 'CameraZoom', '2024-02-16', 'Zoom', 'pendiente', 1, 'assets/img/triggers/CameraZoom.png', 0, 5),
(62, 'CameraStatic', '2024-02-16', 'Static Camera', 'pendiente', 1, 'assets/img/triggers/CameraStatic.png', 0, 5),
(63, 'CameraOffset', '2024-02-16', 'Camera Offset', 'pendiente', 1, 'assets/img/triggers/CameraOffset.png', 0, 5),
(64, 'GPOffset', '2024-02-16', 'Gameplay Offset', 'pend', 1, 'assets/img/triggers/GPOffset.png', 0, 5),
(65, 'CameraRotate', '2024-02-16', 'Camera Rotation', 'pendiente', 1, 'assets/img/triggers/CameraRotate.png', 0, 5),
(66, 'CameraEdge', '2024-02-16', 'Camera Edge', 'pendiente', 1, 'assets/img/triggers/CameraEdge.png', 0, 5),
(67, 'CameraGuide', '2024-02-16', 'Camera Guide', 'pendiente', 1, 'assets/img/triggers/CameraGuide.png', 0, 5),
(68, 'CameraMode', '2024-02-16', 'Camera Mode', 'pendiente', 1, 'assets/img/triggers/CameraMode.png', 0, 5);

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
  MODIFY `id_seccion` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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

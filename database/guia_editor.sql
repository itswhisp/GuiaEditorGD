-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2024 a las 05:16:11
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
-- Base de datos: `guia`
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
  `seccion_url` varchar(1000) NOT NULL,
  `has_img` tinyint(1) NOT NULL DEFAULT 0,
  `imagen_uri` varchar(1000) DEFAULT NULL,
  `has_multiple_img` tinyint(1) NOT NULL DEFAULT 0,
  `flag` int(11) NOT NULL DEFAULT 1,
  `id_categoria` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id_seccion`, `nombre_seccion`, `titulo`, `seccion_url`, `has_img`, `imagen_uri`, `has_multiple_img`, `flag`, `id_categoria`) VALUES
(4, 'ConceptosBasicos', 'Conceptos Basicos', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Introduccion/ConceptosBasicos.md', 0, NULL, 0, 1, 1),
(5, 'ElegirCancion', 'Elegir una cancion', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Introduccion/ElegirCancion.md', 0, NULL, 0, 1, 1),
(6, 'ObjetosGameplay', 'Objetos del gameplay', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Objetos/ObjetosGameplay.md', 0, NULL, 0, 1, 2),
(11, 'MenuPausa', 'Menu de Pausa', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Introduccion/MenuPausa.md', 0, NULL, 0, 1, 1),
(12, 'PublicarNivel', 'Publicar tu nivel', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Introduccion/PublicarNivel.md', 0, NULL, 0, 1, 1),
(14, 'ObjetosAnimados', 'Objetos Animados', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Objetos/ObjetosAnimados.md', 0, NULL, 0, 1, 2),
(15, 'ObjetosPersonalizados', 'Objetos Personalizados', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Objetos/ObjetosPersonalizados.md', 0, NULL, 0, 1, 2),
(16, 'Items', 'Items', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Objetos/Items.md', 0, NULL, 0, 1, 2),
(17, 'Grupos', 'Editar Grupos', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Objetos/EditarGrupos.md', 0, NULL, 0, 1, 2),
(18, 'Introduccion', 'Introduccion', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/IntroduccionTriggers.md', 0, NULL, 0, 1, 3),
(19, 'StartPos', 'Start Pos', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/StartPos.md', 1, 'assets/img/triggers/StartPos.png', 0, 1, 3),
(24, 'Move', 'Move', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Move.md', 1, 'assets/img/triggers/Move.png', 0, 1, 3),
(25, 'Stop', 'Stop', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Stop.md', 1, 'assets/img/triggers/Stop.png', 0, 1, 3),
(26, 'Toggle', 'Toggle', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Toggle.md', 1, 'assets/img/triggers/Toggle.png', 0, 1, 3),
(27, 'Spawn', 'Spawn', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Spawn.md', 1, 'assets/img/triggers/Spawn.png', 0, 1, 3),
(28, 'Rotate', 'Rotate', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Rotate.md', 1, 'assets/img/triggers/Rotate.png', 0, 1, 3),
(30, 'Scale', 'Scale', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Scale.md', 1, 'assets/img/triggers/Scale.png', 0, 1, 3),
(31, 'Touch', 'Touch', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Touch.md', 1, 'assets/img/triggers/Touch.png', 0, 1, 3),
(32, 'OnDeath', 'On Death', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/OnDeath.md', 1, 'assets/img/triggers/OnDeath.png', 0, 1, 3),
(33, 'Options', 'Options', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Options.md', 1, 'assets/img/triggers/Options.png', 0, 1, 3),
(34, 'Color', 'Color', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Color.md', 1, 'assets/img/triggers/Color.png', 0, 1, 4),
(35, 'Pulse', 'Pulse', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Pulse.md', 1, 'assets/img/triggers/Pulse.png', 0, 1, 4),
(36, 'Alpha', 'Alpha', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Alpha.md', 1, 'assets/img/triggers/Alpha.png', 0, 1, 4),
(37, 'Shake', 'Shake', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Shake.md', 1, 'assets/img/triggers/Shake.png', 0, 1, 4),
(38, 'Animate', 'Animate', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Animate.md', 1, 'assets/img/triggers/Animate.png', 0, 1, 4),
(39, 'KeyFrameAnimation', 'Keyframe Animation', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/KeyframeAnimation.md', 1, 'assets/img/triggers/Keyframe.png', 0, 1, 4),
(40, 'KeyFrame', 'Keyframe', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Keyframe.md', 1, 'assets/img/triggers/KeyframeArrow.png', 0, 1, 4),
(42, 'AreaTriggers', 'Area Triggers', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/AreaTriggers.md', 1, NULL, 1, 1, 4),
(44, 'EditArea', 'Edit Area Triggers', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/EditArea.md', 1, NULL, 1, 1, 4),
(46, 'AreaStop', 'Area Stop', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/AreaStop.md', 1, 'assets/img/triggers/AreaStop.png', 0, 1, 4),
(48, 'ChangeBG', 'Change BG/G/MG', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/ChangeBG.md', 1, NULL, 1, 1, 4),
(49, 'SpawnParticles', 'Spawn Particles', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/SpawnParticles.md', 1, 'assets/img/triggers/SpawnParticle.png', 0, 1, 4),
(50, 'SetupMG', 'Setup MG', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/SetupMG.md', 1, 'assets/img/triggers/MG.png', 0, 1, 4),
(51, 'BGSpeed', 'BG/MG Speed', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/BGSpeed.md', 1, NULL, 1, 1, 4),
(53, 'ToggleTrail', 'Enable/Disable Trail', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/fff59f808f4fcfc93a33dc3a866ef2c08f7ecaab/guias/Triggers/ToggleTrail.md', 1, NULL, 1, 1, 4),
(55, 'ShowHide', 'Show/Hide', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/fff59f808f4fcfc93a33dc3a866ef2c08f7ecaab/guias/Triggers/ShowHide.md', 1, NULL, 1, 1, 4),
(56, 'BGEffect', 'BG Effect On/Off', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/fff59f808f4fcfc93a33dc3a866ef2c08f7ecaab/guias/Triggers/BGEffect.md', 1, NULL, 1, 1, 4),
(57, 'Gradient', 'Gradient', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/fff59f808f4fcfc93a33dc3a866ef2c08f7ecaab/guias/Triggers/Gradient.md', 1, 'assets/img/triggers/Gradient.png', 0, 1, 4),
(58, 'EnterEffects', 'Enter Effects', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/fff59f808f4fcfc93a33dc3a866ef2c08f7ecaab/guias/Triggers/EnterEffects.md', 0, NULL, 0, 1, 4),
(59, 'EnterTriggers', 'Move/Rotate/Scale/Fade/Tint Enter', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/EnterTriggers.md', 1, NULL, 1, 1, 4),
(60, 'StopEnter', 'Stop Enter', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/fff59f808f4fcfc93a33dc3a866ef2c08f7ecaab/guias/Triggers/StopEnter.md', 1, 'assets/img/triggers/EnterStop.png', 0, 1, 4),
(61, 'CameraZoom', 'Zoom', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CameraZoom.md', 1, 'assets/img/triggers/CameraZoom.png', 0, 1, 5),
(62, 'CameraStatic', 'Static Camera', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CameraStatic.md', 1, 'assets/img/triggers/CameraStatic.png', 0, 1, 5),
(63, 'CameraOffset', 'Camera Offset', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CameraOffset.md', 1, 'assets/img/triggers/CameraOffset.png', 0, 1, 5),
(64, 'GPOffset', 'Gameplay Offset', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/GameplayOffset.md', 1, 'assets/img/triggers/GPOffset.png', 0, 1, 5),
(65, 'CameraRotate', 'Camera Rotation', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CameraRotate.md', 1, 'assets/img/triggers/CameraRotate.png', 0, 1, 5),
(66, 'CameraEdge', 'Camera Edge', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CameraEdge.md', 1, 'assets/img/triggers/CameraEdge.png', 0, 1, 5),
(67, 'CameraGuide', 'Camera Guide', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CameraGuide.md', 1, 'assets/img/triggers/CameraGuide.png', 0, 1, 5),
(68, 'CameraMode', 'Camera Mode', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CameraMode.md', 1, 'assets/img/triggers/CameraMode.png', 0, 1, 5),
(69, 'Song', 'Song', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Song.md', 1, 'assets/img/triggers/Song.png', 0, 1, 6),
(70, 'EditSong', 'Edit Song', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/EditSong.md', 1, 'assets/img/triggers/EditSong.png', 0, 1, 6),
(71, 'SFX', 'SFX', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/SFX.md', 1, 'assets/img/triggers/SFX.png', 0, 1, 6),
(72, 'EditSFX', 'Edit SFX', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/EditSFX.md', 1, 'assets/img/triggers/EditSFX.png', 0, 1, 6),
(73, 'BPM', 'BPM Guide', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/BPMGuide.md', 1, 'assets/img/triggers/EditSFX.png', 0, 1, 6),
(74, 'Shader', 'Shader', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Shader.md', 1, 'assets/img/triggers/Shader.png', 0, 1, 7),
(75, 'ShockWave', 'ShockWave', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Shockwave.md', 1, 'assets/img/triggers/ShockWave.png', 0, 1, 7),
(76, 'ShockLine', 'ShockLine', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/ShockLine.md', 1, 'assets/img/triggers/ShockLine.png', 0, 1, 7),
(77, 'Glitch', 'Glitch', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Glitch.md', 1, 'assets/img/triggers/Glitch.png', 0, 1, 7),
(78, 'Chromatic', 'Chromatic', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Chromatic.md', 1, 'assets/img/triggers/Chromatic.png', 0, 1, 7),
(79, 'ChromaticGlitch', 'Chromatic Glitch', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/ChromaticGlitch.md', 1, 'assets/img/triggers/ChromaticGlitch.png', 0, 1, 7),
(80, 'Pixelate', 'Pixelate', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Pixelate.md', 1, 'assets/img/triggers/Pixelate.png', 0, 1, 7),
(83, 'LensCircle', 'Lens Circle', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/LensCircle.md', 1, 'assets/img/triggers/LensCircle.png', 0, 1, 7),
(84, 'RadialBlur', 'Radial Blur', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/RadialBlur.md', 1, 'assets/img/triggers/RadialBlur.png', 0, 1, 7),
(85, 'MotionBlur', 'Motion Blur', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/MotionBlur.md', 1, 'assets/img/triggers/MotionBlur.png', 0, 1, 7),
(86, 'Bulge', 'Bulge', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Bulge.md', 1, 'assets/img/triggers/Bulge.png', 0, 1, 7),
(87, 'Pinch', 'Pinch', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Pinch.md', 1, 'assets/img/triggers/Pinch.png', 0, 1, 7),
(88, 'GrayScale', 'Gray Scale', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Grayscale.md', 1, 'assets/img/triggers/GrayScale.png', 0, 1, 7),
(89, 'Sepia', 'Sepia', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Sepia.md', 1, 'assets/img/triggers/Sepia.png', 0, 1, 7),
(90, 'InvertColor', 'Invert Color', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/InvertColor.md', 1, 'assets/img/triggers/InvertColor.png', 0, 1, 7),
(91, 'Hue', 'Hue', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Hue.md', 1, 'assets/img/triggers/Hue.png', 0, 1, 7),
(92, 'EditColor', 'Edit Color', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/EditColor.md', 1, 'assets/img/triggers/EditColor.png', 0, 1, 7),
(93, 'SplitScreen', 'Split Screen', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/SplitScreen.md', 1, 'assets/img/triggers/SplitScreen.png', 0, 1, 7),
(94, 'Reverse', 'Reverse', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Reverse.md', 1, 'assets/img/triggers/Reverse.png', 0, 1, 8),
(95, 'RotateGP', 'Rotate Gameplay', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/RotateGameplay.md', 1, 'assets/img/triggers/GPRotate.png', 0, 1, 8),
(96, 'Event', 'Event', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Event.md', 1, 'assets/img/triggers/Event.png', 0, 1, 8),
(97, 'TimeWarp', 'TimeWarp', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/TimeWarp.md', 1, 'assets/img/triggers/TimeWarp.png', 0, 1, 8),
(98, 'End', 'End', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/End.md', 1, 'assets/img/triggers/End.png', 0, 1, 8),
(99, 'PlayerControl', 'Player Control', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/PlayerControl.md', 1, 'assets/img/triggers/PlayerControl.png', 0, 1, 8),
(100, 'Gravity', 'Gravity', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Gravity.md', 1, 'assets/img/triggers/Gravity.png', 0, 1, 8),
(101, 'Teleport', 'Teleport', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Teleport.md', 1, 'assets/img/triggers/Teleport.png', 0, 1, 8),
(102, 'Count', 'Count', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Count.md', 1, 'assets/img/triggers/Count.png', 1, 1, 9),
(103, 'InstantCount', 'Instant Count', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/InstantCount.md', 1, 'assets/img/triggers/InstantCount.png', 0, 1, 9),
(104, 'Pickup', 'Pickup', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Pickup.md', 1, 'assets/img/triggers/Pickup.png', 0, 1, 9),
(105, 'Time', 'Time', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Time.md', 1, 'assets/img/triggers/TimerTime.png', 0, 1, 9),
(106, 'TimeEvent', 'Time Event', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/TimeEvent.md', 1, 'assets/img/triggers/TimerEvent.png', 0, 1, 9),
(107, 'TimeControl', 'Time Control', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/TimeControl.md', 1, 'assets/img/triggers/TimerControl.png', 0, 1, 9),
(108, 'ItemEdit', 'Item Edit', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/ItemEdit.md', 1, 'assets/img/triggers/ItemEdit.png', 0, 1, 9),
(109, 'ItemComp', 'Item Compare', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/ItemCompare.md', 1, 'assets/img/triggers/ItemComp.png', 0, 1, 9),
(110, 'ItemPers', 'Persistent Item', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/PersistentItem.md', 1, 'assets/img/triggers/ItemPers.png', 0, 1, 9),
(111, 'Reset', 'Reset', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Reset.md', 1, 'assets/img/triggers/Reset.png', 0, 1, 9),
(112, 'CounterLabel', 'Counter Label', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CounterLabel.md', 0, NULL, 0, 1, 9),
(113, 'Collision', 'Collision', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Collision.md', 1, 'assets/img/triggers/Collision.png', 0, 1, 10),
(114, 'InstantCollision', 'Instant Collision', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/InstantCollision.md', 1, 'assets/img/triggers/InstantCollision.png', 0, 1, 10),
(115, 'CollisionState', 'Collision State', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CollisionState.md', 1, 'assets/img/triggers/CollisionState.png', 0, 1, 10),
(116, 'CollisionBlock', 'Collision Block', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/CollisionBlock.md', 1, 'assets/img/triggers/CollisionBlock.png', 0, 1, 10),
(117, 'Random', 'Random', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Random.md', 1, 'assets/img/triggers/Random.png', 0, 1, 11),
(118, 'AdvRandom', 'Advanced Random', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/AdvancedRandom.md', 1, 'assets/img/triggers/AdvRandom.png', 0, 1, 11),
(119, 'Sequence', 'Sequence', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/Sequence.md', 1, 'assets/img/triggers/Sequence.png', 0, 1, 11),
(120, 'UI', 'UI Settings', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/UISettings.md', 1, 'assets/img/triggers/UI.png', 0, 1, 11),
(121, 'LinkVisible', 'Visibility Link', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Triggers/VisibilityLink.md', 1, 'assets/img/triggers/LinkVisible.png', 0, 1, 11),
(125, 'Canales', 'Canales', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Sistemas/Canales.md', 0, NULL, 0, 1, 12),
(126, 'Keyframes', 'Keyframes', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Sistemas/Keyframes.md', 0, NULL, 0, 1, 12),
(127, 'AutoBuild', 'Auto-Build', 'https://github.com/ItsWhisp/GuiaEditorGD/raw/main/guias/Sistemas/AutoBuild.md', 0, NULL, 0, 1, 12);

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

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-06-2019 a las 12:21:03
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uneteapl_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(2) NOT NULL,
  `nivel` int(11) NOT NULL DEFAULT '0',
  `userlist` int(11) NOT NULL DEFAULT '0',
  `correo_electronico` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `contrasenia` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nombres` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `apellidos` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `imagen` varchar(255) CHARACTER SET latin1 DEFAULT 'default.jpg',
  `acerca_de` text CHARACTER SET latin1,
  `usuario_creacion` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `usuario_modificacion` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT '0',
  `activado` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nivel`, `userlist`, `correo_electronico`, `contrasenia`, `nombres`, `apellidos`, `imagen`, `acerca_de`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`, `estado`, `activado`) VALUES
(1, 0, 0, 'kluizsv@gmail.com', '2d3a53904fbf8678a6bfd8b626a8de0d4da7d6e1', 'Luis', 'Shepherd Vargas', 'default.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean porttitor vestibulum imperdiet. Ut auctor accumsan erat, a vulputate metus tristique non. Aliquam aliquam vel orci quis sagittis.', '1', '1', '2014-08-06 22:08:29', '2016-05-11 07:45:51', 1, 1),
(1415426074, 1, 1, 'admin@phsperu.com', '2d3a53904fbf8678a6bfd8b626a8de0d4da7d6e1', 'Administrador', 'General', 'default.jpg', '', '0', '1', '2014-11-07 23:54:34', '2018-03-22 01:45:15', 1, 1),
(1557795287, 3, 1, 'wmo_15@hotmail.com', '3c36c627f0f916086fc23d041e56047ad1d79e82', 'wendy', 'mendoza ortiz', 'default.jpg', NULL, '1', '1', '2019-05-14 00:54:47', '2019-05-14 00:54:47', 1, 1),
(1557795288, 3, 0, 'danicza.chonto@plan-international.org', 'b1ff15361907093a6470eef2dbd78c9fb8893ada', 'danicza milagros', 'chonto uceda', 'default.jpg', NULL, '1', '1', '2019-05-14 00:54:48', '2019-05-14 00:54:48', 1, 1),
(1557795290, 3, 1, 'allivillar9@gmail.com', 'f222fb9f13ea9e5168ff56a2f2c66c7378a66f5a', 'Allison', 'Villar Sotero', 'default.jpg', NULL, '1', '1', '2019-05-14 00:54:50', '2019-05-14 00:54:50', 1, 1),
(1557847780, 3, 0, NULL, 'd5923d0c59c40e53bbed47864783e73dc832d55d', 'Ulises', 'Navarro De la torre', 'default.jpg', NULL, '1', '1', '2019-05-14 15:29:40', '2019-05-14 15:29:40', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aliados`
--

CREATE TABLE `aliados` (
  `id` bigint(20) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `enlace` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `activado` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `aliados`
--

INSERT INTO `aliados` (`id`, `id_padre`, `titulo`, `imagen`, `enlace`, `estado`, `activado`, `orden`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1553194259, 1553153592, 'Scotiabank', '1553194259.png', 'http://#', 1, 1, 0, 1, 1, '2019-03-21 18:50:59', '2019-03-21 18:50:59'),
(1553194280, 1553153592, 'Belcorp', '1553194280.png', 'http://#', 1, 1, 0, 1, 1, '2019-03-21 18:51:20', '2019-03-21 18:51:20'),
(1553194385, 1553153592, 'Hyundai', '1553194385.png', '', 1, 1, 0, 1, 1, '2019-03-21 18:53:05', '2019-03-21 18:53:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backend_menu`
--

CREATE TABLE `backend_menu` (
  `id` int(11) NOT NULL,
  `icono` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `metodo` varchar(255) NOT NULL DEFAULT 'abrir',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `grupo` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `backend_menu`
--

INSERT INTO `backend_menu` (`id`, `icono`, `metodo`, `url`, `titulo`, `grupo`, `estado`, `orden`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1553150799, 'fa-bars', 'abrir', 'banners', '', 'Banners', 1, 0, 1, 1, '2019-03-21 06:46:39', '2019-03-21 06:46:39'),
(1553150815, 'fa-bars', 'abrir', 'aliados', '', 'Nuestros Aliados', 1, 0, 1, 1, '2019-03-21 06:46:55', '2019-03-21 06:46:55'),
(1553151659, 'fa-bars', 'abrir', 'estadisticas', '', 'Estadísticas', 1, 0, 1, 1, '2019-03-21 07:00:59', '2019-03-21 07:00:59'),
(1553151673, 'fa-money', 'abrir', 'precios', '', 'Precios', 1, 0, 1, 1, '2019-03-21 07:01:13', '2019-03-21 07:01:13'),
(1553151698, 'fa-comment-o', 'abrir', 'testimonios', '', 'Testimonios', 1, 0, 1, 1, '2019-03-21 07:01:38', '2019-03-21 07:01:38'),
(1553152532, 'fa-bookmark', 'abrir', 'campanias', '', 'Campañas', 1, 0, 1, 1, '2019-03-21 07:15:32', '2019-03-21 07:15:32'),
(1553195678, 'fa-bars', 'abrir', 'programas', '', 'Programas', 1, 0, 1, 1, '2019-03-21 19:14:38', '2019-03-21 19:14:38'),
(1553298889, 'fa-bars', 'abrir', 'paises', '', 'Países', 1, 0, 1, 1, '2019-03-22 23:54:49', '2019-03-22 23:54:49'),
(1553367301, 'fa-bars', 'abrir', 'formulario', '', 'Donaciones', 1, 0, 1, 1, '2019-03-23 18:55:01', '2019-03-23 18:55:01'),
(1553367317, 'fa-bars', 'abrir', 'pagos', '', 'Donaciones', 1, 0, 1, 1, '2019-03-23 18:55:17', '2019-03-23 18:55:17'),
(1558137924, 'fa-refresh', 'abrir', 'suscripciones', '', 'Donaciones', 1, 0, 1, 1, '2019-05-18 00:05:24', '2019-05-18 00:05:24'),
(1559256703, 'fa-trash-o', 'abrir_pestania', 'remover_pruebas', '', 'Donaciones', 1, 0, 1, 1, '2019-05-30 22:51:43', '2019-05-30 22:51:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `imagen_izquierda` varchar(255) DEFAULT NULL,
  `imagen_fondo` varchar(255) NOT NULL,
  `imagen_derecha` varchar(255) DEFAULT NULL,
  `enlace` varchar(255) DEFAULT NULL,
  `imagen_enlace` varchar(255) DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `activado` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id`, `id_padre`, `titulo`, `logo`, `imagen_izquierda`, `imagen_fondo`, `imagen_derecha`, `enlace`, `imagen_enlace`, `tipo`, `estado`, `activado`, `orden`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1553190971, 1553153592, 'Prueba I', '1553281177.png', '1553190971.png', '1553190971.jpg', NULL, '#contactanos', '15531909711.png', 0, 1, 1, 0, 1, 1, '2019-03-21 17:56:11', '2019-03-23 05:57:21'),
(1553191166, 1553153592, 'Prueba II', '1553281235.png', '1553191165.png', '1553191165.jpg', '1553191235.png', '#contactanos', '1553191166.png', 0, 1, 1, 0, 1, 1, '2019-03-21 17:59:26', '2019-03-23 05:57:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campanias`
--

CREATE TABLE `campanias` (
  `id` int(1) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `logo_gracias` varchar(255) DEFAULT NULL,
  `titulo` text CHARACTER SET latin1 NOT NULL,
  `titulo_uno_menu` varchar(255) NOT NULL,
  `titulo_dos_menu` varchar(255) NOT NULL,
  `titulo_tres_menu` varchar(255) NOT NULL,
  `titulo_cuatro_menu` varchar(255) NOT NULL,
  `fondo_menu` varchar(255) NOT NULL,
  `fondo_primer_contenido` varchar(255) NOT NULL,
  `color_fondo_primer_contenido` varchar(255) NOT NULL,
  `primera_imagen` varchar(255) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `fondo_video` varchar(255) NOT NULL,
  `fondo_video_responsive` varchar(255) NOT NULL,
  `segunda_imagen` varchar(255) NOT NULL,
  `titulo_testimonios` varchar(255) NOT NULL,
  `fondo_testimonios` varchar(255) NOT NULL,
  `fondo_estadisticas_responsive` varchar(255) DEFAULT NULL,
  `primer_separador_contenido` varchar(255) NOT NULL,
  `fondo_segundo_contenido` varchar(255) NOT NULL,
  `color_fondo_segundo_contenido` varchar(15) NOT NULL,
  `tercera_imagen` varchar(255) NOT NULL,
  `fondo_estadisticas` varchar(255) NOT NULL,
  `cuarta_imagen` varchar(255) NOT NULL,
  `primer_tipo_donacion` varchar(255) NOT NULL,
  `segundo_tipo_donacion` varchar(255) NOT NULL,
  `fondo_tipo_donacion` varchar(255) NOT NULL,
  `fondo_primer_tipo_donacion` varchar(255) NOT NULL,
  `fondo_segundo_tipo_donacion` varchar(255) NOT NULL,
  `alerta_asterisco` text NOT NULL,
  `monto_minimo_1` decimal(10,2) DEFAULT NULL,
  `monto_minimo_2` decimal(10,2) DEFAULT NULL,
  `fondo_tercer_contenido` varchar(255) NOT NULL,
  `unete` varchar(255) NOT NULL,
  `subtitulo_unete` varchar(255) NOT NULL,
  `dona` varchar(255) NOT NULL,
  `subtitulo_dona` varchar(255) NOT NULL,
  `imagen_metas` varchar(255) NOT NULL,
  `meta` int(11) NOT NULL,
  `titulo_gracias` varchar(255) DEFAULT NULL,
  `contenido_gracias` varchar(255) DEFAULT NULL,
  `subtitulo_derecha` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `titulo_rango_uno` varchar(255) NOT NULL,
  `titulo_rango_dos` varchar(255) NOT NULL,
  `titulo_rango_tres` varchar(255) NOT NULL,
  `titulo_rango_cuatro` varchar(255) NOT NULL,
  `titulo_rango_cinco` varchar(255) NOT NULL,
  `imagen_ninias` varchar(255) NOT NULL,
  `fondo_cuarto_contenido` varchar(255) NOT NULL,
  `fondo_cuarto_contenido_responsive` varchar(255) NOT NULL,
  `color_fondo_cuarto_contenido` varchar(255) NOT NULL,
  `titulo_programas` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `titulo_enlace` varchar(255) NOT NULL,
  `destino_enlace` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `titulo_aliados` varchar(255) NOT NULL,
  `keywords` text CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `email_contacto` varchar(100) CHARACTER SET latin1 NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `google_analytics` text,
  `titulo_seo` varchar(255) NOT NULL,
  `descripcion_seo` text NOT NULL,
  `imagen_seo` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `activado` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `campanias`
--

INSERT INTO `campanias` (`id`, `logo`, `logo_gracias`, `titulo`, `titulo_uno_menu`, `titulo_dos_menu`, `titulo_tres_menu`, `titulo_cuatro_menu`, `fondo_menu`, `fondo_primer_contenido`, `color_fondo_primer_contenido`, `primera_imagen`, `video`, `fondo_video`, `fondo_video_responsive`, `segunda_imagen`, `titulo_testimonios`, `fondo_testimonios`, `fondo_estadisticas_responsive`, `primer_separador_contenido`, `fondo_segundo_contenido`, `color_fondo_segundo_contenido`, `tercera_imagen`, `fondo_estadisticas`, `cuarta_imagen`, `primer_tipo_donacion`, `segundo_tipo_donacion`, `fondo_tipo_donacion`, `fondo_primer_tipo_donacion`, `fondo_segundo_tipo_donacion`, `alerta_asterisco`, `monto_minimo_1`, `monto_minimo_2`, `fondo_tercer_contenido`, `unete`, `subtitulo_unete`, `dona`, `subtitulo_dona`, `imagen_metas`, `meta`, `titulo_gracias`, `contenido_gracias`, `subtitulo_derecha`, `slogan`, `titulo_rango_uno`, `titulo_rango_dos`, `titulo_rango_tres`, `titulo_rango_cuatro`, `titulo_rango_cinco`, `imagen_ninias`, `fondo_cuarto_contenido`, `fondo_cuarto_contenido_responsive`, `color_fondo_cuarto_contenido`, `titulo_programas`, `telefono`, `direccion`, `titulo_enlace`, `destino_enlace`, `linkedin`, `titulo_aliados`, `keywords`, `description`, `email_contacto`, `facebook`, `twitter`, `instagram`, `youtube`, `google_analytics`, `titulo_seo`, `descripcion_seo`, `imagen_seo`, `estado`, `activado`, `orden`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, '1521679389.png', '', 'Admin Codeigniter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '0.00', NULL, '', '', '', '', '', '', 0, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'lshepherd@phsperu.com', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 1, '2018-03-12 00:00:00', '2018-03-22 01:44:51'),
(1553153592, '1553153590.png', '1557180358.png', 'Plan International Perú', 'Acerca de', 'Tipo de Donaciones', 'Donar y ser Parte', 'Contáctanos', '15531535901.png', '15531535902.png', '#0072ce', '15531535903.png', 'wMzyl12jWYI', '15531535904.png', '1554232630.png', '15531535905.png', 'TESTIMONIOS', '1553288470.png', '15547489301.png', '15531535906.png', '1553153591.png', '#0067c2', '15531535911.png', '15531535912.png', '15531535913.png', 'DONACIÓN ÚNICA', 'DONACIÓN MENSUAL', '1553319558.png', '15531535914.png', '15531535915.png', '*Por 1 año completo aprenderán sobre liderazgo, educación financiera, uso de herramientas digitales y desarrollo de proyecto de vida.', '5.00', '3.00', '15531535916.png', 'ÚNETE', 'Conoce más de<br />nuestros proyectos', 'DONA', 'Aporta y cambia su futuro<span class=\"color-2\">Tu ayuda es significativa</span>', '15531535917.png', 0, '¡Gracias!', 'Gracias a ti, más niñas podrán tener un mejor futuro y ayudar a las personas que LAS RODEAN.', 'Invita a más personas a ayudarnos\r\npara que las niñas de todo el Perú sean', 'Niñas con igualdad', '<span class=\"num-cant-nin\">700</span> Niñas', '<span class=\"num-cant-nin\">400</span> Niñas', '<span class=\"num-cant-nin\">250</span> Niñas', '<span class=\"num-cant-nin\">100</span> Niñas', '<span class=\"num-cant-nin\">25</span> Niñas', '15531535918.png', '1553153592.png', '1553288879.png', '#0073d6', 'Unidad de Programas', '+51 (1) 264 7274', 'Av. Del Parque Norte, N° 639. Urb. Corpac. San Isidro – Lima, Perú.', 'www.plan-internacional.org/peru ', 'http://plan-international.org/es/peru', 'https://www.linkedin.com/company/plan-international-per%C3%BA', 'NUESTROS ALIADOS', '', '', 'donaciones.peru@uneteaplanperu.org.pe', 'https://www.facebook.com/PlanPeru/', 'https://twitter.com/planperu', 'https://www.instagram.com/plan_peru/', 'https://www.youtube.com/c/PlanPeru', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-139276911-1\"></script>\r\n\r\n<script>\r\n\r\n  window.dataLayer = window.dataLayer || [];\r\n\r\n  function gtag(){dataLayer.push(arguments);}\r\n\r\n  gtag(\'js\', new Date());\r\n\r\n \r\n\r\n  gtag(\'config\', \'UA-139276911-1\');\r\n\r\n</script>', '¡Abre las puertas de su futuro!', 'Con tu donación ayudarás a promover los derechos de la niñez y la igualdad de las niñas', '1554938758.jpg', 1, 1, 0, 1, 1, '2019-03-21 07:33:12', '2019-05-15 23:26:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `titulo` text CHARACTER SET latin1 NOT NULL,
  `aceptar_culqi` int(11) NOT NULL,
  `comercio_culqi` varchar(255) NOT NULL,
  `key_secret_culqi` varchar(255) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `logo`, `titulo`, `aceptar_culqi`, `comercio_culqi`, `key_secret_culqi`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1, '1521679389.png', 'Plan Internacional Perú', 1, 'pk_live_XKzrpAolni2iKU0b', 'sk_live_s9kuNcVBOP4ytEjR', 1, 1, '2018-03-12 00:00:00', '2019-04-09 16:01:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `id` bigint(20) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `contenido` text NOT NULL,
  `estado` int(11) NOT NULL,
  `activado` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estadisticas`
--

INSERT INTO `estadisticas` (`id`, `id_padre`, `titulo`, `contenido`, `estado`, `activado`, `orden`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1553194787, 1553153592, '23', '23 de cada 100 adolecentes, entre 15 y 19 años de la zona rural, estuvo alguna vez embarazada', 1, 1, 0, 1, 1415426074, '2019-03-21 18:59:47', '2019-03-26 00:16:59'),
(1553194799, 1553153592, '2', '2 de cada 10 niñas en el Perú, entre 17 a 18 años, no culminan el colegio.', 1, 1, 0, 1, 1, '2019-03-21 18:59:59', '2019-03-21 18:59:59'),
(1553194810, 1553153592, '29%', 'El ingreso promedio de las mujeres en el Perú es 29% menos que el de los hombres.', 1, 1, 0, 1, 1, '2019-03-21 19:00:10', '2019-03-21 19:00:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularios`
--

CREATE TABLE `formularios` (
  `id` int(11) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  `tipo_documento` int(11) NOT NULL,
  `otro_tipo_documento` varchar(255) DEFAULT NULL,
  `numero_documento` varchar(255) NOT NULL,
  `pais` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formularios`
--

INSERT INTO `formularios` (`id`, `id_padre`, `nombres`, `apellido_paterno`, `apellido_materno`, `email`, `celular`, `tipo_documento`, `otro_tipo_documento`, `numero_documento`, `pais`, `estado`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1554247305, 1553153592, 'luis', 'shepherd', 'vargas', 'kluizsv@gmail.com', '960799963', 1, '', '71645895', 1553311912, 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1554302629, 1553153592, 'Gabriel', 'Sosa', 'Lizarraga', 'hola@codea.pe', '987654321', 1, '', '87654321', 1553311912, 1, 1, 1, '2019-04-03 14:43:49', '2019-04-03 14:43:49'),
(1554850017, 1553153592, 'Prueba', 'Prueba', 'prueba', 'kluizsv@gmail.com', '960799963', 1, '', '71645895', 1553311912, 1, 1, 1, '2019-04-09 22:46:57', '2019-04-09 22:46:57'),
(1556055807, 1553153592, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960799963', 1, '', '71645895', 1553311912, 1, 1, 1, '2019-04-23 21:43:27', '2019-04-23 21:43:27'),
(1556311346, 1553153592, 'Johanna', 'Lozano', 'Conde', 'Johannafiorellalozano@gmail.com', '929568419', 1, '', '72184791', 1553311912, 1, 1, 1, '2019-04-26 20:42:26', '2019-04-26 20:42:26'),
(1556643206, 1553153592, 'Any ', 'Monzon ', 'Silva ', 'Anyabigail1999@gmail.com', '960716910', 1, '', '77034345', 1553311912, 1, 1, 1, '2019-04-30 16:53:26', '2019-04-30 16:53:26'),
(1556923283, 1553153592, 'ulises', 'navarro', 'de la torre', 'unavarrodelatorre@gmail.com', '98765432', 1, '', '10804434', 1553311912, 1, 1, 1, '2019-05-03 22:41:23', '2019-05-03 22:41:23'),
(1557517110, 1553153592, 'danicza milagros', 'chonto', 'uceda', 'danicza.chonto@plan-international.org', '986328369', 1, '', '44088369', 1553311912, 1, 1, 1, '2019-05-10 19:38:30', '2019-05-10 19:38:30'),
(1557538307, 1553153592, 'Miuller Edison', 'Rosas', 'Herrera', 'miullerosas@hotmail.com', '947531658', 3, 'Dni', '44969616', 1553311912, 1, 1, 1, '2019-05-11 01:31:47', '2019-05-11 01:31:47'),
(1557957191, 1553153592, 'Christian', 'soto', 'torres', 'christian@mu.com.pe', '951730321', 1, '', '72648045', 1553311912, 1, 1, 1, '2019-05-15 21:53:11', '2019-05-15 21:53:11'),
(1558725088, 1553153592, 'Maria elena', 'Montoya', 'saavedra', 'malenamosa@hotmail.com', '5149916751', 1, '', '10317193', 1553311912, 1, 1, 1, '2019-05-24 19:11:28', '2019-05-24 19:11:28'),
(1559055809, 1553153592, 'Salvador', 'Garcia', 'x', 'garcia.sal.g@gmail.com', '977821233', 2, '', '000969344', 1553311912, 1, 1, 1, '2019-05-28 15:03:29', '2019-05-28 15:03:29'),
(1559870359, 1553153592, 'Ximena del pilar', 'Lopez', 'Daza', 'Ximloda@hotmail.com', '979046477', 1, '', '72313133', 1553311912, 1, 1, 1, '2019-06-07 01:19:19', '2019-06-07 01:19:19'),
(1560206376, 1553153592, 'Marco', 'Impulse', '', 'marco.chunga@impulsewsi.com', '951793511', 1, '', '44129641', 1553311912, 1, 1, 1, '2019-06-10 22:39:36', '2019-06-10 22:39:36'),
(1560687450, 1553153592, 'Danae', 'Montero', 'Alvarado', 'maferli_2000@Outlook.com', '938165926', 1, '', '70228183', 1553311912, 1, 1, 1, '2019-06-16 12:17:30', '2019-06-16 12:17:30'),
(1560782504, 1553153592, 'victor felipe', 'garcia', 'hernandez', 'victor.garcia@plan-international.org', '994613792', 1, '', '09941501', 1553311912, 1, 1, 1, '2019-06-17 14:41:44', '2019-06-17 14:41:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_administrador`
--

CREATE TABLE `log_administrador` (
  `id` int(11) NOT NULL,
  `accion` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `log_administrador`
--

INSERT INTO `log_administrador` (`id`, `accion`, `ruta`, `ip`, `usuario`, `fecha`) VALUES
(1, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/', '190.232.61.15', '1415426074', '2018-12-18 17:54:25'),
(2, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '179.6.205.135', '1415426074', '2019-03-25 16:01:05'),
(3, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '179.6.205.135', '1415426074', '2019-03-25 16:01:29'),
(4, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/pagos', '179.6.205.135', '1415426074', '2019-03-25 16:01:32'),
(5, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/paises', '179.6.205.135', '1415426074', '2019-03-25 16:01:42'),
(6, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/dashboard/configuracion', '179.6.205.135', '1415426074', '2019-03-25 16:02:01'),
(7, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '179.6.205.135', '1415426074', '2019-03-25 16:02:27'),
(8, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '179.6.205.135', '1415426074', '2019-03-25 16:02:35'),
(9, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '179.6.205.135', '1415426074', '2019-03-25 20:05:49'),
(10, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/pagos', '179.6.205.135', '1415426074', '2019-03-25 20:06:11'),
(11, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/pagos', '179.6.205.135', '1415426074', '2019-03-25 20:40:59'),
(12, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '179.6.205.135', '1415426074', '2019-03-25 20:41:01'),
(13, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '179.6.205.135', '1415426074', '2019-03-25 21:09:39'),
(14, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/pagos', '179.6.205.135', '1415426074', '2019-03-25 21:09:42'),
(15, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '201.230.158.14', '1415426074', '2019-03-26 00:07:56'),
(16, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.14', '1415426074', '2019-03-26 00:11:27'),
(17, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/precios', '201.230.158.14', '1415426074', '2019-03-26 00:11:39'),
(18, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/dashboard/configuracion', '201.230.158.14', '1415426074', '2019-03-26 00:12:00'),
(19, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/usuarios', '201.230.158.14', '1415426074', '2019-03-26 00:12:14'),
(20, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '201.230.158.14', '1415426074', '2019-03-26 00:12:28'),
(21, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.14', '1415426074', '2019-03-26 00:12:38'),
(22, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/banners', '201.230.158.14', '1415426074', '2019-03-26 00:14:30'),
(23, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/aliados', '201.230.158.14', '1415426074', '2019-03-26 00:15:12'),
(24, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/programas', '201.230.158.14', '1415426074', '2019-03-26 00:15:20'),
(25, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/estadisticas', '201.230.158.14', '1415426074', '2019-03-26 00:15:41'),
(26, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/estadisticas/actualizar/1553194787', '201.230.158.14', '1415426074', '2019-03-26 00:16:34'),
(27, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/estadisticas/actualizar/1553194787', '201.230.158.14', '1415426074', '2019-03-26 00:16:48'),
(28, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/estadisticas/actualizar/1553194787', '201.230.158.14', '1415426074', '2019-03-26 00:16:59'),
(29, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/estadisticas', '201.230.158.14', '1415426074', '2019-03-26 00:17:00'),
(30, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/estadisticas', '201.230.158.14', '1415426074', '2019-03-26 00:17:20'),
(31, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/precios', '201.230.158.14', '1415426074', '2019-03-26 00:17:29'),
(32, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/paises', '201.230.158.14', '1415426074', '2019-03-26 00:17:45'),
(33, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/testimonios', '201.230.158.14', '1415426074', '2019-03-26 00:17:59'),
(34, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/pagos', '201.230.158.14', '1415426074', '2019-03-26 00:18:19'),
(35, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '201.230.158.14', '1415426074', '2019-03-26 00:18:49'),
(36, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/usuarios', '201.230.158.14', '1415426074', '2019-03-26 00:19:00'),
(37, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.14', '1415426074', '2019-03-26 00:19:02'),
(38, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '201.230.158.14', '1415426074', '2019-03-26 00:19:10'),
(39, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.14', '1415426074', '2019-03-26 00:21:52'),
(40, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/banners', '201.230.158.14', '1415426074', '2019-03-26 00:22:09'),
(41, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/banners', '201.230.158.14', '1415426074', '2019-03-26 00:22:24'),
(42, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/programas', '201.230.158.14', '1415426074', '2019-03-26 00:22:52'),
(43, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '201.230.158.14', '1415426074', '2019-03-26 00:50:53'),
(44, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/precios', '201.230.158.14', '1415426074', '2019-03-26 00:51:03'),
(45, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.14', '1415426074', '2019-03-26 00:51:14'),
(46, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '201.230.158.14', '1415426074', '2019-03-26 00:51:22'),
(47, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/banners', '201.230.158.14', '1415426074', '2019-03-26 00:51:29'),
(48, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/banners', '201.230.158.14', '1415426074', '2019-03-26 00:51:37'),
(49, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/aliados', '201.230.158.14', '1415426074', '2019-03-26 00:51:44'),
(50, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/programas', '201.230.158.14', '1415426074', '2019-03-26 00:51:49'),
(51, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/precios', '201.230.158.14', '1415426074', '2019-03-26 00:51:57'),
(52, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/dashboard/configuracion', '201.230.158.14', '1415426074', '2019-03-26 00:52:14'),
(53, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.14', '1415426074', '2019-03-26 00:52:45'),
(54, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/banners', '201.230.158.14', '1415426074', '2019-03-26 00:53:34'),
(55, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/programas', '201.230.158.14', '1415426074', '2019-03-26 00:53:48'),
(56, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/estadisticas', '201.230.158.14', '1415426074', '2019-03-26 00:54:01'),
(57, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/precios', '201.230.158.14', '1415426074', '2019-03-26 00:54:27'),
(58, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/testimonios', '201.230.158.14', '1415426074', '2019-03-26 00:55:02'),
(59, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.14', '1415426074', '2019-03-26 00:56:08'),
(60, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '201.230.158.14', '1415426074', '2019-03-26 00:56:16'),
(61, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.14', '1415426074', '2019-03-26 00:57:49'),
(62, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '201.230.158.14', '1415426074', '2019-03-26 00:58:14'),
(63, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '201.230.158.14', '1415426074', '2019-03-26 00:58:39'),
(64, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '201.230.158.14', '1415426074', '2019-03-26 00:58:42'),
(65, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.14', '1415426074', '2019-03-26 00:58:42'),
(66, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '181.224.252.186', '1415426074', '2019-03-26 17:29:55'),
(67, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '181.224.252.186', '1415426074', '2019-03-26 17:31:26'),
(68, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '181.224.252.186', '1415426074', '2019-03-26 17:31:30'),
(69, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '181.224.252.186', '1415426074', '2019-03-26 18:03:00'),
(70, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/pagos', '181.224.252.186', '1415426074', '2019-03-26 18:03:06'),
(71, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '200.60.121.82', '1415426074', '2019-03-27 20:02:25'),
(72, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '200.60.121.82', '1415426074', '2019-03-27 20:14:44'),
(73, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '200.60.121.82', '1415426074', '2019-03-27 20:17:32'),
(74, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '200.60.121.82', '1415426074', '2019-03-27 20:17:46'),
(75, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '200.60.121.82', '1415426074', '2019-03-27 20:17:58'),
(76, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '200.60.121.82', '1415426074', '2019-03-27 20:18:04'),
(77, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/dashboard/perfil', '200.60.121.82', '1415426074', '2019-03-27 20:18:08'),
(78, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '200.60.121.82', '1415426074', '2019-03-27 20:19:23'),
(79, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/dashboard/perfil', '200.60.121.82', '1415426074', '2019-03-27 20:19:34'),
(80, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '200.60.121.82', '1415426074', '2019-03-27 20:20:21'),
(81, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/', '200.60.121.82', '1415426074', '2019-03-27 20:20:37'),
(82, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-03-27 20:20:49'),
(83, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/usuarios', '200.60.121.82', '1415426074', '2019-03-27 20:21:34'),
(84, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '200.60.121.82', '1415426074', '2019-03-27 20:22:09'),
(85, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/pagos', '200.60.121.82', '1415426074', '2019-03-27 20:22:18'),
(86, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '200.60.121.82', '1415426074', '2019-03-27 20:22:21'),
(87, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '200.60.121.82', '1415426074', '2019-03-27 20:22:29'),
(88, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/pagos', '200.60.121.82', '1415426074', '2019-03-27 20:22:41'),
(89, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '200.60.121.82', '1415426074', '2019-03-27 20:22:44'),
(90, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/aliados', '200.60.121.82', '1415426074', '2019-03-27 20:22:55'),
(91, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/programas', '200.60.121.82', '1415426074', '2019-03-27 20:23:11'),
(92, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/precios', '200.60.121.82', '1415426074', '2019-03-27 20:23:26'),
(93, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/banners', '200.60.121.82', '1415426074', '2019-03-27 20:23:39'),
(94, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/estadisticas', '200.60.121.82', '1415426074', '2019-03-27 20:24:41'),
(95, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/estadisticas', '200.60.121.82', '1415426074', '2019-03-27 20:25:34'),
(96, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/precios', '200.60.121.82', '1415426074', '2019-03-27 20:25:37'),
(97, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/paises', '200.60.121.82', '1415426074', '2019-03-27 20:25:48'),
(98, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/testimonios', '200.60.121.82', '1415426074', '2019-03-27 20:25:54'),
(99, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/dashboard/perfil', '200.60.121.82', '1415426074', '2019-03-27 20:26:19'),
(100, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/banners', '200.60.121.82', '1415426074', '2019-03-27 20:49:40'),
(101, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/aliados', '200.60.121.82', '1415426074', '2019-03-27 21:00:28'),
(102, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '201.230.158.12', '1415426074', '2019-04-02 20:57:03'),
(103, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.12', '1415426074', '2019-04-02 21:01:56'),
(104, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '201.230.158.12', '1415426074', '2019-04-02 21:02:07'),
(105, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/dashboard/configuracion', '201.230.158.12', '1415426074', '2019-04-02 21:09:00'),
(106, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/usuarios', '201.230.158.12', '1415426074', '2019-04-02 21:09:15'),
(107, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '201.230.158.12', '1415426074', '2019-04-02 21:09:30'),
(108, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.12', '1415426074', '2019-04-02 21:09:42'),
(109, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/pagos', '201.230.158.12', '1415426074', '2019-04-02 21:09:48'),
(110, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.12', '1415426074', '2019-04-02 21:09:56'),
(111, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '201.230.158.12', '1415426074', '2019-04-02 21:10:02'),
(112, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '201.230.158.12', '1415426074', '2019-04-02 21:59:04'),
(113, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '201.230.158.12', '1415426074', '2019-04-02 22:36:40'),
(114, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '201.230.158.12', '1415426074', '2019-04-02 22:41:32'),
(115, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '201.230.158.12', '1415426074', '2019-04-02 22:41:42'),
(116, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '201.230.158.12', '1415426074', '2019-04-02 22:43:05'),
(117, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '179.6.205.135', '1415426074', '2019-04-08 17:26:58'),
(118, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/formulario', '179.6.205.135', '1415426074', '2019-04-08 17:27:09'),
(119, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend', '179.6.205.135', '1415426074', '2019-04-08 18:37:02'),
(120, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '179.6.205.135', '1415426074', '2019-04-08 18:39:04'),
(121, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-08 18:39:13'),
(122, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-08 18:40:57'),
(123, 'POST', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-08 18:42:09'),
(124, 'GET', 'https://www.phsperu-proyectos.com/plan_internacional_161018/backend/campanias', '179.6.205.135', '1415426074', '2019-04-08 18:42:10'),
(125, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1415426074', '2019-04-26 20:52:17'),
(126, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1415426074', '2019-04-26 20:54:52'),
(127, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos/actualizar/20190426201842', '179.6.205.135', '1415426074', '2019-04-26 20:55:03'),
(128, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '179.6.205.135', '1415426074', '2019-04-26 20:55:11'),
(129, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1415426074', '2019-04-26 20:55:59'),
(130, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '179.6.205.135', '1415426074', '2019-04-26 20:56:43'),
(131, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/agregar', '179.6.205.135', '1415426074', '2019-04-26 20:57:38'),
(132, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '179.6.205.135', '1415426074', '2019-04-26 20:58:38'),
(133, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-26 20:58:41'),
(134, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '179.6.205.135', '1415426074', '2019-04-26 21:01:02'),
(135, 'GET', 'https://uneteaplanperu.org.pe/backend/banners/actualizar/1553191166', '179.6.205.135', '1415426074', '2019-04-26 21:01:10'),
(136, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados', '179.6.205.135', '1415426074', '2019-04-26 21:02:44'),
(137, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados/agregar', '179.6.205.135', '1415426074', '2019-04-26 21:03:09'),
(138, 'GET', 'https://uneteaplanperu.org.pe/backend/programas', '179.6.205.135', '1415426074', '2019-04-26 21:03:46'),
(139, 'GET', 'https://uneteaplanperu.org.pe/backend/estadisticas', '179.6.205.135', '1415426074', '2019-04-26 21:04:09'),
(140, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '179.6.205.135', '1415426074', '2019-04-26 21:04:27'),
(141, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-26 21:04:29'),
(142, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1415426074', '2019-04-26 21:07:07'),
(143, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1415426074', '2019-04-26 21:07:36'),
(144, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '179.6.205.135', '1415426074', '2019-04-26 21:15:57'),
(145, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1415426074', '2019-04-26 21:17:02'),
(146, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '179.6.205.135', '1415426074', '2019-04-26 21:18:40'),
(147, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-26 21:18:44'),
(148, 'GET', 'https://uneteaplanperu.org.pe/backend/precios', '179.6.205.135', '1415426074', '2019-04-26 21:23:48'),
(149, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1415426074', '2019-04-26 21:36:51'),
(150, 'GET', 'https://uneteaplanperu.org.pe/backend/testimonios', '179.6.205.135', '1415426074', '2019-04-26 21:40:15'),
(151, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-04-26 21:43:30'),
(152, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '179.6.205.135', '1415426074', '2019-04-26 21:43:34'),
(153, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios/agregar', '179.6.205.135', '1415426074', '2019-04-26 21:43:36'),
(154, 'GET', 'https://uneteaplanperu.org.pe/backend/precios', '179.6.205.135', '1415426074', '2019-04-26 21:43:45'),
(155, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '179.6.205.135', '1415426074', '2019-04-26 21:44:24'),
(156, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '179.6.205.135', '1415426074', '2019-04-26 21:45:43'),
(157, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-26 21:45:46'),
(158, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 21:50:46'),
(159, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '179.6.205.135', '1415426074', '2019-04-26 21:55:20'),
(160, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-26 21:55:22'),
(161, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 21:56:04'),
(162, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 21:57:40'),
(163, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-26 21:58:34'),
(164, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:00:11'),
(165, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-26 22:00:22'),
(166, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:01:35'),
(167, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-26 22:01:36'),
(168, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-26 22:04:36'),
(169, 'GET', 'https://uneteaplanperu.org.pe/backend/precios', '179.6.205.135', '1415426074', '2019-04-26 22:04:49'),
(170, 'GET', 'https://uneteaplanperu.org.pe/backend/paises', '179.6.205.135', '1415426074', '2019-04-26 22:06:33'),
(171, 'GET', 'https://uneteaplanperu.org.pe/backend/precios', '179.6.205.135', '1415426074', '2019-04-26 22:06:42'),
(172, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '179.6.205.135', '1415426074', '2019-04-26 22:06:54'),
(173, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-26 22:06:56'),
(174, 'POST', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-26 22:07:47'),
(175, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '179.6.205.135', '1415426074', '2019-04-26 22:07:48'),
(176, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '179.6.205.135', '1415426074', '2019-04-26 22:09:19'),
(177, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-26 22:17:23'),
(178, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:17:33'),
(179, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:18:47'),
(180, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-04-26 22:19:34'),
(181, 'GET', 'https://uneteaplanperu.org.pe/backend/programas', '200.60.121.82', '1415426074', '2019-04-26 22:19:39'),
(182, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:19:42'),
(183, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-04-26 22:19:42'),
(184, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-04-26 22:19:50'),
(185, 'POST', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-04-26 22:21:24'),
(186, 'POST', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-04-26 22:21:31'),
(187, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-26 22:21:41'),
(188, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-26 22:21:49'),
(189, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:22:21'),
(190, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:23:50'),
(191, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:25:38'),
(192, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:32:03'),
(193, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:33:35'),
(194, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:33:50'),
(195, 'GET', 'https://uneteaplanperu.org.pe/', '179.6.205.135', '1415426074', '2019-04-26 22:34:17'),
(196, 'POST', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1415426074', '2019-04-26 22:40:42'),
(197, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-26 23:22:12'),
(198, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-04-26 23:43:11'),
(199, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-04-26 23:43:15'),
(200, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-04-26 23:43:20'),
(201, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-04-26 23:43:26'),
(202, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-04-26 23:43:29'),
(203, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-26 23:48:31'),
(204, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-04-29 13:58:29'),
(205, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-04-29 14:23:46'),
(206, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-29 15:02:10'),
(207, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-29 15:02:31'),
(208, 'POST', 'https://uneteaplanperu.org.pe/checkout', '200.60.121.82', '1415426074', '2019-04-29 15:04:21'),
(209, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-29 15:04:25'),
(210, 'POST', 'https://uneteaplanperu.org.pe/checkout', '200.60.121.82', '1415426074', '2019-04-29 15:08:00'),
(211, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-29 15:08:03'),
(212, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-29 15:50:50'),
(213, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-29 16:01:11'),
(214, 'POST', 'https://uneteaplanperu.org.pe/checkout', '200.60.121.82', '1415426074', '2019-04-29 16:03:43'),
(215, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-04-29 16:04:02'),
(216, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-02 14:59:55'),
(217, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-02 15:06:15'),
(218, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-02 15:25:11'),
(219, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-02 15:26:52'),
(220, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-02 17:11:40'),
(221, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-02 17:12:26'),
(222, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-02 17:12:45'),
(223, 'POST', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-02 17:14:03'),
(224, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '200.60.121.82', '1415426074', '2019-05-02 17:14:07'),
(225, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-02 17:14:07'),
(226, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-02 17:14:10'),
(227, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-02 17:14:17'),
(228, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-02 17:15:36'),
(229, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-02 17:15:39'),
(230, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-02 17:17:10'),
(231, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-02 17:18:30'),
(232, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-02 21:59:04'),
(233, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-02 21:59:36'),
(234, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-05-02 21:59:42'),
(235, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-05-02 21:59:50'),
(236, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/perfil', '200.60.121.82', '1415426074', '2019-05-02 22:00:10'),
(237, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-02 22:00:15'),
(238, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-02 22:23:40'),
(239, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-06 21:37:32'),
(240, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-06 21:37:38'),
(241, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-06 21:37:42'),
(242, 'POST', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-06 21:38:42'),
(243, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-06 21:38:53'),
(244, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-06 21:38:56'),
(245, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/remover', '200.60.121.82', '1415426074', '2019-05-06 22:00:43'),
(246, 'POST', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-06 22:00:48'),
(247, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-06 22:00:51'),
(248, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-06 22:00:53'),
(249, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/remover', '200.60.121.82', '1415426074', '2019-05-06 22:05:51'),
(250, 'POST', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-06 22:05:58'),
(251, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-06 22:06:02'),
(252, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-06 22:06:05'),
(253, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-08 15:15:33'),
(254, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795287', '2019-05-14 00:55:06'),
(255, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1557795287', '2019-05-14 00:55:09'),
(256, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795287', '2019-05-14 00:56:37'),
(257, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1557795287', '2019-05-14 00:56:44'),
(258, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795287', '2019-05-14 01:16:50'),
(259, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1557795287', '2019-05-14 01:17:15'),
(260, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos/visualizar/20190513193808', '179.6.205.135', '1557795287', '2019-05-14 01:17:31'),
(261, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1557795287', '2019-05-14 01:17:38'),
(262, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1557795287', '2019-05-14 01:18:39'),
(263, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '179.6.205.135', '1557795287', '2019-05-14 01:19:26'),
(264, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:01:47'),
(265, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:11:14'),
(266, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:13:50'),
(267, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:14:48'),
(268, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:15:06'),
(269, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:15:55'),
(270, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:16:04'),
(271, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:19:45'),
(272, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:21:09'),
(273, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:25:16'),
(274, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:25:54'),
(275, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:26:09'),
(276, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:26:49'),
(277, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:26:57'),
(278, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:32:34'),
(279, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:32:44'),
(280, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:33:11'),
(281, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:45:53'),
(282, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:46:50'),
(283, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:47:25'),
(284, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:47:37'),
(285, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:48:21'),
(286, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:48:34'),
(287, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:49:08'),
(288, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:49:19'),
(289, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:49:44'),
(290, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:50:12'),
(291, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:50:19'),
(292, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:51:02'),
(293, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:51:11'),
(294, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/activar_membresia', '179.6.205.135', '1557795290', '2019-05-14 05:52:30'),
(295, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:55:15'),
(296, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:55:34'),
(297, 'GET', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 05:59:30'),
(298, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '179.6.205.135', '1557795290', '2019-05-14 06:01:44'),
(299, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/perfil', '179.6.205.135', '1557795290', '2019-05-14 06:01:56'),
(300, 'POST', 'https://uneteaplanperu.org.pe/backend', '179.6.205.135', '1557795290', '2019-05-14 06:02:00'),
(301, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-05-14 16:37:27'),
(302, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-14 17:10:01'),
(303, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-14 17:13:58'),
(304, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-14 17:14:06'),
(305, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-14 17:29:48'),
(306, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-05-14 17:31:44'),
(307, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-05-14 17:32:21'),
(308, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-05-14 17:32:42'),
(309, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-05-14 17:32:45'),
(310, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-14 17:33:22'),
(311, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-05-14 17:33:37'),
(312, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-14 17:34:06'),
(313, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-14 17:35:04'),
(314, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-14 17:35:11'),
(315, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '200.60.121.82', '1415426074', '2019-05-14 17:35:37'),
(316, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados', '200.60.121.82', '1415426074', '2019-05-14 17:35:53'),
(317, 'GET', 'https://uneteaplanperu.org.pe/backend/programas', '200.60.121.82', '1415426074', '2019-05-14 17:36:17'),
(318, 'GET', 'https://uneteaplanperu.org.pe/backend/estadisticas', '200.60.121.82', '1415426074', '2019-05-14 17:36:31'),
(319, 'GET', 'https://uneteaplanperu.org.pe/backend/precios', '200.60.121.82', '1415426074', '2019-05-14 17:36:51'),
(320, 'GET', 'https://uneteaplanperu.org.pe/backend/paises', '200.60.121.82', '1415426074', '2019-05-14 17:37:09'),
(321, 'GET', 'https://uneteaplanperu.org.pe/backend/testimonios', '200.60.121.82', '1415426074', '2019-05-14 17:37:28'),
(322, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-15 14:50:00'),
(323, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-05-15 14:50:10'),
(324, 'POST', 'https://uneteaplanperu.org.pe/backend/formulario/export', '200.60.121.82', '1415426074', '2019-05-15 14:50:14'),
(325, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-15 14:54:46'),
(326, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-05-15 14:55:01'),
(327, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-15 15:44:58'),
(328, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-15 15:45:12'),
(329, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-05-15 15:45:17'),
(330, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-15 16:45:07'),
(331, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-15 16:50:56'),
(332, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-15 16:50:58'),
(333, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-15 17:01:34'),
(334, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-15 17:06:57'),
(335, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-15 17:07:13'),
(336, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-15 17:07:23'),
(337, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-15 17:07:32'),
(338, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-15 17:08:23'),
(339, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-15 17:08:41'),
(340, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-15 17:08:49'),
(341, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-15 17:26:12'),
(342, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-15 17:26:24'),
(343, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-15 17:26:32'),
(344, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-15 17:26:34'),
(345, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-20 17:47:46'),
(346, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-05-20 17:47:55'),
(347, 'POST', 'https://uneteaplanperu.org.pe/backend/formulario/export', '200.60.121.82', '1415426074', '2019-05-20 17:48:04'),
(348, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-20 17:50:10'),
(349, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-05-20 17:50:52'),
(350, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-20 17:52:43'),
(351, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/export', '200.60.121.82', '1415426074', '2019-05-20 17:52:51'),
(352, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-05-21 20:22:39'),
(353, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-05-21 20:25:07'),
(354, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-21 20:25:43'),
(355, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-21 20:25:52'),
(356, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-21 20:25:59'),
(357, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-21 20:26:42'),
(358, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-21 20:26:50'),
(359, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-21 20:26:57'),
(360, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-21 23:22:53'),
(361, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-22 15:04:37'),
(362, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-05-22 15:07:09'),
(363, 'POST', 'https://uneteaplanperu.org.pe/backend/formulario/export', '200.60.121.82', '1415426074', '2019-05-22 15:07:15'),
(364, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 15:10:10'),
(365, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/export', '200.60.121.82', '1415426074', '2019-05-22 15:12:54'),
(366, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-22 15:18:03'),
(367, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-05-22 15:18:05'),
(368, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-22 19:09:18'),
(369, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-22 19:14:08'),
(370, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-05-22 19:16:45'),
(371, 'POST', 'https://uneteaplanperu.org.pe/checkout', '200.60.121.82', '1415426074', '2019-05-22 19:17:54'),
(372, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-22 19:17:59'),
(373, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1557795290', '2019-05-22 19:30:47'),
(374, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1557795290', '2019-05-22 20:12:23'),
(375, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-05-22 20:12:48'),
(376, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1557795290', '2019-05-22 20:13:24'),
(377, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-22 22:17:28'),
(378, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-22 22:17:31'),
(379, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-22 22:17:34'),
(380, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-22 23:23:21'),
(381, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-22 23:23:22'),
(382, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-05-22 23:24:00'),
(383, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-22 23:26:25'),
(384, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-05-22 23:27:49'),
(385, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-22 23:27:54'),
(386, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos/actualizar/20190521153814', '200.60.121.82', '1415426074', '2019-05-22 23:28:02'),
(387, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-22 23:28:23'),
(388, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:28:27'),
(389, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '200.60.121.82', '1415426074', '2019-05-22 23:28:55'),
(390, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:28:56'),
(391, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '200.60.121.82', '1415426074', '2019-05-22 23:29:28'),
(392, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:29:29'),
(393, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '200.60.121.82', '1415426074', '2019-05-22 23:29:45'),
(394, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:29:46'),
(395, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '200.60.121.82', '1415426074', '2019-05-22 23:29:57');
INSERT INTO `log_administrador` (`id`, `accion`, `ruta`, `ip`, `usuario`, `fecha`) VALUES
(396, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:29:58'),
(397, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '200.60.121.82', '1415426074', '2019-05-22 23:30:10'),
(398, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:30:11'),
(399, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190429160343', '200.60.121.82', '1415426074', '2019-05-22 23:30:26'),
(400, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '200.60.121.82', '1415426074', '2019-05-22 23:30:31'),
(401, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:30:32'),
(402, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190429160343', '200.60.121.82', '1415426074', '2019-05-22 23:30:44'),
(403, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190429160343', '200.60.121.82', '1415426074', '2019-05-22 23:30:48'),
(404, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '200.60.121.82', '1415426074', '2019-05-22 23:31:18'),
(405, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:31:18'),
(406, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190522191755', '200.60.121.82', '1415426074', '2019-05-22 23:31:27'),
(407, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190522191755', '200.60.121.82', '1415426074', '2019-05-22 23:31:34'),
(408, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '200.60.121.82', '1415426074', '2019-05-22 23:31:38'),
(409, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:31:38'),
(410, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190430041503', '200.60.121.82', '1415426074', '2019-05-22 23:32:00'),
(411, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190430041503', '200.60.121.82', '1415426074', '2019-05-22 23:32:03'),
(412, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '200.60.121.82', '1415426074', '2019-05-22 23:32:08'),
(413, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:32:08'),
(414, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190429150801', '200.60.121.82', '1415426074', '2019-05-22 23:32:30'),
(415, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190429150801', '200.60.121.82', '1415426074', '2019-05-22 23:32:33'),
(416, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '200.60.121.82', '1415426074', '2019-05-22 23:32:36'),
(417, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:32:36'),
(418, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190429150422', '200.60.121.82', '1415426074', '2019-05-22 23:32:43'),
(419, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190429150422', '200.60.121.82', '1415426074', '2019-05-22 23:32:47'),
(420, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '200.60.121.82', '1415426074', '2019-05-22 23:32:50'),
(421, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-22 23:32:50'),
(422, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-22 23:33:36'),
(423, 'POST', 'https://uneteaplanperu.org.pe/checkout', '200.60.121.82', '1415426074', '2019-05-22 23:34:52'),
(424, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-22 23:34:55'),
(425, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-28 16:16:04'),
(426, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-05-28 16:16:18'),
(427, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-28 17:11:21'),
(428, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-05-28 17:11:56'),
(429, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-05-28 17:12:11'),
(430, 'POST', 'https://uneteaplanperu.org.pe/backend/formulario/export', '200.60.121.82', '1415426074', '2019-05-28 17:12:33'),
(431, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-28 17:15:16'),
(432, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/export', '200.60.121.82', '1415426074', '2019-05-28 17:15:20'),
(433, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-28 20:11:27'),
(434, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-28 20:30:04'),
(435, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-28 20:30:13'),
(436, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-28 20:58:29'),
(437, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-05-28 20:58:33'),
(438, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-28 21:06:56'),
(439, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/perfil', '200.60.121.82', '1415426074', '2019-05-28 21:07:20'),
(440, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-05-28 21:12:18'),
(441, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-05-28 21:14:15'),
(442, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-05-28 22:12:18'),
(443, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios/agregar', '200.60.121.82', '1415426074', '2019-05-28 22:12:25'),
(444, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-05-28 22:12:45'),
(445, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-05-28 22:12:49'),
(446, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios/agregar', '200.60.121.82', '1415426074', '2019-05-28 22:12:52'),
(447, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-05-28 22:16:28'),
(448, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-28 22:16:44'),
(449, 'GET', 'https://uneteaplanperu.org.pe/backend', '190.237.79.41', '1415426074', '2019-05-28 23:30:44'),
(450, 'GET', 'https://uneteaplanperu.org.pe/', '190.237.79.41', '1415426074', '2019-05-28 23:39:11'),
(451, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.237.79.41', '1415426074', '2019-05-28 23:39:59'),
(452, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios/agregar', '190.237.79.41', '1415426074', '2019-05-28 23:40:06'),
(453, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '190.237.79.41', '1415426074', '2019-05-28 23:40:11'),
(454, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.237.79.41', '1415426074', '2019-05-28 23:40:11'),
(455, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '190.237.79.41', '1415426074', '2019-05-28 23:40:16'),
(456, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/perfil', '190.237.79.41', '1415426074', '2019-05-28 23:40:22'),
(457, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/contrasenia', '190.237.79.41', '1415426074', '2019-05-28 23:40:29'),
(458, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.237.79.41', '1415426074', '2019-05-28 23:40:31'),
(459, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '190.237.79.41', '1415426074', '2019-05-28 23:40:40'),
(460, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos/visualizar/20190521153814', '190.237.79.41', '1415426074', '2019-05-28 23:41:06'),
(461, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '190.237.79.41', '1415426074', '2019-05-28 23:41:15'),
(462, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '190.237.79.41', '1415426074', '2019-05-28 23:41:16'),
(463, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '190.237.79.41', '1415426074', '2019-05-28 23:41:18'),
(464, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/visualizar/1553153592', '190.237.79.41', '1415426074', '2019-05-28 23:41:26'),
(465, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados', '190.237.79.41', '1415426074', '2019-05-28 23:41:43'),
(466, 'GET', 'https://uneteaplanperu.org.pe/backend/estadisticas', '190.237.79.41', '1415426074', '2019-05-28 23:41:45'),
(467, 'GET', 'https://uneteaplanperu.org.pe/backend/precios', '190.237.79.41', '1415426074', '2019-05-28 23:41:49'),
(468, 'GET', 'https://uneteaplanperu.org.pe/backend/paises', '190.237.79.41', '1415426074', '2019-05-28 23:41:58'),
(469, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '190.237.79.41', '1415426074', '2019-05-28 23:42:20'),
(470, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '190.237.79.41', '1415426074', '2019-05-28 23:42:30'),
(471, 'GET', 'https://uneteaplanperu.org.pe/backend', '190.237.5.77', '1415426074', '2019-05-28 23:52:10'),
(472, 'GET', 'https://uneteaplanperu.org.pe/backend', '190.237.5.77', '1415426074', '2019-05-29 13:32:51'),
(473, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.237.5.77', '1415426074', '2019-05-29 13:33:29'),
(474, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios/agregar', '190.237.5.77', '1415426074', '2019-05-29 13:33:32'),
(475, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '190.237.5.77', '1415426074', '2019-05-29 13:33:40'),
(476, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '190.237.5.77', '1415426074', '2019-05-29 13:33:46'),
(477, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '190.237.5.77', '1415426074', '2019-05-29 13:33:50'),
(478, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones/visualizar/20190524211827', '190.237.5.77', '1415426074', '2019-05-29 13:34:00'),
(479, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '190.237.5.77', '1415426074', '2019-05-29 13:34:15'),
(480, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '190.237.5.77', '1415426074', '2019-05-29 13:34:15'),
(481, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones/visualizar/20190524183355', '190.237.5.77', '1415426074', '2019-05-29 13:34:24'),
(482, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '190.237.5.77', '1415426074', '2019-05-29 13:34:30'),
(483, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '190.237.5.77', '1415426074', '2019-05-29 13:34:30'),
(484, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '190.237.5.77', '1415426074', '2019-05-29 13:34:34'),
(485, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/visualizar/1553153592', '190.237.5.77', '1415426074', '2019-05-29 13:34:38'),
(486, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '190.237.5.77', '1415426074', '2019-05-29 13:34:59'),
(487, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados', '190.237.5.77', '1415426074', '2019-05-29 13:35:01'),
(488, 'GET', 'https://uneteaplanperu.org.pe/backend/programas', '190.237.5.77', '1415426074', '2019-05-29 13:35:05'),
(489, 'GET', 'https://uneteaplanperu.org.pe/backend/programas/actualizar/1553195764', '190.237.5.77', '1415426074', '2019-05-29 13:35:08'),
(490, 'GET', 'https://uneteaplanperu.org.pe/backend/programas/visualizar/1553195764', '190.237.5.77', '1415426074', '2019-05-29 13:35:17'),
(491, 'GET', 'https://uneteaplanperu.org.pe/backend/programas', '190.237.5.77', '1415426074', '2019-05-29 13:35:19'),
(492, 'GET', 'https://uneteaplanperu.org.pe/backend/programas/agregar', '190.237.5.77', '1415426074', '2019-05-29 13:35:21'),
(493, 'GET', 'https://uneteaplanperu.org.pe/backend/estadisticas', '190.237.5.77', '1415426074', '2019-05-29 13:35:24'),
(494, 'GET', 'https://uneteaplanperu.org.pe/backend/precios', '190.237.5.77', '1415426074', '2019-05-29 13:35:37'),
(495, 'GET', 'https://uneteaplanperu.org.pe/backend/paises', '190.237.5.77', '1415426074', '2019-05-29 13:35:46'),
(496, 'GET', 'https://uneteaplanperu.org.pe/backend/testimonios', '190.237.5.77', '1415426074', '2019-05-29 13:35:53'),
(497, 'GET', 'https://uneteaplanperu.org.pe/backend', '190.237.5.77', '1415426074', '2019-05-29 15:47:17'),
(498, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.237.5.77', '1415426074', '2019-05-29 15:49:39'),
(499, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '190.237.5.77', '1415426074', '2019-05-29 15:49:53'),
(500, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '190.237.5.77', '1415426074', '2019-05-29 15:50:04'),
(501, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos/visualizar/20190521153814', '190.237.5.77', '1415426074', '2019-05-29 15:50:39'),
(502, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '190.237.5.77', '1415426074', '2019-05-29 15:50:45'),
(503, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '190.237.5.77', '1415426074', '2019-05-29 15:50:45'),
(504, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '190.237.5.77', '1415426074', '2019-05-29 15:50:53'),
(505, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '190.237.5.77', '1415426074', '2019-05-29 15:53:06'),
(506, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-29 23:00:14'),
(507, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-30 19:56:14'),
(508, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-05-30 19:59:46'),
(509, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-05-30 20:50:50'),
(510, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-05-30 20:50:58'),
(511, 'GET', 'https://uneteaplanperu.org.pe/backend/testimonios', '200.60.121.82', '1415426074', '2019-05-30 20:51:38'),
(512, 'GET', 'https://uneteaplanperu.org.pe/backend/paises', '200.60.121.82', '1415426074', '2019-05-30 20:51:41'),
(513, 'GET', 'https://uneteaplanperu.org.pe/backend/precios', '200.60.121.82', '1415426074', '2019-05-30 20:51:49'),
(514, 'GET', 'https://uneteaplanperu.org.pe/backend/estadisticas', '200.60.121.82', '1415426074', '2019-05-30 20:51:56'),
(515, 'GET', 'https://uneteaplanperu.org.pe/backend/programas', '200.60.121.82', '1415426074', '2019-05-30 20:52:01'),
(516, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados', '200.60.121.82', '1415426074', '2019-05-30 20:52:05'),
(517, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '200.60.121.82', '1415426074', '2019-05-30 20:52:08'),
(518, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-05-30 20:52:13'),
(519, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-05-30 20:52:18'),
(520, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-05-30 20:52:24'),
(521, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-30 21:48:23'),
(522, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-30 21:48:50'),
(523, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-05-31 14:29:31'),
(524, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/remover_pruebas', '200.60.121.82', '1415426074', '2019-05-31 14:31:18'),
(525, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-31 16:01:42'),
(526, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-05-31 16:02:18'),
(527, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-03 21:08:44'),
(528, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-06-03 21:08:58'),
(529, 'POST', 'https://uneteaplanperu.org.pe/backend/formulario/export', '200.60.121.82', '1415426074', '2019-06-03 21:09:02'),
(530, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-06-03 21:09:27'),
(531, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-06-03 21:10:01'),
(532, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/export', '200.60.121.82', '1415426074', '2019-06-03 21:10:16'),
(533, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-03 21:15:40'),
(534, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-06-03 21:15:51'),
(535, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/desactivar_membresia', '200.60.121.82', '1415426074', '2019-06-03 21:16:03'),
(536, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-06-03 21:16:09'),
(537, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-03 21:23:36'),
(538, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-06-03 21:23:42'),
(539, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190530212238', '200.60.121.82', '1415426074', '2019-06-03 21:24:00'),
(540, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/actualizar/20190530212238', '200.60.121.82', '1415426074', '2019-06-03 21:24:04'),
(541, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/regresar', '200.60.121.82', '1415426074', '2019-06-03 21:24:08'),
(542, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-06-03 21:24:08'),
(543, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/remover_pruebas', '200.60.121.82', '1415426074', '2019-06-03 21:24:33'),
(544, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/remover_pruebas', '200.60.121.82', '1415426074', '2019-06-03 21:24:57'),
(545, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/remover_pruebas', '200.60.121.82', '1415426074', '2019-06-03 21:25:10'),
(546, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-03 21:25:30'),
(547, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-06-04 13:50:06'),
(548, 'POST', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-06-04 13:50:25'),
(549, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-06-04 17:25:49'),
(550, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-04 18:54:20'),
(551, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-04 18:55:00'),
(552, 'GET', 'https://uneteaplanperu.org.pe/backend/precios', '181.64.222.60', '1415426074', '2019-06-04 18:55:13'),
(553, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '181.64.222.60', '1415426074', '2019-06-04 18:55:21'),
(554, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '181.64.222.60', '1415426074', '2019-06-04 18:56:07'),
(555, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '181.64.222.60', '1415426074', '2019-06-04 18:56:18'),
(556, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '181.64.222.60', '1415426074', '2019-06-04 18:56:25'),
(557, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-04 18:56:32'),
(558, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-04 18:56:53'),
(559, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-04 18:57:21'),
(560, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-04 18:57:41'),
(561, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-04 18:58:31'),
(562, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '181.64.222.60', '1415426074', '2019-06-04 18:58:42'),
(563, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '181.64.222.60', '1415426074', '2019-06-04 18:59:00'),
(564, 'POST', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-04 18:59:18'),
(565, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1557795290', '2019-06-04 19:01:32'),
(566, 'POST', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1557795290', '2019-06-04 19:01:58'),
(567, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-04 19:46:14'),
(568, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-06-04 19:46:20'),
(569, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-06-04 19:46:29'),
(570, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-06-04 19:47:03'),
(571, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/export', '200.60.121.82', '1415426074', '2019-06-04 19:47:12'),
(572, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-06-04 19:48:09'),
(573, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1557795290', '2019-06-06 21:00:53'),
(574, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-07 17:02:26'),
(575, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '181.64.222.60', '1415426074', '2019-06-07 17:06:04'),
(576, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '181.64.222.60', '1415426074', '2019-06-07 17:07:03'),
(577, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-10 21:41:59'),
(578, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-10 21:42:43'),
(579, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-10 21:43:12'),
(580, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '181.64.222.60', '1415426074', '2019-06-10 21:43:28'),
(581, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-10 21:43:35'),
(582, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-10 21:44:30'),
(583, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '181.64.222.60', '1415426074', '2019-06-10 21:47:43'),
(584, 'GET', 'https://uneteaplanperu.org.pe/backend/estadisticas', '181.64.222.60', '1415426074', '2019-06-10 21:47:55'),
(585, 'GET', 'https://uneteaplanperu.org.pe/backend/estadisticas/visualizar/1553194810', '181.64.222.60', '1415426074', '2019-06-10 21:48:16'),
(586, 'GET', 'https://uneteaplanperu.org.pe/backend/estadisticas/visualizar/1553194810', '181.64.222.60', '1415426074', '2019-06-10 21:48:21'),
(587, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-10 21:48:27'),
(588, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-10 21:48:34'),
(589, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1415426074', '2019-06-10 22:04:38'),
(590, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-10 22:23:41'),
(591, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-06-10 22:23:48'),
(592, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-06-10 22:23:58'),
(593, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-10 22:27:57'),
(594, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-10 22:28:07'),
(595, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '181.64.222.60', '1415426074', '2019-06-10 22:28:16'),
(596, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '181.64.222.60', '1415426074', '2019-06-10 22:28:33'),
(597, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-10 22:28:39'),
(598, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1415426074', '2019-06-10 22:29:14'),
(599, 'POST', 'https://uneteaplanperu.org.pe/unete', '181.64.222.60', '1415426074', '2019-06-10 22:39:36'),
(600, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1415426074', '2019-06-10 22:39:36'),
(601, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-10 22:41:22'),
(602, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario/visualizar/1560206376', '181.64.222.60', '1415426074', '2019-06-10 22:41:33'),
(603, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario/visualizar/1560206376', '181.64.222.60', '1415426074', '2019-06-10 22:41:43'),
(604, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '181.64.222.60', '1415426074', '2019-06-10 23:00:34'),
(605, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-10 23:00:44'),
(606, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '181.64.222.60', '1415426074', '2019-06-10 23:00:48'),
(607, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1415426074', '2019-06-10 23:01:30'),
(608, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-11 17:07:17'),
(609, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '181.64.222.60', '1415426074', '2019-06-11 17:07:30'),
(610, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-11 17:11:49'),
(611, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '181.64.222.60', '1415426074', '2019-06-11 17:11:55'),
(612, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-11 17:15:46'),
(613, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-06-11 17:15:54'),
(614, 'POST', 'https://uneteaplanperu.org.pe/backend/formulario/export', '200.60.121.82', '1415426074', '2019-06-11 17:16:01'),
(615, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-06-11 17:17:00'),
(616, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/export', '200.60.121.82', '1415426074', '2019-06-11 17:17:05'),
(617, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-06-11 17:19:33'),
(618, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-06-11 17:19:35'),
(619, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '181.64.222.60', '1415426074', '2019-06-11 17:20:09'),
(620, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '181.64.222.60', '1415426074', '2019-06-11 17:25:45'),
(621, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-11 20:02:00'),
(622, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '181.64.222.60', '1415426074', '2019-06-11 20:02:16'),
(623, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1415426074', '2019-06-11 21:05:04'),
(624, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-11 21:31:03'),
(625, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-11 21:31:03'),
(626, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '181.64.222.60', '1415426074', '2019-06-11 21:31:11'),
(627, 'GET', 'https://uneteaplanperu.org.pe/backend/programas', '181.64.222.60', '1415426074', '2019-06-11 21:31:20'),
(628, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados', '181.64.222.60', '1415426074', '2019-06-11 21:31:22'),
(629, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '181.64.222.60', '1415426074', '2019-06-11 21:31:23'),
(630, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados', '181.64.222.60', '1415426074', '2019-06-11 21:31:29'),
(631, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados', '181.64.222.60', '1415426074', '2019-06-11 21:31:35'),
(632, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '181.64.222.60', '1415426074', '2019-06-11 21:31:38'),
(633, 'GET', 'https://uneteaplanperu.org.pe/backend/estadisticas', '181.64.222.60', '1415426074', '2019-06-11 21:31:44'),
(634, 'GET', 'https://uneteaplanperu.org.pe/backend/paises', '181.64.222.60', '1415426074', '2019-06-11 21:31:51'),
(635, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-11 21:34:15'),
(636, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '181.64.222.60', '1415426074', '2019-06-11 21:34:22'),
(637, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '181.64.222.60', '1415426074', '2019-06-11 21:34:28'),
(638, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1557795290', '2019-06-11 21:35:57'),
(639, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1557795290', '2019-06-11 21:37:21'),
(640, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/perfil', '181.64.222.60', '1557795290', '2019-06-11 21:37:58'),
(641, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/perfil', '181.64.222.60', '1557795290', '2019-06-11 21:38:09'),
(642, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-12 19:34:54'),
(643, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1415426074', '2019-06-12 19:35:07'),
(644, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-12 19:37:47'),
(645, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '181.64.222.60', '1415426074', '2019-06-12 19:37:52'),
(646, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '181.64.222.60', '1415426074', '2019-06-12 19:38:02'),
(647, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1557795290', '2019-06-12 19:44:15'),
(648, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/perfil', '181.64.222.60', '1557795290', '2019-06-12 19:44:36'),
(649, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1557795290', '2019-06-12 19:44:41'),
(650, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1415426074', '2019-06-12 19:45:27'),
(651, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1557795290', '2019-06-12 20:26:04'),
(652, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1557795290', '2019-06-12 20:26:04'),
(653, 'POST', 'https://uneteaplanperu.org.pe/checkout', '181.64.222.60', '1557795290', '2019-06-12 20:28:03'),
(654, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1557795290', '2019-06-12 20:28:06'),
(655, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-12 20:28:44'),
(656, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '181.64.222.60', '1415426074', '2019-06-12 20:28:52'),
(657, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1557795290', '2019-06-12 20:30:06'),
(658, 'POST', 'https://uneteaplanperu.org.pe/checkout', '181.64.222.60', '1557795290', '2019-06-12 20:31:28'),
(659, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1557795290', '2019-06-12 20:31:36'),
(660, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-12 21:27:13'),
(661, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/remover_pruebas', '200.60.121.82', '1415426074', '2019-06-12 21:27:21'),
(662, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/remover_pruebas', '200.60.121.82', '1415426074', '2019-06-12 21:27:32'),
(663, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-12 21:27:46'),
(664, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-12 21:31:41'),
(665, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '181.64.222.60', '1415426074', '2019-06-12 21:31:47'),
(666, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '181.64.222.60', '1415426074', '2019-06-12 21:31:57'),
(667, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-12 21:37:18'),
(668, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-13 17:21:39'),
(669, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-14 20:05:06'),
(670, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-06-14 20:05:16'),
(671, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-06-14 20:05:21'),
(672, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-06-14 20:05:31'),
(673, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '200.60.121.82', '1415426074', '2019-06-14 20:05:38'),
(674, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-06-14 20:15:02'),
(675, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-06-14 20:15:37'),
(676, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '200.60.121.82', '1415426074', '2019-06-14 20:15:41'),
(677, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-06-14 20:15:50'),
(678, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-06-14 20:15:56'),
(679, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-06-14 20:17:01'),
(680, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-14 21:19:19'),
(681, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-14 21:20:54'),
(682, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-14 21:21:17'),
(683, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-14 21:22:24'),
(684, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-14 21:27:38'),
(685, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '181.64.222.60', '1415426074', '2019-06-14 21:29:16'),
(686, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-14 23:25:51'),
(687, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-17 16:32:07'),
(688, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-06-17 16:32:12'),
(689, 'POST', 'https://uneteaplanperu.org.pe/backend/formulario/export', '200.60.121.82', '1415426074', '2019-06-17 16:32:31'),
(690, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-06-17 16:45:25'),
(691, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/export', '200.60.121.82', '1415426074', '2019-06-17 16:45:30'),
(692, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-06-17 16:55:28'),
(693, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-06-17 16:55:31'),
(694, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-17 17:25:32'),
(695, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-17 18:01:20'),
(696, 'POST', 'https://uneteaplanperu.org.pe/checkout', '200.60.121.82', '1415426074', '2019-06-17 18:04:53'),
(697, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-17 18:05:10'),
(698, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-17 18:05:48'),
(699, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-17 18:05:57'),
(700, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-17 18:06:01'),
(701, 'POST', 'https://uneteaplanperu.org.pe/checkout', '200.60.121.82', '1415426074', '2019-06-17 18:08:28'),
(702, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-17 18:08:43'),
(703, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-17 21:16:52'),
(704, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-06-17 21:16:57'),
(705, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias/actualizar/1553153592', '200.60.121.82', '1415426074', '2019-06-17 21:17:05'),
(706, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-06-17 21:37:05'),
(707, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '200.60.121.82', '1415426074', '2019-06-17 21:37:14'),
(708, 'GET', 'https://uneteaplanperu.org.pe/backend', '181.64.222.60', '1415426074', '2019-06-17 21:48:28'),
(709, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '181.64.222.60', '1415426074', '2019-06-17 21:48:54'),
(710, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '181.64.222.60', '1415426074', '2019-06-17 21:48:58'),
(711, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1415426074', '2019-06-17 21:49:48'),
(712, 'GET', 'https://uneteaplanperu.org.pe/', '181.64.222.60', '1415426074', '2019-06-17 21:52:46'),
(713, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-17 22:06:54'),
(714, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/remover_pruebas', '200.60.121.82', '1415426074', '2019-06-17 22:11:49'),
(715, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/remover_pruebas', '200.60.121.82', '1415426074', '2019-06-17 22:13:05'),
(716, 'POST', 'https://uneteaplanperu.org.pe/backend/dashboard/remover_pruebas', '200.60.121.82', '1415426074', '2019-06-17 22:13:33'),
(717, 'GET', 'https://uneteaplanperu.org.pe/backend/dashboard/configuracion', '200.60.121.82', '1415426074', '2019-06-17 22:13:43'),
(718, 'POST', 'https://uneteaplanperu.org.pe/checkout', '200.60.121.82', '1415426074', '2019-06-17 22:15:17'),
(719, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-17 22:15:28'),
(720, 'GET', 'https://uneteaplanperu.org.pe/backend', '200.60.121.82', '1415426074', '2019-06-18 15:46:53'),
(721, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '200.60.121.82', '1415426074', '2019-06-18 15:46:58'),
(722, 'GET', 'https://uneteaplanperu.org.pe/backend/pagos', '200.60.121.82', '1415426074', '2019-06-18 15:47:18'),
(723, 'POST', 'https://uneteaplanperu.org.pe/backend/pagos/export', '200.60.121.82', '1415426074', '2019-06-18 15:48:09'),
(724, 'GET', 'https://uneteaplanperu.org.pe/backend/suscripciones', '200.60.121.82', '1415426074', '2019-06-18 15:49:45'),
(725, 'POST', 'https://uneteaplanperu.org.pe/backend/suscripciones/export', '200.60.121.82', '1415426074', '2019-06-18 15:52:59'),
(726, 'GET', 'https://uneteaplanperu.org.pe/', '200.60.121.82', '1415426074', '2019-06-18 17:09:10'),
(727, 'GET', 'https://uneteaplanperu.org.pe/backend', '190.216.175.2', '1415426074', '2019-06-19 00:11:30'),
(728, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '190.216.175.2', '1415426074', '2019-06-19 00:32:50'),
(729, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario/visualizar/1560782504', '190.216.175.2', '1415426074', '2019-06-19 00:33:00'),
(730, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario/visualizar/1560782504', '190.216.175.2', '1415426074', '2019-06-19 00:33:06'),
(731, 'GET', 'https://uneteaplanperu.org.pe/backend/campanias', '190.216.175.2', '1415426074', '2019-06-19 00:33:14'),
(732, 'GET', 'https://uneteaplanperu.org.pe/backend/banners', '190.216.175.2', '1415426074', '2019-06-19 00:33:18'),
(733, 'GET', 'https://uneteaplanperu.org.pe/backend/aliados', '190.216.175.2', '1415426074', '2019-06-19 00:33:51'),
(734, 'GET', 'https://uneteaplanperu.org.pe/backend', '190.113.210.122', '1415426074', '2019-06-19 11:46:04'),
(735, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.113.210.122', '1415426074', '2019-06-19 11:46:23'),
(736, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.113.210.122', '1415426074', '2019-06-19 11:46:25'),
(737, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.113.210.122', '1415426074', '2019-06-19 11:46:27'),
(738, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '190.113.210.122', '1415426074', '2019-06-19 11:46:31'),
(739, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.113.210.122', '1415426074', '2019-06-19 11:46:38'),
(740, 'GET', 'https://uneteaplanperu.org.pe/backend/usuarios', '190.113.210.122', '1415426074', '2019-06-19 11:46:39'),
(741, 'GET', 'https://uneteaplanperu.org.pe/backend/formulario', '190.113.210.122', '1415426074', '2019-06-19 11:46:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` bigint(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `id_padre` bigint(20) NOT NULL,
  `tipo_pago` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `apellido_materno` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `tipo_documento` int(11) NOT NULL,
  `otro_tipo_documento` varchar(255) DEFAULT NULL,
  `numero_documento` varchar(255) NOT NULL,
  `pais` int(11) NOT NULL,
  `cantidad_apoyo` int(11) NOT NULL,
  `moneda` varchar(255) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `detalle` text NOT NULL,
  `estado` int(11) NOT NULL,
  `activado` int(11) NOT NULL,
  `html` text,
  `customer` varchar(255) DEFAULT NULL,
  `tarjeta` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `suscripcion` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `membresia_inactiva` int(11) DEFAULT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `token`, `id_padre`, `tipo_pago`, `nombres`, `apellido_paterno`, `apellido_materno`, `correo_electronico`, `telefono`, `tipo_documento`, `otro_tipo_documento`, `numero_documento`, `pais`, `cantidad_apoyo`, `moneda`, `total`, `detalle`, `estado`, `activado`, `html`, `customer`, `tarjeta`, `plan`, `suscripcion`, `cargo`, `membresia_inactiva`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(20190613141005, 'tkn_live_AeCkTQ80AMWYUc9I', 1553153592, 1, 'WALTER', 'CRUZ', 'QUISPE', 'walter.cruz@plan-imternational.org', '984298211', 1, '', '41909310', 1553311912, 1, 'PEN', '30.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 13/06/2019<br />Número de Orden: 20190613141005<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: WALTER CRUZ QUISPE<br />Correo Electrónico: walter.cruz@plan-imternational.org<br />Teléfono: 984298211<br />Total: <strong> 30.00 PEN</strong><br /><hr />2019-06-13 14:10:11', NULL, NULL, NULL, NULL, 'chr_live_WP8NpsB9g3g6dxUR', NULL, 1, 1, '2019-06-13 14:10:05', '2019-06-13 14:10:05'),
(20190613201606, 'tkn_live_wCXphBHWmJi6fFbO', 1553153592, 2, 'Techy', 'Sotero', 'Alejos', 'techysotero1204@gmail.com', '987 223 405', 1, '', '06977294', 1553311912, 0, 'PEN', '30.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-06-13 20:16:06', '2019-06-13 20:16:06'),
(20190613201752, 'tkn_live_5qr95Pz8648TARDC', 1553153592, 2, 'techy', 'sotero', 'alejos', 'techysotero1204@gmail.com', '987223405', 1, '', '06977294', 1553311912, 0, 'PEN', '30.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 13/06/2019<br />Número de Orden: 20190613201752<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: techy sotero alejos<br />Correo Electrónico: techysotero1204@gmail.com<br />Teléfono: 987223405<br />Total: <strong> 30.00 PEN</strong><br /><hr />2019-06-13 20:18:02', 'cus_live_FJ5qM3597LjyOZdp', 'crd_live_hdl3VKcLmc7EV8TQ', 'pln_live_VJzBFESVMSbrwJOH', 'sub_live_DYYPRWSSa3Bx5i1u', 'chr_live_9HolqtHjE31aiita', NULL, 1, 1, '2019-06-13 20:17:52', '2019-06-13 20:17:52'),
(20190401195824, '', 1553153592, 1, 'ulises', 'navarro', 'de la torre', 'ulises.navarro@plan-international.org', '98765432', 1, '', '10804434', 1553311859, 1, 'PEN', '50.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 01/04/2019<br />Número de Orden: 20190401195824<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Compra: Pagado<br /><hr /><strong>Su compra ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: ulises navarro de la torre<br />Correo Electrónico: ulises.navarro@plan-international.org<br />Teléfono: 98765432<br />Total: <strong> 50.00 PEN</strong><br /><hr />2019-04-01 19:58:42', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-01 19:58:24', '2019-04-01 19:58:24'),
(20190409212700, '', 1553153592, 1, 'roberto', 'olazo', 'perez', 'roberto.olazo@plan-international.org', '956789342', 1, '', '72271135', 1553311797, 1, 'PEN', '30.00', '', 1, 0, 'Fecha de Donación: 09/04/2019<br />Número de Orden: 20190409212700<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Compra: Error de Pago<br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: roberto olazo perez<br />Correo Electrónico: roberto.olazo@plan-international.org<br />Teléfono: 956789342<br />Total: <strong> 30.00 PEN</strong><br /><hr />2019-04-09 21:27:05', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-09 21:27:00', '2019-04-09 21:27:00'),
(20190409213955, '', 1553153592, 1, 'fernando', 'lamas', 'neciosup', 'fernando_lamas132@hotmail.com', '978015969', 1, '', '45547225', 1553311912, 1, 'PEN', '30.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 09/04/2019<br />Número de Orden: 20190409213955<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Compra: Pagado<br /><hr /><strong>Su compra ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: fernando lamas neciosup<br />Correo Electrónico: fernando_lamas132@hotmail.com<br />Teléfono: 978015969<br />Total: <strong> 30.00 PEN</strong><br /><hr />2019-04-09 21:40:00', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-09 21:39:55', '2019-04-09 21:39:55'),
(20190613213322, 'tkn_live_RiXuzTlnYe12pLHg', 1553153592, 2, 'Maria fe', 'La torre', 'Philpott', 'Mmmaffy@hotmail.com', '989178269', 1, '', '44586699', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 13/06/2019<br />Número de Orden: 20190613213322<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Maria fe La torre Philpott<br />Correo Electrónico: Mmmaffy@hotmail.com<br />Teléfono: 989178269<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-13 21:33:34', 'cus_live_tTuSWv3d05m4T2QG', 'crd_live_D1yc5KBjLJ85Icm8', 'pln_live_I7W1kkAny0ZZykm1', 'sub_live_OZi3eGKxbVKRLvgP', 'chr_live_auRFRbQiEKFS4qFl', NULL, 1, 1, '2019-06-13 21:33:22', '2019-06-13 21:33:22'),
(20190604144444, 'tkn_live_xRDzd3UVvixykQW5', 1553153592, 2, 'Maria lola', 'Barba', 'Ceccovilli', 'marialolabarba@hotmail.com', '966327615', 1, '', '43982231', 1553311912, 2, 'PEN', '70.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 04/06/2019<br />Número de Orden: 20190604144444<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Maria lola Barba Ceccovilli<br />Correo Electrónico: marialolabarba@hotmail.com<br />Teléfono: 966327615<br />Total: <strong> 70.00 PEN</strong><br /><hr />2019-06-04 14:44:55', 'cus_live_gYms1QvAUOZZi7cN', 'crd_live_EFhh9pghqdm7108T', 'pln_live_xN7M2nyOHXWTAgVt', 'sub_live_R4BRaYt7E8FmCyav', 'chr_live_4zmzc4ZOQo6hDnG4', NULL, 1, 1, '2019-06-04 14:44:44', '2019-06-04 14:44:44'),
(20190530193623, 'tkn_live_RuaRMzoUAC8PLMhC', 1553153592, 2, 'Ulises', 'Navarro', 'de la torre', 'unavarrodelatorre@gmail.com', '948999525', 1, '', '10804434', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 30/05/2019<br />Número de Orden: 20190530193623<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Ulises Navarro de la torre<br />Correo Electrónico: unavarrodelatorre@gmail.com<br />Teléfono: 948999525<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-05-30 19:36:33', 'cus_live_mmf3p9UWcb4A9ChZ', 'crd_live_PUDlDjhZskpzjVPR', 'pln_live_H9SwTLTsyk3qupWN', 'sub_live_AGLNQjb865AbcIfn', 'chr_live_8EEa8vRE92EpF2Hx', NULL, 1, 1, '2019-05-30 19:36:23', '2019-05-30 19:36:23'),
(20190604171409, 'tkn_live_8hhHyEutJ2FK9P8e', 1553153592, 2, 'JUAN JOSE', 'AWA', 'AVENDAÑO', 'juan_u99@hotmail.com', '975113167', 1, '', '70928667', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 04/06/2019<br />Número de Orden: 20190604171409<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: JUAN JOSE AWA AVENDAÑO<br />Correo Electrónico: juan_u99@hotmail.com<br />Teléfono: 975113167<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-04 17:14:21', 'cus_live_X8ucqua64UZbQlmK', 'crd_live_sNvLRLUpIbKhqUWz', 'pln_live_wqQuTlvuIj69XrvN', 'sub_live_s1jtj9EHsE3dMdnU', 'chr_live_veyWm3WT9EuljE68', NULL, 1, 1, '2019-06-04 17:14:09', '2019-06-04 17:14:09'),
(20190427034707, 'tkn_live_mmivkvN0RGuJhZkW', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 6, 'PEN', '190.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-27 03:47:07', '2019-04-27 03:47:07'),
(20190427040720, 'tkn_live_F3hO47PHAKV3Irbc', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 6, 'PEN', '190.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-27 04:07:20', '2019-04-27 04:07:20'),
(20190427040910, 'tkn_live_AEdbJV47gQ7ChyY8', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 6, 'PEN', '190.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-27 04:09:10', '2019-04-27 04:09:10'),
(20190427041024, 'tkn_live_o9UvrpJdNS4yrfvh', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 6, 'PEN', '190.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-27 04:10:24', '2019-04-27 04:10:24'),
(20190427041149, 'tkn_live_HKHiiGKRojWjDjV8', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 6, 'PEN', '190.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-27 04:11:49', '2019-04-27 04:11:49'),
(20190611141318, 'tkn_live_8HcS0xol1Mdqh6Zw', 1553153592, 2, 'Alejandro', 'La Torre', '', 'alatorre@cottonificio.com', '', 1, '', '51289720', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 11/06/2019<br />Número de Orden: 20190611141318<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Alejandro La Torre <br />Correo Electrónico: alatorre@cottonificio.com<br />Teléfono: <br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-11 14:13:31', 'cus_live_NZyrCvVPDbvK9JZz', 'crd_live_vgEwFo6OrlyTLI45', 'pln_live_0xgZpx9PUfweFUiH', 'sub_live_ZAYyZxb5x4gqvlTe', 'chr_live_yQ2lLK12zAUFfwFC', NULL, 1, 1, '2019-06-11 14:13:18', '2019-06-11 14:13:18'),
(20190429152912, 'tkn_live_WMDlqmNRnoHY46rZ', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 4, 'PEN', '125.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-29 15:29:12', '2019-04-29 15:29:12'),
(20190429153045, 'tkn_live_00Wg4OAOt5rIZRqj', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 2, 'PEN', '70.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-29 15:30:45', '2019-04-29 15:30:45'),
(20190429153319, 'tkn_live_9RCOEFjhB1xQorGo', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 4, 'PEN', '125.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-29 15:33:19', '2019-04-29 15:33:19'),
(20190429153630, 'tkn_live_ptpTTMizBCwDXyxb', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 2, 'PEN', '70.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-29 15:36:30', '2019-04-29 15:36:30'),
(20190429154123, 'tkn_live_ryERtJL7jUdpVC8i', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 2, 'PEN', '70.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-29 15:41:23', '2019-04-29 15:41:23'),
(20190429154258, 'tkn_live_ryERtJL7jUdpVC8i', 1553153592, 2, 'Luis', 'Shepherd', 'Vargas', 'kluizsv@gmail.com', '960796663', 1, '', '71645895', 1553311912, 2, 'PEN', '70.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-04-29 15:42:58', '2019-04-29 15:42:58'),
(20190430211421, 'tkn_live_EtCMDAbTBLtQcbTX', 1553153592, 2, 'ulises', 'navarro', 'de la torre', 'ulises.navarro@plan-international.org', '948999525', 1, '', '10804434', 1553311912, 0, 'PEN', '5.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 30/04/2019<br />Número de Orden: 20190430211421<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: ulises navarro de la torre<br />Correo Electrónico: ulises.navarro@plan-international.org<br />Teléfono: 948999525<br />Total: <strong> 5.00 PEN</strong><br /><hr />2019-04-30 21:14:47', NULL, 'crd_live_c8Rbf5FUybz9X2LN', 'pln_live_qYnGpGeMn2nWE64z', 'chr_live_SlJnuPZoLSdPvEge', NULL, NULL, 1, 1, '2019-04-30 21:14:21', '2019-04-30 21:14:21'),
(20190503172315, 'tkn_live_2D8warFkreirMjY9', 1553153592, 1, 'allison', 'villar', 'sotero', 'allivillar9@gmail.com', '988256603', 1, '', '46715765', 1553311912, 0, 'PEN', '10.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 03/05/2019<br />Número de Orden: 20190503172315<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: allison villar sotero<br />Correo Electrónico: allivillar9@gmail.com<br />Teléfono: 988256603<br />Total: <strong> 10.00 PEN</strong><br /><hr />2019-05-03 17:23:22', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-03 17:23:15', '2019-05-03 17:23:15'),
(20190508201824, 'tkn_live_mwpc5bCYferIk4Nm', 1553153592, 2, 'ulises', 'navarro', 'de la torre', 'ulises.navarro@plan-international.org', '948999525', 1, '', '10804434', 1553311912, 0, 'PEN', '45.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-08 20:18:24', '2019-05-08 20:18:24'),
(20190508202446, 'tkn_live_5NBtCmLdMzMZh8SL', 1553153592, 2, 'KARIN', 'GONZALES', 'AZEJO', 'krgonzalesa@hotmail.com', '98765432', 1, '', '10059606', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 08/05/2019<br />Número de Orden: 20190508202446<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: KARIN GONZALES AZEJO<br />Correo Electrónico: krgonzalesa@hotmail.com<br />Teléfono: 98765432<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-05-08 20:25:07', NULL, 'crd_live_eeGYzgHTwR1QnZ2R', 'pln_live_EDlTFoEr5slr3GfY', 'chr_live_EK5ih0yxusPBaHeP', NULL, NULL, 1, 1, '2019-05-08 20:24:46', '2019-05-08 20:24:46'),
(20190509173412, 'tkn_live_jKrGeTucI7vzhTDH', 1553153592, 2, 'Alfonso', 'La torre', 'Philpott', 'Alatorre@aloe.ulima.edu.pe', '997543776', 1, '', '40735772', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 09/05/2019<br />Número de Orden: 20190509173412<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Alfonso La torre Philpott<br />Correo Electrónico: Alatorre@aloe.ulima.edu.pe<br />Teléfono: 997543776<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-05-09 17:34:32', NULL, 'crd_live_WfnYxFt34JDChIpi', 'pln_live_wvGZMeNIkkwQ0MrD', 'chr_live_6ttaBbP6tNdsiZcg', NULL, NULL, 1, 1, '2019-05-09 17:34:12', '2019-05-09 17:34:12'),
(20190509203024, 'tkn_live_SJkgcQ72HJG6Lreq', 1553153592, 2, 'Allison', 'Villar', 'Sotero', 'allivillar9@gmail.com', '988256603', 1, '', '46715765', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 09/05/2019<br />Número de Orden: 20190509203024<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Allison Villar Sotero<br />Correo Electrónico: allivillar9@gmail.com<br />Teléfono: 988256603<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-05-09 20:30:41', NULL, 'crd_live_VS1JSW8NyGqv7dtz', 'pln_live_5wWFK15NIsLpJOnu', 'chr_live_aT42KBfkdaMBElJL', NULL, NULL, 1, 1, '2019-05-09 20:30:24', '2019-05-09 20:30:24'),
(20190509220440, 'tkn_live_2GYkHqvxR5xVCTpK', 1553153592, 2, 'ulises', 'navarro', 'de la torre', 'ulises.navarro@plan-international.org', '948999525', 1, '', '10804434', 1553311912, 0, 'PEN', '45.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-09 22:04:40', '2019-05-09 22:04:40'),
(20190510140747, 'tkn_live_U6oIgXG8aOtKpFUg', 1553153592, 2, 'Karim', 'Cruz', 'castro', 'karimltp@hotmail.com', '994613800', 1, '', '08883093', 1553311912, 1, 'PEN', '35.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-10 14:07:47', '2019-05-10 14:07:47'),
(20190510141826, 'tkn_live_MzR8P5pp8PnMqMgJ', 1553153592, 2, 'Karim', 'Cruz', 'CASTRO', 'karimltp@hotmail.com', '994613800', 1, '', '08883093', 1553311912, 1, 'PEN', '35.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-10 14:18:26', '2019-05-10 14:18:26'),
(20190510195457, 'tkn_live_ae0SCoNalyNII0XE', 1553153592, 1, 'danicza milagros', 'chonto', 'uceda', 'danicza.chonto@plan-international.org', '986328369', 1, '', '44088369', 1553311912, 1, 'PEN', '30.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 10/05/2019<br />Número de Orden: 20190510195457<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: danicza milagros chonto uceda<br />Correo Electrónico: danicza.chonto@plan-international.org<br />Teléfono: 986328369<br />Total: <strong> 30.00 PEN</strong><br /><hr />2019-05-10 19:55:06', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-10 19:54:57', '2019-05-10 19:54:57'),
(20190514140016, 'tkn_live_IK0gmXyMQrhFgtdJ', 1553153592, 1, 'OSWALDo', 'Agurto', 'Cresto', 'oswaldo.agurto@plan-international.org', '986646681', 1, '', '42795424', 1553311912, 0, 'PEN', '100.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 14/05/2019<br />Número de Orden: 20190514140016<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: OSWALDo Agurto Cresto<br />Correo Electrónico: oswaldo.agurto@plan-international.org<br />Teléfono: 986646681<br />Total: <strong> 100.00 PEN</strong><br /><hr />2019-05-14 14:00:24', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-14 14:00:16', '2019-05-14 14:00:16'),
(20190514151340, 'tkn_live_X7O5mYdhcyX57IBB', 1553153592, 2, 'Ulises', 'Navarro', 'De la torre', 'Ulises.navarro@plan-international.org', '', 1, '', '10804434', 1553311912, 0, 'PEN', '3.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-14 15:13:40', '2019-05-14 15:13:40'),
(20190514152218, 'tkn_live_yOVNKMXPeEVDCb7m', 1553153592, 2, 'Ulises', 'Navarro', 'De la torre', 'Ulises.navarro@plan-international.org', '948999525', 1, '', '10804434', 1553311912, 0, 'PEN', '3.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-14 15:22:18', '2019-05-14 15:22:18'),
(20190514174146, 'tkn_live_7al4PynKJfdRmWYU', 1553153592, 2, 'Ulises', 'Navarro', 'De la torre', 'Sin_Vicius@hotmail.com', '948999525', 1, '', '10804434', 1553311912, 0, 'PEN', '2.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-14 17:41:46', '2019-05-14 17:41:46'),
(20190517201002, 'tkn_live_Ibmv1hWGf4I91rtt', 1553153592, 1, 'Paul', 'Hiuhu', 'KInuthia', 'hiuhup@gmail.com', '9138320186', 1, 'Passport', '10045193', 1553311894, 1, 'USD', '50.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-17 20:10:02', '2019-05-17 20:10:02'),
(20190520024347, 'tkn_live_Lq7tkPjsbhiWLn2J', 1553153592, 2, 'selmira mercedes', 'lozano', 'montalvo', 'mg1.leparchotel@gmail.com', '989286126', 1, '', '10491332', 1553311912, 0, 'USD', '60.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-20 02:43:47', '2019-05-20 02:43:47'),
(20190521145457, 'tkn_live_VVJTpzypOyzdJAZ8', 1553153592, 1, 'Maria Lola', 'Barba ', 'Ceccovilli', 'marialolabarba@hotmail.com', '966327615', 1, '', '43982231', 1553311912, 1, 'PEN', '80.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-21 14:54:57', '2019-05-21 14:54:57'),
(20190521153814, 'tkn_live_HRfdqShR8jEp38DA', 1553153592, 1, 'Paul', 'Hiuhu', 'Kinuthia', 'hiuhup@gmail.com', '969753936', 3, 'Id', '10045193', 1553311894, 1, 'USD', '50.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-21 15:38:14', '2019-05-21 15:38:14'),
(20190524183355, 'tkn_live_wlkNTsVIRoMRFo3X', 1553153592, 2, 'Maria elena', 'montoya', 'Saavedra', 'malenamosa@hotmail.com', '5149916751', 1, '', '10317193', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 24/05/2019<br />Número de Orden: 20190524183355<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Maria elena montoya Saavedra<br />Correo Electrónico: malenamosa@hotmail.com<br />Teléfono: 5149916751<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-05-24 18:34:05', '0', 'crd_live_EJUA8EgW0HXgIv0E', 'pln_live_5cCp6SojlQV4YMx8', 'sub_live_Tkw5cf3SDEzBbQ4n', 'chr_live_5DGHTBKeAfsm0PWi', NULL, 1, 1, '2019-05-24 18:33:55', '2019-05-24 18:33:55'),
(20190524211405, 'tkn_live_od3xnAVSwPX4uVfA', 1553153592, 2, 'Esther', 'Bahamonde', 'Becerra', 'erbahamonde@hotmail.com', '971245806', 1, '', '07535816', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 24/05/2019<br />Número de Orden: 20190524211405<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Esther Bahamonde Becerra<br />Correo Electrónico: erbahamonde@hotmail.com<br />Teléfono: 971245806<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-05-24 21:14:18', '0', 'crd_live_qDjS8Smy1nP06548', 'pln_live_eJXizQnh2W2Njlqv', 'sub_live_O16g0ryzGXhvYZfh', 'chr_live_m1ezPV7WH7K16SvZ', NULL, 1, 1, '2019-05-24 21:14:05', '2019-05-24 21:14:05'),
(20190524211827, 'tkn_live_bcvh4YvCe3tc9DUV', 1553153592, 2, 'Christian', 'Orjeda', 'Ramos', 'Orjedaramos@hotmail.com', '988365474', 1, '', '07497442', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 24/05/2019<br />Número de Orden: 20190524211827<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Christian Orjeda Ramos<br />Correo Electrónico: Orjedaramos@hotmail.com<br />Teléfono: 988365474<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-05-24 21:18:37', '0', 'crd_live_5X4tTKfBFfaRUnIC', 'pln_live_59UzA0xeI5fv6Ctd', 'sub_live_2UaGwxeWRiw7HPcO', 'chr_live_5ll9t3w4uvmI10Yx', NULL, 1, 1, '2019-05-24 21:18:27', '2019-05-24 21:18:27'),
(20190529224845, 'tkn_live_UgNHxASeoFX3vifR', 1553153592, 2, 'Ulises', 'Navarro', 'de la torre', 'unavarrodelatorre@gmail.com', '948999525', 1, '', '10804434', 1553311912, 1, 'PEN', '35.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-05-29 22:48:45', '2019-05-29 22:48:45'),
(20190613140001, 'tkn_live_QraDH1o6mesB0pw2', 1553153592, 1, 'daniel', 'acuña', 'florez', 'danielacunamansilla@gmail.com', '977226212', 1, '', '23939514', 1553311912, 1, 'PEN', '30.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 13/06/2019<br />Número de Orden: 20190613140001<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: daniel acuña florez<br />Correo Electrónico: danielacunamansilla@gmail.com<br />Teléfono: 977226212<br />Total: <strong> 30.00 PEN</strong><br /><hr />2019-06-13 14:00:10', NULL, NULL, NULL, NULL, 'chr_live_CiwsIjlTZQzCQqsG', NULL, 1, 1, '2019-06-13 14:00:01', '2019-06-13 14:00:01'),
(20190613134042, 'tkn_live_XSNHDHug08TjRBrK', 1553153592, 2, 'Nelly', 'florez', 'garcia', 'nelly.florez@plan-international.org', '984298218', 2, '', '24005462', 1553311912, 0, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 13/06/2019<br />Número de Orden: 20190613134042<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Nelly florez garcia<br />Correo Electrónico: nelly.florez@plan-international.org<br />Teléfono: 984298218<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-13 13:40:53', 'cus_live_uit9enoAtwqjOiXm', 'crd_live_vv6vSw12SadJ8O1Q', 'pln_live_SnNN8ocGpERRWTsd', 'sub_live_I7jLYuekwn8fjgXW', 'chr_live_oTxk54pKDKGCndZG', NULL, 1, 1, '2019-06-13 13:40:42', '2019-06-13 13:40:42'),
(20190614032238, 'tkn_live_KkBYnQtqMYVmaf7B', 1553153592, 2, 'Tatiana', 'bahamonde', 'becerra', 'tatianabah@hotmail.com', '999562246', 1, '', '09861897', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 14/06/2019<br />Número de Orden: 20190614032238<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Tatiana bahamonde becerra<br />Correo Electrónico: tatianabah@hotmail.com<br />Teléfono: 999562246<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-14 03:22:52', 'cus_live_fbSC6A2ClDlm1fSI', 'crd_live_jyp5kfewgZWw7Ito', 'pln_live_oBjbtIKEXB3x8mv7', 'sub_live_y5KAWB9YybBgfQFg', 'chr_live_BJE9xsWELObyTLC6', NULL, 1, 1, '2019-06-14 03:22:38', '2019-06-14 03:22:38'),
(20190614155304, 'tkn_live_X2s0dyIjLV4okyOu', 1553153592, 2, 'Marco', 'Chunga', 'Sánchez', 'machs87@gmail.com', '951793562', 1, '', '44129649', 1553311912, 0, 'PEN', '5.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 14/06/2019<br />Número de Orden: 20190614155304<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Marco Chunga Sánchez<br />Correo Electrónico: machs87@gmail.com<br />Teléfono: 951793562<br />Total: <strong> 5.00 PEN</strong><br /><hr />2019-06-14 15:53:14', 'cus_live_vXxxcQCJE4LVJHHb', 'crd_live_bBjunUZPDcYz4hoQ', 'pln_live_2blY2ZRHaQ9plSL6', 'sub_live_ww2pBskiRJIpOmi2', 'chr_live_49m4cDsxauJqpuB2', NULL, 1, 1, '2019-06-14 15:53:04', '2019-06-14 15:53:04'),
(20190614155422, 'tkn_live_cXvPbsCy9sKn4Ugp', 1553153592, 2, 'Marco', 'Chunga', 'Sánchez', 'machs87@gmail.com', '951793562', 1, '', '44129649', 1553311924, 0, 'PEN', '5.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-06-14 15:54:22', '2019-06-14 15:54:22'),
(20190614155548, 'tkn_live_rFgkVg2CApc0WcBF', 1553153592, 1, 'Marco', 'Chunga', 'Sánchez', 'Machs87@gmail.com', '951793562', 1, '', '44129649', 1553311912, 0, 'PEN', '5.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 14/06/2019<br />Número de Orden: 20190614155548<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Marco Chunga Sánchez<br />Correo Electrónico: Machs87@gmail.com<br />Teléfono: 951793562<br />Total: <strong> 5.00 PEN</strong><br /><hr />2019-06-14 15:55:55', NULL, NULL, NULL, NULL, 'chr_live_SqaGgxxk3Kr78LcK', NULL, 1, 1, '2019-06-14 15:55:48', '2019-06-14 15:55:48'),
(20190614164621, 'tkn_live_0dd9xBdM4nMxaErR', 1553153592, 1, 'JUSTINO', 'SANTA CRUZ', 'CALDERON', 'justino.santacruz@plan-international.org', '984116140', 1, '', '25303006', 1553311912, 1, 'PEN', '50.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 14/06/2019<br />Número de Orden: 20190614164621<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: JUSTINO SANTA CRUZ CALDERON<br />Correo Electrónico: justino.santacruz@plan-international.org<br />Teléfono: 984116140<br />Total: <strong> 50.00 PEN</strong><br /><hr />2019-06-14 16:46:31', NULL, NULL, NULL, NULL, 'chr_live_4lmK3abwQ4K1V7xL', NULL, 1, 1, '2019-06-14 16:46:21', '2019-06-14 16:46:21'),
(20190614212243, 'tkn_live_ZNDxrkwczDUnHsyg', 1553153592, 2, 'Marco', 'Chunga', 'Sánchez', 'machs87@gmail.com', '951793562', 1, '', '44129649', 1553311912, 0, 'PEN', '5.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-06-14 21:22:43', '2019-06-14 21:22:43'),
(20190614212356, 'tkn_live_0V84W4cnCLdqGsci', 1553153592, 1, 'Marco', 'Chunga', 'Sánchez', 'machs87@gmail.com', '951793562', 1, '', '44129649', 1553311912, 0, 'PEN', '5.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 14/06/2019<br />Número de Orden: 20190614212356<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Marco Chunga Sánchez<br />Correo Electrónico: machs87@gmail.com<br />Teléfono: 951793562<br />Total: <strong> 5.00 PEN</strong><br /><hr />2019-06-14 21:24:04', NULL, NULL, NULL, NULL, 'chr_live_eiqSAIsYYxHpjDQI', NULL, 1, 1, '2019-06-14 21:23:56', '2019-06-14 21:23:56'),
(20190614212527, 'tkn_live_4OeDZumRDLCQhisS', 1553153592, 1, 'Marco', 'Chunga', 'Sánchez', 'machs87@gmail.com', '951793562', 1, '', '44129649', 1553311912, 0, 'PEN', '10.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 14/06/2019<br />Número de Orden: 20190614212527<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Marco Chunga Sánchez<br />Correo Electrónico: machs87@gmail.com<br />Teléfono: 951793562<br />Total: <strong> 10.00 PEN</strong><br /><hr />2019-06-14 21:25:35', NULL, NULL, NULL, NULL, 'chr_live_T4h1u6b0VPwkP1TY', NULL, 1, 1, '2019-06-14 21:25:27', '2019-06-14 21:25:27'),
(20190614225341, 'tkn_live_567zw8Scnq1ohS17', 1553153592, 1, 'justino', 'santa cruz', 'calderon', 'justino.santacruz@plan-international.org', '984116140', 1, '', '25303006', 1553311912, 1, 'PEN', '50.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 14/06/2019<br />Número de Orden: 20190614225341<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: justino santa cruz calderon<br />Correo Electrónico: justino.santacruz@plan-international.org<br />Teléfono: 984116140<br />Total: <strong> 50.00 PEN</strong><br /><hr />2019-06-14 22:53:48', NULL, NULL, NULL, NULL, 'chr_live_H1XrJQS7rrKGUrIu', NULL, 1, 1, '2019-06-14 22:53:41', '2019-06-14 22:53:41'),
(20190616034100, 'tkn_live_1alhiHoqF2v1WwAL', 1553153592, 2, 'boris', 'choqueneira', 'villa', 'boris.choqueneira@plan-international.org', '954177440', 1, '', '23942852', 1553311912, 0, 'PEN', '30.00', '', 1, 0, 'Fecha de Donación: 16/06/2019<br />Número de Orden: 20190616034100<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Error de Pago<br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: boris choqueneira villa<br />Correo Electrónico: boris.choqueneira@plan-international.org<br />Teléfono: 954177440<br />Total: <strong> 30.00 PEN</strong><br /><hr />2019-06-16 03:41:13', 'cus_live_W8MEAn0MiS8spcPP', 'crd_live_cbR21MTgO9Op7ekv', 'pln_live_1x4DhdyI3XWlNTDC', 'sub_live_xGrqtXsJKgwqGWwZ', 'chr_live_Z4pnY3OJ14ZcBX5E', NULL, 1, 1, '2019-06-16 03:41:00', '2019-06-16 03:41:00'),
(20190617164820, 'tkn_live_bVyjnA6fvjCbQMaV', 1553153592, 1, 'Luis Angel', 'Bernabe', 'Monsalve', 'luangelbm@gmail.com', '975257758', 1, '', '47112908', 1553311912, 1, 'PEN', '140.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 17/06/2019<br />Número de Orden: 20190617164820<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Luis Angel Bernabe Monsalve<br />Correo Electrónico: luangelbm@gmail.com<br />Teléfono: 975257758<br />Total: <strong> 140.00 PEN</strong><br /><hr />2019-06-17 16:48:28', NULL, NULL, NULL, NULL, 'chr_live_y2yLds4e4clSPVU4', NULL, 1, 1, '2019-06-17 16:48:20', '2019-06-17 16:48:20'),
(20190617180454, 'tkn_live_fQKgczKgt09tu5gj', 1553153592, 2, 'Marianella', 'bahamonde', 'becerra', 'marianellabahamonde@gmail.com', '956324050', 1, '', '42116843', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 17/06/2019<br />Número de Orden: 20190617180454<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Marianella bahamonde becerra<br />Correo Electrónico: marianellabahamonde@gmail.com<br />Teléfono: 956324050<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-17 18:05:08', 'cus_live_sDJSNZrzz5VQedDV', 'crd_live_6w2GOmKjDe4CKtMl', 'pln_live_dPC7Yh0mRYJ8YjCW', 'sub_live_EoEgdLufM97CLQVx', 'chr_live_jkVMskvHIb3in8d2', NULL, 1, 1, '2019-06-17 18:04:54', '2019-06-17 18:04:54'),
(20190617191334, 'tkn_live_oXPlxNdB5G4Ubivy', 1553153592, 2, 'selmira', 'carreon', 'lozano', 'selmialexa20@gmail.com', '961818814', 1, '', '41124994', 1553311912, 2, 'PEN', '70.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 17/06/2019<br />Número de Orden: 20190617191334<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: selmira carreon lozano<br />Correo Electrónico: selmialexa20@gmail.com<br />Teléfono: 961818814<br />Total: <strong> 70.00 PEN</strong><br /><hr />2019-06-17 19:13:51', 'cus_live_FEO9iHi7F5oFRORz', 'crd_live_VctMQ4Lc9Ij7Bbhe', 'pln_live_gspOSDotKH2SLLfz', 'sub_live_W15UZR1ox7Pl2eA9', 'chr_live_nrH0FhaSb7c5lUli', NULL, 1, 1, '2019-06-17 19:13:34', '2019-06-17 19:13:34'),
(20190617204628, 'tkn_live_MDUooPQZ8cGuEObU', 1553153592, 2, 'rosa yolanda', 'becerra', 'alavedra', 'erbahamonde@hotmail.com', '2200967', 1, '', '09862452', 1553311912, 1, 'PEN', '35.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-06-17 20:46:28', '2019-06-17 20:46:28'),
(20190617204807, 'tkn_live_COpwGyWI40L4xKrX', 1553153592, 2, 'rosa yolanda', 'becerra', 'alavedra', 'rosariobah@hotmil.com', '2200967', 1, '', '09862452', 1553311912, 1, 'PEN', '35.00', '', 1, 0, 'Fecha de Donación: 17/06/2019<br />Número de Orden: 20190617204807<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Error de Pago<br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: rosa yolanda becerra alavedra<br />Correo Electrónico: rosariobah@hotmil.com<br />Teléfono: 2200967<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-17 20:48:29', 'cus_live_aTdQgSnmI691yLXe', 'crd_live_VkFMxp61MzkJsUZK', 'pln_live_cc0Y0BXbdcg03Ib1', 'sub_live_RvER70KxECBj3I9D', 'chr_live_N8pXES5T5Tj91ARc', NULL, 1, 1, '2019-06-17 20:48:07', '2019-06-17 20:48:07'),
(20190618004407, 'tkn_live_FSVOPbEos3CRgReX', 1553153592, 2, 'BarBara', 'Palacios', 'Iberico', 'Barbiepaib@gmail.com', '971546800', 1, '', '46386964', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 18/06/2019<br />Número de Orden: 20190618004407<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: BarBara Palacios Iberico<br />Correo Electrónico: Barbiepaib@gmail.com<br />Teléfono: 971546800<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-18 00:44:21', 'cus_live_GmA0tWNy2fEyWO06', 'crd_live_N5MsZ5UW3WHEUhRL', 'pln_live_WcdlJqBDMwGmxeHO', 'sub_live_dwsNx36XKLYQAZCW', 'chr_live_T7YB9ESMTs55JCQM', NULL, 1, 1, '2019-06-18 00:44:07', '2019-06-18 00:44:07'),
(20190617221517, 'tkn_live_25mZarxpbA6ubzST', 1553153592, 2, 'rosa yolanda', 'becerra', 'alavedra', 'rosariobah@hotmail.com', '971245806', 1, '', '09862452', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 17/06/2019<br />Número de Orden: 20190617221517<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: rosa yolanda becerra alavedra<br />Correo Electrónico: rosariobah@hotmail.com<br />Teléfono: 971245806<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-17 22:15:28', 'cus_live_BCGAmQsfPBZ1qnEv', 'crd_live_G4sgJT4TBRDTsjzy', 'pln_live_Sak9qWcdICeDydNe', 'sub_live_ja4EOgFRsIqDNh8p', 'chr_live_SCerfTMsWenBigsh', NULL, 1, 1, '2019-06-17 22:15:17', '2019-06-17 22:15:17'),
(20190617214641, 'tkn_live_u5Mn0Y3OMbXEPNvy', 1553153592, 1, 'Marco', 'Chunga', 'Sánchez', 'machs87@gmail.com', '951793562', 1, '', '44129649', 1553311912, 0, 'PEN', '5.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 17/06/2019<br />Número de Orden: 20190617214641<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Marco Chunga Sánchez<br />Correo Electrónico: machs87@gmail.com<br />Teléfono: 951793562<br />Total: <strong> 5.00 PEN</strong><br /><hr />2019-06-17 21:46:51', NULL, NULL, NULL, NULL, 'chr_live_yhHmukSok8l1FIrs', NULL, 1, 1, '2019-06-17 21:46:41', '2019-06-17 21:46:41'),
(20190618024601, 'tkn_live_7xBwqOGNVMK4FoEV', 1553153592, 1, 'MADELEINE', 'GUTIERREZ', 'CRUZ', 'maidemz@yahoo.es', '962215827', 1, '', '42437630', 1553311912, 1, 'PEN', '30.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 18/06/2019<br />Número de Orden: 20190618024601<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: MADELEINE GUTIERREZ CRUZ<br />Correo Electrónico: maidemz@yahoo.es<br />Teléfono: 962215827<br />Total: <strong> 30.00 PEN</strong><br /><hr />2019-06-18 02:46:08', NULL, NULL, NULL, NULL, 'chr_live_TpyhhfCPOCR9iiwz', NULL, 1, 1, '2019-06-18 02:46:01', '2019-06-18 02:46:01'),
(20190618031232, 'tkn_live_bJTS38L9hkIz4mNX', 1553153592, 1, 'saida aidee', 'canahua', 'ccamato', 'saidaccc@yahoo.es', '984839332', 1, '', '23974915', 1553311912, 1, 'PEN', '30.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 18/06/2019<br />Número de Orden: 20190618031232<br />Método de Pago: DONACIÓN ÚNICA<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: saida aidee canahua ccamato<br />Correo Electrónico: saidaccc@yahoo.es<br />Teléfono: 984839332<br />Total: <strong> 30.00 PEN</strong><br /><hr />2019-06-18 03:12:38', NULL, NULL, NULL, NULL, 'chr_live_O976oG8npXOhcAZL', NULL, 1, 1, '2019-06-18 03:12:32', '2019-06-18 03:12:32'),
(20190618043855, 'tkn_live_EL4YBwI1jbsLQGMK', 1553153592, 2, 'Jose luis', 'bahamonde', 'becerra', 'cualitativa@bccm-peru.com', '982548557', 1, '', '40820841', 1553311912, 1, 'PEN', '35.00', '', 1, 0, 'Fecha de Donación: 18/06/2019<br />Número de Orden: 20190618043855<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Error de Pago<br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Jose luis bahamonde becerra<br />Correo Electrónico: cualitativa@bccm-peru.com<br />Teléfono: 982548557<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-18 04:39:09', 'cus_live_EryHk5CuPQ8On9Qz', 'crd_live_UDq94DlnBEx5i61D', 'pln_live_yo30UDos4QzW84Yu', 'sub_live_6hkJA26Sa5eHVbWi', 'chr_live_lnmhiwyWXxaj3lKd', NULL, 1, 1, '2019-06-18 04:38:55', '2019-06-18 04:38:55'),
(20190618135844, 'tkn_live_U5VHo8WmeJZLaRRw', 1553153592, 2, 'Katerine', 'Salinas', 'Cabezas', 'Katerine.salinas.c@gmail.com', '941870376', 1, '', '10431327', 1553311912, 2, 'PEN', '70.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 18/06/2019<br />Número de Orden: 20190618135844<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Katerine Salinas Cabezas<br />Correo Electrónico: Katerine.salinas.c@gmail.com<br />Teléfono: 941870376<br />Total: <strong> 70.00 PEN</strong><br /><hr />2019-06-18 13:58:56', 'cus_live_B3mfKIl42LqMaLm6', 'crd_live_NMkX6PJCJnkgA5xu', 'pln_live_1CsroR1iq7hrGWLU', 'sub_live_b0ktTwgBlkVja8l9', 'chr_live_jOOjDJl1B2TTnbRc', NULL, 1, 1, '2019-06-18 13:58:44', '2019-06-18 13:58:44'),
(20190618142156, 'tkn_live_LCxVYyaTNabJn9eo', 1553153592, 2, 'Lucy', 'Ramos', 'gamarra', 'orjedaramos@hotmail.com', '990999529', 1, '', '07305372', 1553311912, 1, 'PEN', '35.00', '', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-06-18 14:21:56', '2019-06-18 14:21:56'),
(20190618142417, 'tkn_live_NP7l5RnJhwIq2JpI', 1553153592, 2, 'Lucy', 'Ramos', 'gamarra', 'orjedaramos@gmail.com', '990999529', 1, '', '07305372', 1553311912, 1, 'PEN', '35.00', 'Su compra ha sido exitosa.', 1, 1, 'Fecha de Donación: 18/06/2019<br />Número de Orden: 20190618142417<br />Método de Pago: DONACIÓN MENSUAL<br />Estado de la Transacción: Pagado<br /><hr /><strong>Su donación ha sido exitosa.</strong><br /><hr /><h4>Datos del Cliente</h4>Nombres y Apellidos: Lucy Ramos gamarra<br />Correo Electrónico: orjedaramos@gmail.com<br />Teléfono: 990999529<br />Total: <strong> 35.00 PEN</strong><br /><hr />2019-06-18 14:24:34', 'cus_live_q2aOGqSZTRBGLd9t', 'crd_live_TSEU57rF8PfpIOVn', 'pln_live_MUdorNYrD7ZjSLmT', 'sub_live_ihH5fUs12UHmm9Ah', 'chr_live_H2i3GZBpa5lldz8i', NULL, 1, 1, '2019-06-18 14:24:17', '2019-06-18 14:24:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `codigo_iso` varchar(2) NOT NULL,
  `estado` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `titulo`, `codigo_iso`, `estado`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1553311790, 'Argentina', 'AR', 1, 1, 1, '2019-03-23 03:29:50', '2019-04-27 04:04:22'),
(1553311797, 'Bolivia', 'BO', 1, 1, 1, '2019-03-23 03:29:57', '2019-04-27 04:04:11'),
(1553311803, 'Brasil', 'BR', 1, 1, 1, '2019-03-23 03:30:03', '2019-04-27 04:04:00'),
(1553311809, 'Chile', 'CL', 1, 1, 1, '2019-03-23 03:30:09', '2019-04-27 04:03:45'),
(1553311816, 'Colombia', 'CO', 1, 1, 1, '2019-03-23 03:30:16', '2019-04-27 04:03:35'),
(1553311823, 'Costa Rica', 'CR', 1, 1, 1, '2019-03-23 03:30:23', '2019-04-27 04:03:20'),
(1553311829, 'Cuba', 'CU', 1, 1, 1, '2019-03-23 03:30:29', '2019-04-27 04:03:08'),
(1553311836, 'Ecuador', 'EC', 1, 1, 1, '2019-03-23 03:30:36', '2019-04-27 04:02:54'),
(1553311845, 'El salvador', 'SV', 1, 1, 1, '2019-03-23 03:30:45', '2019-04-27 03:54:44'),
(1553311852, 'Guatemala', 'GT', 1, 1, 1, '2019-03-23 03:30:52', '2019-04-27 03:54:23'),
(1553311859, 'Haití', 'HT', 1, 1, 1, '2019-03-23 03:30:59', '2019-04-27 03:53:51'),
(1553311865, 'Honduras', 'HN', 1, 1, 1, '2019-03-23 03:31:05', '2019-04-27 03:53:40'),
(1553311873, 'México', 'MX', 1, 1, 1, '2019-03-23 03:31:13', '2019-04-27 03:52:56'),
(1553311881, 'Nicaragua', 'NI', 1, 1, 1, '2019-03-23 03:31:21', '2019-04-27 03:52:44'),
(1553311894, 'Panamá', 'PA', 1, 1, 1, '2019-03-23 03:31:34', '2019-04-27 03:52:33'),
(1553311905, 'Paraguay', 'PY', 1, 1, 1, '2019-03-23 03:31:45', '2019-04-27 03:52:15'),
(1553311912, 'Perú', 'PE', 1, 1, 1, '2019-03-23 03:31:52', '2019-04-27 03:52:08'),
(1553311924, 'República Dominicana', 'DO', 1, 1, 1, '2019-03-23 03:32:04', '2019-04-27 03:51:55'),
(1553311934, 'Uruguay', 'UY', 1, 1, 1, '2019-03-23 03:32:14', '2019-04-27 03:51:37'),
(1553311940, 'Venezuela', 'VE', 1, 1, 1, '2019-03-23 03:32:20', '2019-04-27 03:51:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `acciones` text COLLATE utf8_unicode_ci NOT NULL,
  `controlador` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `items` text COLLATE utf8_unicode_ci,
  `estado` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios`
--

CREATE TABLE `precios` (
  `id` bigint(20) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `tipo_donacion` int(11) NOT NULL,
  `detalles` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad_apoyo` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `activado` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `precios`
--

INSERT INTO `precios` (`id`, `id_padre`, `tipo_donacion`, `detalles`, `precio`, `cantidad_apoyo`, `estado`, `activado`, `orden`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1553194839, 1553153592, 1, 'Capacitación en habilidades digitales para 1 niña', '30.00', 1, 1, 1, 0, 1, 1, '2019-03-21 19:00:39', '2019-03-21 19:05:13'),
(1553194870, 1553153592, 1, 'Capacitación en educación financiera para 1 niña', '50.00', 1, 1, 1, 0, 1, 1, '2019-03-21 19:01:10', '2019-03-21 19:05:08'),
(1553194928, 1553153592, 1, 'Capacitación en habilidades sociales y plan de vida para 1 niña', '80.00', 1, 1, 1, 0, 1, 1, '2019-03-21 19:02:08', '2019-03-21 19:02:08'),
(1553194943, 1553153592, 1, 'Capacitación en liderazgo y empoderamiento para 1 niña', '140.00', 1, 1, 1, 0, 1, 1, '2019-03-21 19:02:23', '2019-03-21 19:02:23'),
(1553194965, 1553153592, 2, 'Contribuye al empoderamiento* de 1 niña', '35.00', 1, 1, 1, 0, 1, 1, '2019-03-21 19:02:45', '2019-03-21 19:02:45'),
(1553195068, 1553153592, 2, 'Contribuye al empoderamiento* de 2 niñas', '70.00', 2, 1, 1, 0, 1, 1, '2019-03-21 19:04:28', '2019-03-21 19:04:28'),
(1553195081, 1553153592, 2, 'Contribuye al empoderamiento* de 4 niñas', '125.00', 4, 1, 1, 0, 1, 1, '2019-03-21 19:04:41', '2019-03-21 19:04:41'),
(1553195094, 1553153592, 2, 'Contribuye al empoderamiento* de 6 niñas', '190.00', 6, 1, 1, 0, 1, 1, '2019-03-21 19:04:54', '2019-03-21 19:04:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `id` bigint(20) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `activado` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programas`
--

INSERT INTO `programas` (`id`, `id_padre`, `titulo`, `direccion`, `estado`, `activado`, `orden`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1553195731, 1553153592, 'Cusco', 'Jr. Yuracpunco N° 79 A. Urb. Tahuantinsuyo', 1, 1, 0, 1, 1, '2019-03-21 19:15:31', '2019-03-21 19:15:31'),
(1553195742, 1553153592, 'Lima', 'Calle Rosendo Badani 185. Urb. Pando 7ma etapa, San Miguel', 1, 1, 0, 1, 1, '2019-03-21 19:15:42', '2019-03-21 19:15:42'),
(1553195753, 1553153592, 'Loreto', 'Calle San Martín N° 132 – Iquitos', 1, 1, 0, 1, 1, '2019-03-21 19:15:53', '2019-03-21 19:15:53'),
(1553195764, 1553153592, 'Piura', 'Jr. Los Incas Mz. “A” Lote 13A Urb. Magisterial', 1, 1, 0, 1, 1, '2019-03-21 19:16:04', '2019-03-21 19:16:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `id` bigint(20) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `comentario` text NOT NULL,
  `edad` int(11) NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `activado` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `usuario_creacion` int(11) NOT NULL,
  `usuario_modificacion` int(11) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id`, `id_padre`, `titulo`, `comentario`, `edad`, `ubicacion`, `estado`, `activado`, `orden`, `usuario_creacion`, `usuario_modificacion`, `fecha_creacion`, `fecha_modificacion`) VALUES
(1553151738, 1553153592, 'Talita', '“Quiérete ha sido un espacio para estimular nuestra confianza y autoestima. Un ejemplo de ello ha sido el aprender a vencer nuestros temores de hablar en público, lo cual es importante para hacer oír nuestras voces en las escuelas y comunidades”.', 16, 'Lima', 1, 1, 0, 1, 1, '2019-03-21 07:02:18', '2019-03-21 18:46:57'),
(1553194045, 1553153592, 'Valezca', '“Gracias, Plan International, por hacer realidad mi idea de negocio en la crianza de cuyes. Con este negocio podré terminar mis estudios y ayudar a mi familia”.', 18, 'Cuzco', 1, 1, 0, 1, 1, '2019-03-21 18:47:25', '2019-03-21 18:47:25'),
(1553194067, 1553153592, 'Jhirina', '“De joven no pude estudiar una carrera porque tuve que hacerme cargo de mi hermano menor. Ahora tengo la oportunidad de estudiar y quiero aprovecharla al máximo. Tenemos mucho apoyo, desde lo económico hasta lo emocional, y eso nos impulsa a continuar esforzándonos día a día”.', 28, 'Lima', 1, 1, 0, 1, 1, '2019-03-21 18:47:47', '2019-03-21 18:47:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aliados`
--
ALTER TABLE `aliados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `backend_menu`
--
ALTER TABLE `backend_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `campanias`
--
ALTER TABLE `campanias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formularios`
--
ALTER TABLE `formularios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `log_administrador`
--
ALTER TABLE `log_administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `precios`
--
ALTER TABLE `precios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1557847781;

--
-- AUTO_INCREMENT de la tabla `aliados`
--
ALTER TABLE `aliados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1553194386;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1553191167;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1553194811;

--
-- AUTO_INCREMENT de la tabla `formularios`
--
ALTER TABLE `formularios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1560782505;

--
-- AUTO_INCREMENT de la tabla `log_administrador`
--
ALTER TABLE `log_administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=742;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20190618142418;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1553311941;

--
-- AUTO_INCREMENT de la tabla `precios`
--
ALTER TABLE `precios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1553195095;

--
-- AUTO_INCREMENT de la tabla `programas`
--
ALTER TABLE `programas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1553195765;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1553194068;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

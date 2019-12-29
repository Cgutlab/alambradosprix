-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-04-2019 a las 00:02:20
-- Versión del servidor: 10.2.23-MariaDB-cll-lve
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
-- Base de datos: `alambradosprix_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acategorias`
--

CREATE TABLE `acategorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `acategorias`
--

INSERT INTO `acategorias` (`id`, `titulo`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Adhesivo Industrial', 'imagen1.png', '', 'AA', '2018-05-30 08:14:40', '2018-06-11 20:57:27'),
(5, 'Adhesivo Industrial', 'imagen1.png', '', 'BB', '2018-05-30 08:14:40', '2018-06-11 20:57:27'),
(6, 'Adhesivo Industrial', 'imagen1.png', '', 'CC', '2018-05-30 08:14:40', '2018-06-11 20:57:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aproductos`
--

CREATE TABLE `aproductos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `breve` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resena` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `aproductos`
--

INSERT INTO `aproductos` (`id`, `titulo`, `breve`, `resena`, `texto1`, `texto2`, `pdf`, `imagen`, `id_categoria`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'CM-65', '<p><span style=\"color:#9a9a9a\">Ideal para ser utilizado en hilados de algod&oacute;n 100% y art&iacute;culos pesados como guardapolvos</span></p>', NULL, '<p><span style=\"color:#fe7e3d\"><strong>Descripci&oacute;n</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">El CM-65 es un almid&oacute;n modificado de la caracter&iacute;stica de nuestra l&iacute;nea de aproductos encolantes. Su particularidad es la de tener una</span><span style=\"color:#fe8212\"> viscosidad media </span><span style=\"color:#4c4c4c\">y a su vez ser lo bastante soluble, de manera tal que, con un tratamiento levemente alcalino o uno suave enzim&aacute;tico, permite removerlo en su totalidad.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Caracter&iacute;&nbsp;sticas</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buen brillo</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Alta flexibilidad</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buena solubilidad</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Usos</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">Este producto es ideal para ser utilizado en</span><span style=\"color:#fe8212\"> hilados de algod&oacute;n 100% </span><span style=\"color:#4c4c4c\">y art&iacute;culos pesados como guardapolvos, camiser&iacute;a, ropa de trabajo, lonas para recubrimientos, zapatillas, &iacute;ndigo, etc., ya que por su media viscosidad nos permite trabajar a una baja concentraci&oacute;n sin perder las caracter&iacute;sticas de recubrimiento y adhesividad que necesita una cola para este tipo de art&iacute;culos.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Apariencia</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Apariencia: polvo blanco.</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; S&oacute;lidos: 90-92%</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; pH: 6-7</span></p>', '', 'ficha.pdf', 'imagen.jpg', 1, 'AA', '2018-06-04 17:56:00', '2018-06-11 22:28:13'),
(2, 'DTX-1010', '<p><span style=\"color:#9a9a9a\">Se recomienda especialmente para aquellos artículos de títulos \r\nmedios a finos</span></p>', NULL, '<p><span style=\"color:#fe7e3d\"><strong>Descripci&oacute;n</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">El CM-65 es un almid&oacute;n modificado de la caracter&iacute;stica de nuestra l&iacute;nea de aproductos encolantes. Su particularidad es la de tener una</span><span style=\"color:#fe8212\"> viscosidad media </span><span style=\"color:#4c4c4c\">y a su vez ser lo bastante soluble, de manera tal que, con un tratamiento levemente alcalino o uno suave enzim&aacute;tico, permite removerlo en su totalidad.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Caracter&iacute;&nbsp;sticas</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buen brillo</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Alta flexibilidad</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buena solubilidad</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Usos</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">Este producto es ideal para ser utilizado en</span><span style=\"color:#fe8212\"> hilados de algod&oacute;n 100% </span><span style=\"color:#4c4c4c\">y art&iacute;culos pesados como guardapolvos, camiser&iacute;a, ropa de trabajo, lonas para recubrimientos, zapatillas, &iacute;ndigo, etc., ya que por su media viscosidad nos permite trabajar a una baja concentraci&oacute;n sin perder las caracter&iacute;sticas de recubrimiento y adhesividad que necesita una cola para este tipo de art&iacute;culos.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Apariencia</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Apariencia: polvo blanco.</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; S&oacute;lidos: 90-92%</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; pH: 6-7</span></p>', '', 'ficha.pdf', 'imagen.jpg', 1, 'CC', '2018-06-04 17:56:00', '2018-06-11 22:28:13'),
(3, 'ELVANOL T-25/T-66 (DUPONT)', '<p><span style=\"color:#9a9a9a\">Polímero vinílico especialmente ideado para el encolado en la industria textil</span></p>', NULL, '<p><span style=\"color:#fe7e3d\"><strong>Descripci&oacute;n</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">El CM-65 es un almid&oacute;n modificado de la caracter&iacute;stica de nuestra l&iacute;nea de aproductos encolantes. Su particularidad es la de tener una</span><span style=\"color:#fe8212\"> viscosidad media </span><span style=\"color:#4c4c4c\">y a su vez ser lo bastante soluble, de manera tal que, con un tratamiento levemente alcalino o uno suave enzim&aacute;tico, permite removerlo en su totalidad.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Caracter&iacute;&nbsp;sticas</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buen brillo</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Alta flexibilidad</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Buena solubilidad</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Usos</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">Este producto es ideal para ser utilizado en</span><span style=\"color:#fe8212\"> hilados de algod&oacute;n 100% </span><span style=\"color:#4c4c4c\">y art&iacute;culos pesados como guardapolvos, camiser&iacute;a, ropa de trabajo, lonas para recubrimientos, zapatillas, &iacute;ndigo, etc., ya que por su media viscosidad nos permite trabajar a una baja concentraci&oacute;n sin perder las caracter&iacute;sticas de recubrimiento y adhesividad que necesita una cola para este tipo de art&iacute;culos.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#fe7e3d\"><strong>Apariencia</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; Apariencia: polvo blanco.</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; S&oacute;lidos: 90-92%</span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\">&bull; pH: 6-7</span></p>', '', 'ficha.pdf', 'imagen.jpg', 1, 'EE', '2018-06-04 17:56:00', '2018-06-11 22:28:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_contenido`
--

CREATE TABLE `banner_contenido` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banner_contenido`
--

INSERT INTO `banner_contenido` (`id`, `imagen`, `titulo`, `texto`, `created_at`, `updated_at`) VALUES
(1, 'bannercontenidos__bannerHome.jpg', '¿Por qué Indomatrix?', '<p>Por la trayectoria, responsabilidad y experiencia que nos dan 42 a&ntilde;os en la industria metal&uacute;rgica.</p>\r\n\r\n<p>Porque el costo/beneficio es muy importante a la hora de evaluar un proyecto de fabricaci&oacute;n.</p>\r\n\r\n<p>Porque brindamos servicio pre y post venta y as&iacute; garantizamos su tranquilidad. Porque a la hora de construir marcamos diferencias por innovaci&oacute;n constante de las tecnolog&iacute;as aplicadas: &nbsp;CAD-CAM-CAE. (Tecnolog&iacute;a SIEMENS)</p>', '2018-06-25 00:58:53', '2018-06-25 19:06:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner_iconos`
--

CREATE TABLE `banner_iconos` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banner_iconos`
--

INSERT INTO `banner_iconos` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'bannericonos__icon1.png', '42 Años de Trayectoria', NULL, 'AA', '2018-06-25 02:00:04', '2018-06-25 02:00:04'),
(2, 'bannericonos__icon2.png', 'Servicio pre y post venta', NULL, 'BB', '2018-06-25 02:00:23', '2018-06-25 02:00:23'),
(3, 'bannericonos__icon3.png', 'Relación Costo/Beneficio', NULL, 'CC', '2018-06-25 02:00:36', '2018-06-25 02:00:36'),
(4, 'bannericonos__icon4.png', 'Innovación Constante', NULL, 'DD', '2018-06-25 02:00:51', '2018-06-25 02:00:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calidades`
--

CREATE TABLE `calidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `calidades`
--

INSERT INTO `calidades` (`id`, `titulo`, `descripcion`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, '<p><em>Asumiento un compromiso<br />\r\nde excelencia en la calidad<br />\r\nde nuestros productos</em></p>', '<p>Diatex es una empresa que desde sus inicios se ha dedicado a brindar a sus clientes productos de calidad y otorgarles todo el apoyo t&eacute;cnico que estos requieran. Hemos tomado un compromiso de calidad y eficiencia que quedan demostrados en cada uno de nuestros pasos.<br />\r\n<br />\r\nDiatex cuenta con una extensa variedad de productos para distintos tipos de industria. Entre los mismos podemos dividirlos y enumerarlos en dos: La rama textil y otra dedicada a la fabricaci&oacute;n de adhesivos industriales de diferentes caracter&iacute;sticas.</p>', 'imagen1.png', 'ruta', 'AA', NULL, '2018-06-13 08:04:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `titulo`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Encolantes', 'imagen1.png', '', 'AA', '2018-05-30 08:14:40', '2018-06-11 20:57:27'),
(2, 'Acrilatos', 'imagen2.png', '', 'BB', '2018-05-30 08:14:53', '2018-05-30 08:14:53'),
(3, 'Aprestos', 'imagen3.png', '', 'CC', '2018-05-30 08:15:07', '2018-05-30 08:15:07'),
(4, 'Suavizantes', 'imagen4.png', '', 'DD', '2018-05-30 08:15:07', '2018-05-30 08:15:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_compresors`
--

CREATE TABLE `categorias_compresors` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_compresors`
--

INSERT INTO `categorias_compresors` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Compresores Airdin', NULL, 'AA', '2018-06-26 17:37:01', '2018-06-26 17:37:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_luminarias`
--

CREATE TABLE `categorias_luminarias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_luminarias`
--

INSERT INTO `categorias_luminarias` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(4, NULL, 'Luminaria Led', NULL, 'AA', '2018-06-26 16:07:10', '2018-06-26 16:33:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_novedads`
--

CREATE TABLE `categorias_novedads` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categorias_novedads`
--

INSERT INTO `categorias_novedads` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Actualidad', NULL, 'AA', '2018-06-26 20:52:53', '2018-06-26 20:52:53'),
(2, NULL, 'Empresa', NULL, 'BB', '2018-06-26 20:58:06', '2018-06-26 20:58:06'),
(3, NULL, 'Productos', NULL, 'CC', '2018-06-26 20:58:11', '2018-06-26 20:58:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'clientes__1.jpg', 'Volkswagen', NULL, 'AA', '2018-06-26 20:01:03', '2018-06-26 20:01:03'),
(2, 'clientes__2.jpg', 'FAVRA', NULL, 'BB', '2018-06-26 20:01:13', '2018-06-26 20:01:13'),
(3, 'clientes__3.jpg', 'INDAVE', NULL, 'CC', '2018-06-26 20:01:20', '2018-06-26 20:01:20'),
(4, 'clientes__4.jpg', 'GOLDCORP', NULL, 'DD', '2018-06-26 20:02:09', '2018-06-26 20:02:09'),
(5, 'clientes__5.jpg', 'MINERA SANTA CRUZ', NULL, 'EE', '2018-06-26 20:02:18', '2018-06-26 20:02:18'),
(6, 'clientes__6.jpg', 'National Oilwell Varco', NULL, 'FF', '2018-06-26 20:02:27', '2018-06-26 20:02:27'),
(7, 'clientes__7.jpg', 'CALDERA DE VAPOR', NULL, 'GG', '2018-06-26 20:02:34', '2018-06-26 20:02:34'),
(8, 'clientes__8.jpg', 'FLOWSERVE', NULL, 'HH', '2018-06-26 20:02:42', '2018-06-26 20:03:16'),
(9, 'clientes__9.jpg', 'VORTEX DESIGN SOLUTIONS', NULL, 'II', '2018-06-26 20:02:49', '2018-06-26 20:03:33'),
(10, 'clientes__10.jpg', 'GOLDCORP', NULL, 'JJ', '2018-06-26 20:02:57', '2018-06-26 20:03:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`id`, `imagen`, `titulo`, `subtitulo`, `texto`, `ruta`, `created_at`, `updated_at`) VALUES
(1, NULL, '<p>Brindando Calidad, Seguridad</p>\r\n\r\n<p>y Garant&iacute;a en todos los</p>\r\n\r\n<p>Trabajos que realizamos</p>', '<p style=\"text-align:center\">Todo el desarrollo en un solo lugar</p>', '<p>Somos una Empresa dedicada a la Venta e Instalaci&oacute;n de Alambrados Perimetrales y Rurales, Cercos, Puertas y Portones. Ofrecemos Nuestros Servicios a Particulares, Industrias, Entidades Deportivas, Barrios Privados y Countries.&nbsp;</p>', 'http://www.google.com.ar', NULL, '2018-07-02 17:19:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correos`
--

CREATE TABLE `correos` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `correos`
--

INSERT INTO `correos` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Visión', '<p>&middot; Constituir una cartera comercial diversificada en n&uacute;mero de clientes y dirigida a diferentes sectores para asegurar la estabilidad.</p>\r\n\r\n<p>&middot; Consolidar las relaciones con nuevos clientes mediante b&uacute;squeda activa y conseguir el reconocimiento de sus profesionales.</p>\r\n\r\n<p>&middot; Mantener un crecimiento constante y sostenido.</p>\r\n\r\n<p>&middot; Hacer que la mejora de calidad y la innovaci&oacute;n impregnen nuestro d&iacute;a a d&iacute;a.</p>\r\n\r\n<p>&middot; Encontrar soluciones t&eacute;cnicas para el sector industrial y sus procesos productivos, de acuerdo con las nuevas tecnolog&iacute;as y materiales.</p>', 'AA', NULL, '2018-06-25 22:29:31'),
(2, '2__publications.jpg', 'Política de Calidad', '<p>INDOMATRIX est&aacute; gestionada por un ERP que ayuda a dirigir todos sus procesos y llevar un control exhaustivo, con trazabilidad inclusive, de todos los proyectos que realiza. Adicionalmente el portal Tecnonet proporciona a nuestros clientes transparencia y trazabilidad de los proyectos actuales o pasados. Nuestro sistema de gesti&oacute;n de la calidad, basado en las normas ISO 9001:2000 y EN9100, nos permite mejorar continuamente la eficacia y eficiencia de nuestros procesos y aumentar la satisfacci&oacute;n de nuestros clientes.</p>', 'CC', NULL, '2018-06-25 22:31:34'),
(3, NULL, '3', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `contrasena` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `nombre`, `email`, `contrasena`, `created_at`, `updated_at`) VALUES
(1, 'PABLO OSOLE', 'pablo@osole.es', 'pablo', '2018-06-03 09:50:41', '2018-06-03 09:50:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `tipo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'direccion', '<p>Camino General Belgrano 700. Bernal Oeste</p>', 'aa', NULL, '2018-07-04 18:01:12'),
(2, 'telefono', '<p>15-5163-1551 / &nbsp;4270-6194</p>\r\n\r\n<p>Nextel 792*2117</p>', 'bb', NULL, '2018-07-04 18:07:00'),
(3, 'correo', 'alambradosprix@hotmail.com', 'cc', NULL, '2018-07-04 18:01:34'),
(4, 'oficina', '<p>Juana Manso 1633 / 2&deg; piso Oficina 3, Ciudad Aut&oacute;noma de Buenos Aires</p>', 'dd', NULL, '2018-06-21 04:20:46'),
(5, 'horario', '<p>Lunes a Viernes:</p>\r\n\r\n<p>07:00 - 16:00</p>', 'ee', NULL, '2018-06-21 04:20:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE `descargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`id`, `titulo`, `subtitulo`, `texto`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'ISO 9001:2015', 'Ver Certificación', '', 'archivo1.pdf', '', NULL, NULL),
(2, 'Política de Calidad', 'Ver Certificación', '', 'archivo2.pdf', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destacados`
--

CREATE TABLE `destacados` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `destacados`
--

INSERT INTO `destacados` (`id`, `titulo`, `texto`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align:center\"><strong><span style=\"color:#2a4681\">Poste Ol&iacute;mpico de Hormig&oacute;n</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#595959\">Postes</span></p>', '<p>Somos los &uacute;nicos representantes en el pa&iacute;s &nbsp;de la firma &ldquo;DUPONT Chemicals Company&rdquo;. Tenemos a nuestro cargo la comercializaci&oacute;n de los productos ELVANOL T-25 y ELVANOL T-66, alcoholes polivin&iacute;licos desarrollados especialmente.</p>', 'destacados___Puertas-Y-Portones-Economicos-Standard-Cano-Redondo-1-Con-Tejido-Romboidal.jpg', 'producto/30', 'aa', NULL, '2018-07-19 16:54:48'),
(2, '<p style=\"text-align:center\"><span style=\"color:#2a4682\"><strong>Alambrado Romboidal</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#595959\">Alambrados</span></p>', '<p>Fabricaci&oacute;n de adhesivos industriales de diferentes caracter&iacute;sticas cubriendo las distintas gamas de pegado y maquinarias tales como cart&oacute;n corrugado, cerrado de cajas, pegado de estuches, trabajos de imprenta, etiquetado, carpinter&iacute;a.</p>', 'destacados__2.jpg', 'producto/2', 'BB', NULL, '2018-07-19 17:53:48'),
(3, '<p style=\"text-align:center\"><span style=\"color:#2a4682\"><strong>Puerta Quebracho Colorado</strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#595959\">Puertas y Portones</span></p>', '<p>Contamos con un equipo de ingenieros y t&eacute;cnicos expertos en el rubro, capacitados para comprender las necesidades de nuestros clientes, y as&iacute; poder ofrecer las soluci&oacute;n a medida apropiada.</p>', 'destacados__Puerta-En-Quebracho--Colorado-Standard.jpg', 'producto/18', 'CC', NULL, '2018-07-19 16:55:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `politica` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `titulo`, `titulo2`, `texto`, `texto2`, `imagen`, `politica`, `descripcion`, `imagen2`, `created_at`, `updated_at`) VALUES
(1, '<p>Empresa</p>', '<p>Servicio a medida del cliente</p>', '<p>Somos una Empresa dedicada a la Venta e Instalaci&oacute;n de Alambrados Perimetrales y Rurales, Cercos, Puertas y Portones. Ofrecemos Nuestros Servicios a Particulares, Industrias, Entidades Deportivas, Barrios Privados y Countries. Brindamos Calidad, Seguridad y Garant&iacute;a de Todos los Trabajos que Realizamos.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', '', 'empresa__1.jpg', NULL, NULL, 'empresa__publications.jpg', NULL, '2018-07-05 18:01:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipamientos`
--

CREATE TABLE `equipamientos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `texto` text COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci NOT NULL,
  `id_producto` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias_novedads`
--

CREATE TABLE `galerias_novedads` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `extracto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ficha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_productos_novedads` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `galerias_novedads`
--

INSERT INTO `galerias_novedads` (`id`, `imagen`, `titulo`, `extracto`, `texto`, `ficha`, `fecha`, `orden`, `id_productos_novedads`, `created_at`, `updated_at`) VALUES
(1, 'galerianovedad__sliderNovedad.jpg', NULL, NULL, NULL, NULL, NULL, 'AA', 1, '2018-06-26 22:35:50', '2018-06-26 22:35:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_clientes`
--

CREATE TABLE `home_clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listarproductos`
--

CREATE TABLE `listarproductos` (
  `id` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `listarproductos`
--

INSERT INTO `listarproductos` (`id`, `titulo`, `texto`, `created_at`, `updated_at`) VALUES
(1, 'Modulo1', 'Alambrados', NULL, NULL),
(2, 'Modulo2', 'Puertas y Portones', NULL, NULL),
(3, 'Modulo3', 'Postes', NULL, NULL),
(4, 'Modulo4', 'Otros productos', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listas`
--

CREATE TABLE `listas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `pdf` text COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `listas`
--

INSERT INTO `listas` (`id`, `titulo`, `pdf`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Titulo', 'PDF', 'ord', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `nombre`, `imagen`, `tipo`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'header', 'logos__header.bmp', 'header', 'AA', NULL, '2018-07-04 17:55:02'),
(2, 'footer', 'logos__footer.png', 'footer', 'BB', NULL, '2018-06-21 04:03:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `orden` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `nombre`, `descripcion`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'Home', 'AA', NULL, NULL),
(2, 'Empresa', 'Empresa', 'BB', NULL, NULL),
(3, 'Productos', 'Productos', 'CC', NULL, NULL),
(4, 'Servicios', 'Servicios', 'DD', NULL, NULL),
(5, 'Solicitud de presupuesto', 'Solicitud de presupuesto', 'EE', NULL, NULL),
(6, 'Contacto', 'Contacto', 'FF', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_29_213140_create_redes_table', 1),
(4, '2018_04_29_213158_create_metadatos_table', 1),
(5, '2018_04_29_213216_create_sliders_table', 1),
(6, '2018_04_29_213239_create_destacados_table', 1),
(7, '2018_04_29_213253_create_datos_table', 1),
(8, '2018_04_29_213310_create_logos_table', 1),
(9, '2018_04_29_213326_create_empresas_table', 1),
(10, '2018_04_29_213344_create_equipamientos_table', 1),
(11, '2018_04_29_213400_create_servicios_table', 1),
(12, '2018_04_29_213418_create_clientes_table', 1),
(13, '2018_04_29_213549_create_descargas_table', 1),
(14, '2018_04_29_213638_create_home_clientes_table', 1),
(15, '2018_05_10_185158_create_productos_table', 1),
(18, '2018_05_17_145758_create_contenidos_table', 1),
(19, '2018_05_17_145826_create_categorias_table', 1),
(20, '2018_05_17_151858_create_listas_table', 1),
(22, '2018_05_10_185258_create_cuentas_table', 3),
(27, '2018_05_10_185258_create_productos_table', 4),
(28, '2018_05_10_185258_create_galerias_table', 5),
(29, '2018_05_10_185258_create_novedades_table', 5),
(30, '2018_05_10_185258_create_calidades_table', 6),
(56, '2014_10_12_100000_create_banner_contenido_table', 8),
(57, '2014_10_12_100000_create_banner_iconos_table', 8),
(58, '2014_10_12_100000_create_categorias_compresores_table', 8),
(59, '2014_10_12_100000_create_categorias_luminarias_table', 8),
(60, '2014_10_12_100000_create_categorias_novedads_table', 8),
(61, '2014_10_12_100000_create_clientes_table', 8),
(62, '2014_10_12_100000_create_modelos_contenidos_table', 9),
(63, '2014_10_12_100000_create_modelos_galerias_table', 9),
(65, '2014_10_12_100000_create_publicacions_table', 10),
(66, '2014_10_12_100000_create_tiempo_table', 10),
(67, '2014_10_12_100000_create_productos_compresors_table', 11),
(68, '2014_10_12_100000_create_productos_luminarias_table', 11),
(69, '2014_10_12_100000_create_productos_novedads_table', 11),
(70, '2015_10_12_100000_create_productos_compresors_table', 12),
(71, '2015_10_12_100000_create_productos_luminarias_table', 12),
(72, '2015_10_12_100000_create_productos_novedads_table', 12),
(73, '2015_10_12_100000_create_galerias_novedads_table', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modal_realizados`
--

CREATE TABLE `modal_realizados` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen1` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `modal_realizados`
--

INSERT INTO `modal_realizados` (`id`, `imagen`, `imagen1`, `imagen2`, `titulo`, `subtitulo`, `texto`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'modalrealizados__prix006.jpg', 'modalrealizados__prix005.jpg', 'modalrealizados__prix004.jpg', 'Cercos Perimetrales', 'Máxima Seguridad', '<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#d41517\">TAREAS REALIZADAS</span></strong></p>\r\n\r\n<p>Nuestra especializaci&oacute;n nos ha convertido en expertos en este sistema de protecci&oacute;n y en l&iacute;deres en su desarrollo, garantizando la m&aacute;xima calidad y seguridad.</p>', NULL, 'AA', '2018-07-03 21:22:05', '2018-07-19 16:59:31'),
(2, 'modalrealizados__prix003.jpg', 'modalrealizados__prix002.jpg', 'modalrealizados__prix001.jpg', 'Cercos Perimetrales', 'Alambrado de Campos', '<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#d41517\">TAREAS REALIZADAS</span></strong></p>\r\n\r\n<p>Instalamos cercos para piletas que te dar&aacute;n toda la tranquilidad que necesitas para la SEGURIDAD de tus chiquitos sin tener que renunciar a la est&eacute;tica ni a la facilidad de acceso a tu PILETA.</p>\r\n\r\n<p>Nuestra especializaci&oacute;n nos ha convertido en expertos en este sistema de protecci&oacute;n y en l&iacute;deres en su desarrollo, garantizando la m&aacute;xima calidad y seguridad.</p>', NULL, 'BB', '2018-07-03 21:22:44', '2018-07-19 16:59:14'),
(3, 'modalrealizados__prix010.jpg', 'modalrealizados__prix009.jpg', NULL, 'Tranquera', 'Quebracho Colorado Standard', '<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#d41517\">TAREAS REALIZADAS</span></strong></p>\r\n\r\n<p>Instalamos cercos para piletas que te dar&aacute;n toda la tranquilidad que necesitas para la SEGURIDAD de tus chiquitos sin tener que renunciar a la est&eacute;tica ni a la facilidad de acceso a tu PILETA.</p>\r\n\r\n<p>Nuestra especializaci&oacute;n nos ha convertido en expertos en este sistema de protecci&oacute;n y en l&iacute;deres en su desarrollo, garantizando la m&aacute;xima calidad y seguridad.</p>', NULL, 'CC', '2018-07-03 21:23:32', '2018-07-19 17:00:34'),
(4, 'modalrealizados__prix007.jpg', 'modalrealizados__prix008.jpg', NULL, 'Portones de Caño', 'Instalación en Barrios Privados', '<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"color:#d41517\">TAREAS REALIZADAS</span></strong></p>\r\n\r\n<p>Nuestra especializaci&oacute;n nos ha convertido en expertos en este sistema de protecci&oacute;n y en l&iacute;deres en su desarrollo, garantizando la m&aacute;xima calidad y seguridad.</p>', NULL, 'DD', '2018-07-03 21:23:55', '2018-07-19 17:01:12'),
(5, 'modalrealizados__Malla-Hrcules.jpg', NULL, NULL, 'Malla Hércules', 'Protección a piletas', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>TAREAS REALIZADAS</strong></span></p>\r\n\r\n<p>Instalamos cercos para piletas que te dar&aacute;n toda la tranquilidad que necesitas para la SEGURIDAD de tus chiquitos sin tener que renunciar a la est&eacute;tica ni a la facilidad de acceso a tu PILETA.</p>\r\n\r\n<p>Nuestra especializaci&oacute;n nos ha convertido en expertos en este sistema de protecci&oacute;n y en l&iacute;deres en su desarrollo, garantizando la m&aacute;xima calidad y seguridad.</p>', NULL, 'ee', '2018-07-19 17:04:31', '2018-07-19 17:04:31'),
(6, 'modalrealizados__puas2.jpg', NULL, NULL, 'Alambre de púas', 'Seguridad y Tranquilidad de la mejor calidad', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\"><strong>TAREAS REALIZADAS</strong></span></p>\r\n\r\n<p>Nuestra especializaci&oacute;n nos ha convertido en expertos en este sistema de protecci&oacute;n y en l&iacute;deres en su desarrollo, garantizando la m&aacute;xima calidad y seguridad.</p>', NULL, 'ff', '2018-07-19 17:08:59', '2018-07-19 17:08:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos_contenidos`
--

CREATE TABLE `modelos_contenidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `seccion` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `modelos_contenidos`
--

INSERT INTO `modelos_contenidos` (`id`, `titulo`, `texto`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'Modelos para Fundición', '<p>A partir de los datos suministrados por el cliente (en formato CAD 2D CAD 3D, planos, piezas propias existentes o prototipos) nuestra oficina t&eacute;cnica realiza un estudio de viabilidad y adaptaci&oacute;n para fundici&oacute;n, de acuerdo con las indicaciones y criterios de las fundiciones y el cliente final, detectando inconvenientes y proponiendo posibles mejoras. S&oacute;lo entonces comienza el plan de producci&oacute;n, empleando la metodolog&iacute;a necesaria para garantizar la calidad y plazo de entrega exigido, con controles de verificaci&oacute;n intermedia propios de MEGAMODEL S.A. y en algunos casos del cliente</p>', 1, NULL, '2018-06-26 18:39:37'),
(2, 'Mecanizado de Piezas', 'Textos', 2, NULL, NULL),
(3, 'Indomatrix Energía', 'Textos', 3, NULL, NULL),
(4, 'Calibres de Control', 'Textos', 4, NULL, NULL),
(5, 'Mecanizados', 'Textos', 5, NULL, NULL),
(6, 'MATRICERÍA', 'Textos', 6, NULL, NULL),
(7, 'Servicios de Fundición', 'Textos', 7, NULL, NULL),
(8, 'Epoxies / Composites', 'Textos', 8, NULL, NULL),
(9, 'Ingeniería', 'Textos', 9, NULL, NULL),
(10, 'Desarrollo de Ideas', 'Textos', 10, NULL, NULL),
(11, 'Máquinas', 'Textos', 11, NULL, NULL),
(12, 'Compresores Airdin', 'Textos', 12, NULL, NULL),
(13, 'Minería', 'Textos', 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos_galerias`
--

CREATE TABLE `modelos_galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `seccion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `modelos_galerias`
--

INSERT INTO `modelos_galerias` (`id`, `imagen`, `titulo`, `orden`, `seccion`, `created_at`, `updated_at`) VALUES
(6, 'modelogaleria__1.jpg', '<p>ESPECIALISTAS EN V&Aacute;LVULAS, BOMBAS E IMPULSORES</p>', 'AA', '1', '2018-06-26 18:53:15', '2018-06-26 18:53:15'),
(7, 'modelogaleria__2.jpg', '<p>MODELO PARA CARTER DE TRACTOR</p>', 'BB', '1', '2018-06-26 18:53:24', '2018-06-26 18:53:24'),
(8, 'modelogaleria__3.jpg', '<p>MODELOS DE ALUMINIO</p>', 'CC', '1', '2018-06-26 18:53:31', '2018-06-26 18:53:31'),
(9, 'modelogaleria__4.jpg', '<p>MODELO MECANIZADO CNC PARA MATRIZ DE EPS</p>', 'DD', '1', '2018-06-26 18:53:38', '2018-06-26 18:53:38'),
(10, 'modelogaleria__5.jpg', '<p>MODELOS PARA ESFERAS &nbsp;CON MU&Ntilde;ON</p>', 'EE', '1', '2018-06-26 18:53:45', '2018-06-26 18:53:45'),
(11, 'modelogaleria__6.jpg', '<p>MODELOS DE MADERA</p>', 'FF', '1', '2018-06-26 18:53:56', '2018-06-26 18:53:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `breve` text COLLATE utf8_unicode_ci NOT NULL,
  `resena` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` text COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `pdf` text COLLATE utf8_unicode_ci NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `imagen`, `titulo`, `breve`, `resena`, `fecha`, `descripcion`, `pdf`, `id_categoria`, `created_at`, `updated_at`) VALUES
(1, '1_novedad.png', 'Catálogo de productos 2018', '<p>Ya est&aacute; disponible el cat&aacute;logo actualizado de productos. Puede consultarlo o descargarlo a continuaci&oacute;n.</p>', NULL, '23/04/18', '<p>Ya est&aacute; disponible el cat&aacute;logo actualizado de productos. Puede consultarlo o descargarlo a continuaci&oacute;n.</p>', '1_archivo.pdf', 1, '2018-05-30 20:05:14', '2018-06-04 17:11:39'),
(2, '2_novedad.png', 'Servicio de Calidad y Excelencia', '<p>Fabricantes de una amplia gama de Bulones, Tornillos y Tuercas especiales y est&aacute;ndar. Utilizando normas internacionales.</p>', NULL, '12/02/18', '<p>Fabricantes de una amplia gama de Bulones, Tornillos y Tuercas especiales y est&aacute;ndar. Utilizando normas internacionales.</p>', '2_archivo.pdf', 3, '2018-05-30 20:05:14', '2018-06-05 21:51:36'),
(3, '3_novedad.png', 'Recorrido por la historia', '<p>La llegada de tecnologia moderna conduce a nuestra empresa convirtiendo la planta en productora de &quot;TODO TIPO DE TORNILLERIA&quot;.</p>', NULL, '26/03/18', '<p>La llegada de tecnologia moderna conduce a nuestra empresa convirtiendo la planta en productora de &quot;TODO TIPO DE TORNILLERIA&quot;.</p>', '3_archivo.pdf', 2, '2018-05-30 20:05:14', '2018-06-05 22:07:29'),
(4, '4_4_novedad.png', 'Nuevas línea de fabricación', '<p>Radistor S.A. ampl&iacute;a su planta industrial. Incorporando mejor tecnolog&iacute;a de &uacute;ltima generaci&oacute;n. Ingres&aacute; para leer la nota completa.</p>', NULL, '11/03/18', '<p>Radistor S.A. ampl&iacute;a su planta industrial. Incorporando mejor tecnolog&iacute;a de &uacute;ltima generaci&oacute;n. Ingres&aacute; para leer la nota completa.</p>', '4_7_6_1_producto1.jpg', 3, '2018-05-30 20:05:14', '2018-06-04 17:10:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci NOT NULL,
  `breve` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resena` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `breve`, `resena`, `texto1`, `texto2`, `pdf`, `imagen`, `imagen1`, `imagen2`, `id_categoria`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Común', '<p><span style=\"color:#9a9a9a\">Ideal para ser utilizado en hilados de algod&oacute;n 100% y art&iacute;culos pesados como guardapolvos</span></p>', NULL, NULL, '', 'ficha.pdf', '1_imagen1.jpg', NULL, NULL, 1, 'AA', '2018-06-04 17:56:00', '2018-06-18 03:16:56'),
(2, 'A la vista', '<p><span style=\"color:#9a9a9a\">Ideal para ser utilizado en hilados de algodón 100% por la excelente película que forma en el encolado</span></p>', NULL, NULL, '', 'ficha.pdf', '2_imagen2.jpg', NULL, NULL, 1, 'BB', '2018-06-04 17:56:00', '2018-06-18 03:16:38'),
(3, 'Portante Chico', '<p><span style=\"color:#9a9a9a\">Se recomienda especialmente para aquellos artículos de títulos \r\nmedios a finos</span></p>', NULL, NULL, '', 'ficha.pdf', '3_1_imagen1.jpg', '3_1_imagen2.jpg', '3_1_imagen3.jpg', 1, 'CC', '2018-06-04 17:56:00', '2018-06-18 03:16:23'),
(4, 'Portante Grande', '<p><span style=\"color:#9a9a9a\">Ideal para ser utilizado en hilados de algodón 100% tales como toallas y rizo de toalla</span></p>', NULL, NULL, '', 'ficha.pdf', '4_imagen4.jpg', NULL, NULL, 1, 'DD', '2018-06-04 17:56:00', '2018-06-18 03:12:48'),
(5, 'Ladrillo 12 X 25 X 38', '<p><span style=\"color:#9a9a9a\">Polímero vinílico especialmente ideado para el encolado en la industria textil</span></p>', NULL, NULL, '', 'ficha.pdf', '5_imagen5.jpg', NULL, NULL, 1, 'EE', '2018-06-04 17:56:00', '2018-06-18 03:13:28'),
(6, 'Huecos 8 X 18 X 33', NULL, NULL, NULL, NULL, NULL, '6_imagen6.jpg', NULL, NULL, NULL, 'FF', '2018-06-18 03:14:42', '2018-06-18 03:14:42'),
(7, 'Huecos 12 X 18 X 33', NULL, NULL, NULL, NULL, NULL, '7_imagen7.jpg', NULL, NULL, NULL, 'GG', '2018-06-18 03:15:34', '2018-06-18 03:15:34'),
(8, 'Huecos 18 X 18 X 33', NULL, NULL, NULL, NULL, NULL, '8_imagen8.jpg', NULL, NULL, NULL, 'HH', '2018-06-18 03:16:01', '2018-06-18 03:16:01'),
(9, 'titulo', NULL, NULL, '<p>texto</p>', NULL, NULL, '9_black.jpg', '9_black.jpg', '9_black.jpg', NULL, 'aa', '2018-06-20 05:36:55', '2018-06-20 05:36:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_alambrados`
--

CREATE TABLE `productos_alambrados` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen1` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto1` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `ficha` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `seccion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos_alambrados`
--

INSERT INTO `productos_alambrados` (`id`, `imagen`, `imagen1`, `imagen2`, `titulo`, `texto`, `texto1`, `ficha`, `ruta`, `orden`, `seccion`, `created_at`, `updated_at`) VALUES
(2, 'productoalambrados__Alambrado-Romboidal.jpg', 'productoalambrados__Alambrado-Romboidalb.jpg', 'productoalambrados__Alambrado-Romboidalc.jpg', 'Alambrado Romboidal', '<p><span style=\"color:#444444\">Tejido econ&oacute;mico romboidal con rombo de varias medidas de di&aacute;metro Un tejido ideal para cercos de obra o temporales. Ya que ofrece una proteccion y delimitacion a un precio muy conveniente, especial para un uso de pocos meses.</span></p>', '<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<caption>\r\n	<div style=\"background:#2a4682; color:white; padding:2px\">\r\n	<p style=\"text-align:left\">&nbsp; &nbsp; &nbsp; MODELOS</p>\r\n	</div>\r\n	</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\"><strong><span style=\"color:#d21a21\">Di&aacute;metro</span></strong></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\"><strong>1,93mm - Calibre 14</strong></span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\"><strong>2,20mm - Calibre 13</strong></span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\"><strong>2,50mm - Calibre 12</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">3&nbsp;</span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">x</span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">x</span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">x</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">2</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">x</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">2</span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">x</span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">x</span></td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">x</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">1</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">x</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 'bb', '1', '2018-07-04 15:14:44', '2018-07-19 16:27:57'),
(3, 'productoalambrados__Malla-Cuadrada-De--Alambre-X-1mt-De-Alto.jpg', '', '', 'Malla Cuadrada De Alambre x 1mt De Alto', '<p>Somos una Empresa dedicada a la Venta e Instalaci&oacute;n de Alambrados Perimetrales y Rurales, Cercos, Puertas y Portones. Ofrecemos Nuestros Servicios a Particulares, Industrias, Entidades Deportivas, Barrios Privados y Countries. Brindamos Calidad, Seguridad y Garant&iacute;a de Todos los Trabajos que Realizamos.</p>', NULL, NULL, NULL, 'cc', '1', '2018-07-04 15:14:44', '2018-07-19 16:30:51'),
(4, 'productoalambrados__Alambre Liso Galvanizado.jpg', '', '', 'Alambre Liso Galvanizado', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'dd', '1', '2018-07-04 15:14:44', '2018-07-19 16:31:53'),
(5, 'productoalambrados__Alambre-San-Martin--Acindar-17-15.jpg', '', '', 'Alambre San Martin Acindar 17/15', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'ee', '1', '2018-07-04 15:14:44', '2018-07-19 16:32:49'),
(6, 'productoalambrados__Esparragos.jpg', '', '', 'Espárragos', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'ff', '1', '2018-07-04 15:14:44', '2018-07-19 16:33:11'),
(7, 'productoalambrados__puas.jpg', '', '', 'Alambre de púas', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'gg', '1', '2018-07-04 15:14:44', '2018-07-19 16:35:22'),
(8, 'productoalambrados__concertinas.jpg', '', '', 'Concertinas', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'hh', '1', '2018-07-04 15:14:44', '2018-07-19 16:35:59'),
(9, 'productoalambrados__Planchuelas-Galvanizadas.jpg', '', '', 'Planchuelas Galvanizadas', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'ii', '1', '2018-07-04 15:14:44', '2018-07-19 16:36:19'),
(10, 'productoalambrados__Torniquetes-Al-Aire.jpg', '', '', 'Torniquetes al Aire', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'jj', '1', '2018-07-04 15:14:44', '2018-07-19 16:36:53'),
(11, 'productoalambrados__Torniquete-Doble-Para-Campo.jpg', '', '', 'Torniquete Doble para Campo', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'kk', '1', '2018-07-04 15:14:44', '2018-07-19 16:37:18'),
(12, 'productoalambrados__Prolongaciones-Palomitas.jpg', '', '', 'Grampa para pared (Palomitas)', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'll', '1', '2018-07-04 15:14:44', '2018-08-07 20:04:53'),
(13, 'productoalambrados___Ganchos--Tensores-Tiralambres.jpg', '', '', 'Ganchos / Tensores Tiralambres', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'mm', '1', '2018-07-04 15:14:44', '2018-07-19 16:38:20'),
(14, 'productoalambrados__Malla-Cuadrada-De--Alambre-X-1mt-De-Alto.jpg', '', '', 'Alambrado para Gallinero', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', NULL, NULL, NULL, 'nn', '1', '2018-07-04 15:14:44', '2018-07-19 16:38:37'),
(16, 'productoalambrados__b2.jpg', NULL, NULL, 'Standard Reforzadas Caño 2” · Con Tejido', '<p>Puertas Y Portones Standard Reforzadas Ca&ntilde;o 2&quot; Con Tejido</p>', NULL, NULL, NULL, 'bb', '2', '2018-07-04 16:44:39', '2018-07-19 15:57:42'),
(17, 'productoalambrados__Tranquera-en-Quebracho-Colorado-Standard.jpg', NULL, NULL, 'Tranquera en Quebracho Colorado Standard', '<p>Tranquera en Quebracho Colorado Standard</p>\r\n\r\n<p>Somos una Empresa dedicada a la Venta e Instalaci&oacute;n de Alambrados Perimetrales y Rurales, Cercos, Puertas y Portones. Ofrecemos Nuestros Servicios a Particulares, Industrias, Entidades Deportivas, Barrios Privados y Countries. Brindamos Calidad, Seguridad y Garant&iacute;a de Todos los Trabajos que Realizamos.</p>', NULL, NULL, NULL, 'CC', '2', '2018-07-04 16:44:50', '2018-07-19 16:00:01'),
(18, 'productoalambrados__Puerta-En-Quebracho--Colorado-Standard.jpg', NULL, NULL, 'Puerta en Quebracho Colorado Standard', '<p>Somos una Empresa dedicada a la Venta e Instalaci&oacute;n de Alambrados Perimetrales y Rurales, Cercos, Puertas y Portones. Ofrecemos Nuestros Servicios a Particulares, Industrias, Entidades Deportivas, Barrios Privados y Countries. Brindamos Calidad, Seguridad y Garant&iacute;a de Todos los Trabajos que Realizamos.</p>', NULL, NULL, NULL, 'DD', '2', '2018-07-04 16:45:07', '2018-07-19 16:00:43'),
(19, 'productoalambrados__Porton-De-Quebracho-Colorado-Standard-.jpg', NULL, NULL, 'Portón de Quebracho Colorado Standard', '<p>Somos una Empresa dedicada a la Venta e Instalaci&oacute;n de Alambrados Perimetrales y Rurales, Cercos, Puertas y Portones. Ofrecemos Nuestros Servicios a Particulares, Industrias, Entidades Deportivas, Barrios Privados y Countries. Brindamos Calidad, Seguridad y Garant&iacute;a de Todos los Trabajos que Realizamos.</p>', NULL, NULL, NULL, 'EE', '2', '2018-07-04 16:54:25', '2018-07-19 16:01:35'),
(20, 'productoalambrados__Standard-Reforzadas-Cano2-Con-Tejido.jpg', NULL, NULL, 'Portones de caño', '<p>Somos una Empresa dedicada a la Venta e Instalaci&oacute;n de Alambrados Perimetrales y Rurales, Cercos, Puertas y Portones. Ofrecemos Nuestros Servicios a Particulares, Industrias, Entidades Deportivas, Barrios Privados y Countries. Brindamos Calidad, Seguridad y Garant&iacute;a de Todos los Trabajos que Realizamos.</p>', NULL, NULL, NULL, 'FF', '2', '2018-07-04 16:54:40', '2018-07-19 16:01:51'),
(21, 'productoalambrados__quebrachoblanco.jpg', NULL, NULL, 'Quebracho Blanco', '<p>Poste de quebracho blanco.</p>\r\n\r\n<p>El quebracho blanco es una madera dura lo cual hace de su compra una inversi&oacute;n a largo plazo. Seg&uacute;n normas IRAM, enterrado tienen una duraci&oacute;n aproximada de 18 a&ntilde;os.</p>', '<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<caption>\r\n	<div style=\"background:#2a4682; color:white; padding:2px\">\r\n	<p style=\"text-align:left\">&nbsp; &nbsp; &nbsp;ALTURAS</p>\r\n	</div>\r\n	</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><strong><span style=\"color:#d21a21\">Quebracho Blanco</span></strong></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">1 m</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">1,50 m</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">1,80 m</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">2 m</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 'aa', '3', '2018-07-06 21:33:49', '2018-07-19 16:49:15'),
(23, 'productoalambrados__pinches.jpg', NULL, NULL, 'Pinches', '<p>Excelente sistema de seguridad perimetral, apto para colocar sobre muros, rejas, portones, techos y medianeras en general. Se puede abulonar facilmente o soldar.</p>', NULL, NULL, NULL, 'bb', '4', '2018-07-19 15:40:43', '2018-07-19 15:40:43'),
(24, 'productoalambrados__mensulas.jpg', NULL, NULL, 'Ménsulas', '<p>Mensulas para Alambre de&nbsp;P&uacute;as, para colocar sobre muro, o para amurar alambre de concertina</p>\r\n\r\n<p>Dependiendo el tipo de alambre a colocar y el muro, hay 3 tipos de forma de m&eacute;nsula:</p>\r\n\r\n<ul>\r\n	<li>Forma de Y</li>\r\n	<li>Forma de V</li>\r\n	<li>Forma de V con base</li>\r\n</ul>\r\n\r\n<p>Las m&eacute;nsulas se amuran con tirafondos y quedan totalmente firmes</p>', NULL, NULL, NULL, 'AA', '4', '2018-07-19 15:40:53', '2018-07-19 15:40:53'),
(25, 'productoalambrados__media-sombra-verde.jpg', NULL, NULL, 'Rafia - Media Sombra Verde (Cubre Cerco)', '<p>&nbsp;</p>\r\n\r\n<p>Producto&nbsp;fabricado&nbsp;con polietileno virgen de alta densidad. Alta durabilidad, resistencia y de la mejor calidad. Su tejido de punto por urdimbre evita el desarme cuando se cortan las cintas, asegurando mayor resistencia, durabilidad y una sombra uniforme sobre el &aacute;rea cubierta, y la calidad de sus materias primas y estabilizantes anti UV garantizan la durabilidad del producto.</p>', NULL, NULL, NULL, 'cc', '4', '2018-07-19 15:46:48', '2018-07-19 15:46:48'),
(26, 'productoalambrados___Puertas-Y-Portones-Economicos-Standard-Cano-Redondo-1-Con-Tejido-Romboidal.jpg', NULL, NULL, 'Económicos Standard Caño Redondo 1\" con Tejido Romboidal', '<p>Puertas Y Portones Economicos Standard Ca&ntilde;o Redondo 1&quot; Con Tejido Romboidal</p>', NULL, NULL, NULL, 'aa', '2', '2018-07-19 15:56:40', '2018-07-19 15:56:40'),
(27, 'productoalambrados__malla-hercules.jpg', NULL, NULL, 'Malla Hércules · Acindar Practico · Panel Rígido', '<p>Este tipo de malla est&aacute; formado por alambres superpuestos, en formas cuadradas o rectangulares, que al ir soldados no sufren deformaci&oacute;n del cuadrante, por lo que ofrecen un acabado m&aacute;s r&iacute;gido.</p>\r\n<p>Vallado de alta resistencia, adecuado para proteger escuelas y patios de recreo, viviendas unifamiliares, jardines, parcelas, urbanizaciones, pol&iacute;gonos industriales, instalaciones deportivas y en general aquellos recintos que requieran alta seguridad sin menoscabar la est&eacute;tica resultante.</p>', NULL, NULL, NULL, 'aa', '1', '2018-07-19 16:35:02', '2018-07-19 16:35:02'),
(28, 'productoalambrados__quebrachocolorado.jpg', NULL, NULL, 'Quebracho Colorado', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', '<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<caption>\r\n	<div style=\"background:#2a4682; color:white; padding:2px\">\r\n	<p style=\"text-align:left\">&nbsp; &nbsp; &nbsp;ALTURAS</p>\r\n	</div>\r\n	</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><strong><span style=\"color:#d21a21\">Quebracho Colorado</span></strong></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">1 m</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">1,50 m</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">1,80 m</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">2 m</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 'bb', '3', '2018-07-19 16:50:46', '2018-07-19 16:50:46'),
(29, 'productoalambrados__poste-hormig-recto.jpg', NULL, NULL, 'Hormigón Recto', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', '<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<caption>\r\n	<div style=\"background:#2a4682; color:white; padding:2px\">\r\n	<p style=\"text-align:left\">&nbsp; &nbsp; &nbsp;ALTURAS</p>\r\n	</div>\r\n	</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><strong><span style=\"color:#d21a21\">Hormig&oacute;n Recto</span></strong></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">1 m</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">1,50 m</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">1,80 m</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">2 m</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 'cc', '3', '2018-07-19 16:51:22', '2018-07-19 16:51:22'),
(30, 'productoalambrados__poste-homri.jpg', NULL, NULL, 'Hormigón Olímpico', '<p>Proveemos de los mejores materiales y le damos la mejor atenci&oacute;n al cliente, porque su satisfacci&oacute;n realmente nos importa. Alambrados romboidales, postes de cemento, postes de madera, puertas y portones a la medida de su necesidad, y muchos productos m&aacute;s. Y por supuesto, el servicio de colocaci&oacute;n de alambrados perimetrales r&aacute;pido, eficaz y realizado por profesionales con vasta experiencia.</p>', '<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<caption>\r\n	<div style=\"background:#2a4682; color:white; padding:2px\">\r\n	<p style=\"text-align:left\">&nbsp; &nbsp; &nbsp;ALTURAS</p>\r\n	</div>\r\n	</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><strong><span style=\"color:#d21a21\">Hormig&oacute;n Ol&iacute;mpico Altura</span></strong></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\"><span style=\"color:#7f7f7f\">1,80 m</span></td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">2 m</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n			<td style=\"text-align:center\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, 'dd', '3', '2018-07-19 16:52:11', '2018-07-19 16:52:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_compresors`
--

CREATE TABLE `productos_compresors` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ficha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dibujo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dibujo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categorias_compresors` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos_compresors`
--

INSERT INTO `productos_compresors` (`id`, `imagen`, `imagen1`, `imagen2`, `titulo`, `texto`, `texto1`, `ficha`, `dibujo`, `dibujo1`, `ruta`, `orden`, `id_categorias_compresors`, `created_at`, `updated_at`) VALUES
(1, 'productocompresor__1.jpg', 'productocompresor__luminaria1.jpg', 'productocompresor__luminaria2.jpg', 'First Compresor', '<p><span style=\"font-size:16px\"><span style=\"color:#434242\"><strong>Detalles</strong></span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Iluminaci&oacute;n p&uacute;blica con la &uacute;ltima tecnolog&iacute;a en LED.</span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</span></span></p>', '<p><span style=\"font-size:16px\"><span style=\"color:#d2041a\"><strong>Caracter&iacute;sticas</strong></span></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Tensi&oacute;n de entrada: 90-270 VAC</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia de LED: 50 watts</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura de operaci&oacute;n: -40&deg;C / 50&deg;C</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Distribuci&oacute;n de luz: Haz sim&eacute;trico oval</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cuerpo principal y m&oacute;dulos de iluminaci&oacute;n fundidos en aluminio </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Acabado con pintura en polvo electrost&aacute;tica</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Color est&aacute;ndar: Blanco</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Refractor: Vidrio esf&eacute;rico convexo, distribuye de un modo homog&eacute;neo y aumenta la apertura de alcance del haz de luz </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Apertura superior del conexionado el&eacute;ctrico. Sellado mediante o&acute;ring de goma, cierre por tornillo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&oacute;dulos de iluminaci&oacute;n dirigibles </span></p>\r\n\r\n<p><span style=\"font-size:14px\">ujeci&oacute;n a ca&ntilde;os de &Oslash;60 y &Oslash;45 mediante cuatro tornillos prensa </span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Caracter&iacute;sticas Led:</span></strong></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Potencia: 50W</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Alimentaci&oacute;n: 30-36V</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Corriente: 1500mA</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Flujo Luminoso: 5000-5500Lm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura Color: 6000&deg;- 6500&deg;K</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vida Util: 50.000 Hs</span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Dibujo T&eacute;cnico</span></strong></span></p>', 'productocompresor__ficha.pdf', 'productocompresor__dibujo1.jpg', 'productocompresor__dibujo2.jpg', NULL, 'AA', 1, '2018-06-26 17:41:19', '2018-06-26 17:43:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_luminarias`
--

CREATE TABLE `productos_luminarias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ficha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dibujo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dibujo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categorias_luminarias` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos_luminarias`
--

INSERT INTO `productos_luminarias` (`id`, `imagen`, `imagen1`, `imagen2`, `titulo`, `texto`, `texto1`, `ficha`, `dibujo`, `dibujo1`, `ruta`, `orden`, `id_categorias_luminarias`, `created_at`, `updated_at`) VALUES
(1, 'productoluminaria__luminaria.jpg', 'productoluminaria__luminaria1.jpg', 'productoluminaria__luminaria2.jpg', 'SIMPLE', '<p><span style=\"font-size:16px\"><span style=\"color:#434242\"><strong>Detalles</strong></span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Iluminaci&oacute;n p&uacute;blica con la &uacute;ltima tecnolog&iacute;a en LED.</span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</span></span></p>', '<p><span style=\"font-size:16px\"><span style=\"color:#d2041a\"><strong>Caracter&iacute;sticas</strong></span></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Tensi&oacute;n de entrada: 90-270 VAC</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia de LED: 50 watts</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura de operaci&oacute;n: -40&deg;C / 50&deg;C</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Distribuci&oacute;n de luz: Haz sim&eacute;trico oval</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cuerpo principal y m&oacute;dulos de iluminaci&oacute;n fundidos en aluminio </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Acabado con pintura en polvo electrost&aacute;tica</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Color est&aacute;ndar: Blanco</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Refractor: Vidrio esf&eacute;rico convexo, distribuye de un modo homog&eacute;neo y aumenta la apertura de alcance del haz de luz </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Apertura superior del conexionado el&eacute;ctrico. Sellado mediante o&acute;ring de goma, cierre por tornillo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&oacute;dulos de iluminaci&oacute;n dirigibles </span></p>\r\n\r\n<p><span style=\"font-size:14px\">ujeci&oacute;n a ca&ntilde;os de &Oslash;60 y &Oslash;45 mediante cuatro tornillos prensa </span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Caracter&iacute;sticas Led:</span></strong></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Potencia: 50W</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Alimentaci&oacute;n: 30-36V</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Corriente: 1500mA</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Flujo Luminoso: 5000-5500Lm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura Color: 6000&deg;- 6500&deg;K</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vida Util: 50.000 Hs</span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Dibujo T&eacute;cnico</span></strong></span></p>', 'productoluminaria__ficha.pdf', 'productoluminaria__dibujo1.jpg', 'productoluminaria__dibujo2.jpg', NULL, 'AA', 4, '2018-06-26 16:16:59', '2018-06-26 16:20:33'),
(2, 'productoluminaria__luminaria.jpg', 'productoluminaria__luminaria1.jpg', 'productoluminaria__luminaria2.jpg', 'DOBLE', '<p><span style=\"font-size:16px\"><span style=\"color:#434242\"><strong>Detalles</strong></span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Iluminaci&oacute;n p&uacute;blica con la &uacute;ltima tecnolog&iacute;a en LED.</span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</span></span></p>', '<p><span style=\"font-size:16px\"><span style=\"color:#d2041a\"><strong>Caracter&iacute;sticas</strong></span></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Tensi&oacute;n de entrada: 90-270 VAC</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia de LED: 50 watts</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura de operaci&oacute;n: -40&deg;C / 50&deg;C</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Distribuci&oacute;n de luz: Haz sim&eacute;trico oval</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cuerpo principal y m&oacute;dulos de iluminaci&oacute;n fundidos en aluminio </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Acabado con pintura en polvo electrost&aacute;tica</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Color est&aacute;ndar: Blanco</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Refractor: Vidrio esf&eacute;rico convexo, distribuye de un modo homog&eacute;neo y aumenta la apertura de alcance del haz de luz </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Apertura superior del conexionado el&eacute;ctrico. Sellado mediante o&acute;ring de goma, cierre por tornillo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&oacute;dulos de iluminaci&oacute;n dirigibles </span></p>\r\n\r\n<p><span style=\"font-size:14px\">ujeci&oacute;n a ca&ntilde;os de &Oslash;60 y &Oslash;45 mediante cuatro tornillos prensa </span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Caracter&iacute;sticas Led:</span></strong></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Potencia: 50W</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Alimentaci&oacute;n: 30-36V</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Corriente: 1500mA</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Flujo Luminoso: 5000-5500Lm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura Color: 6000&deg;- 6500&deg;K</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vida Util: 50.000 Hs</span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Dibujo T&eacute;cnico</span></strong></span></p>', 'productoluminaria__ficha.pdf', 'productoluminaria__dibujo1.jpg', 'productoluminaria__dibujo2.jpg', NULL, 'BB', 4, '2018-06-26 16:16:59', '2018-06-26 16:20:33'),
(3, 'productoluminaria__luminaria.jpg', 'productoluminaria__luminaria1.jpg', 'productoluminaria__luminaria2.jpg', 'TRIPLE', '<p><span style=\"font-size:16px\"><span style=\"color:#434242\"><strong>Detalles</strong></span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Iluminaci&oacute;n p&uacute;blica con la &uacute;ltima tecnolog&iacute;a en LED.</span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</span></span></p>', '<p><span style=\"font-size:16px\"><span style=\"color:#d2041a\"><strong>Caracter&iacute;sticas</strong></span></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Tensi&oacute;n de entrada: 90-270 VAC</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia de LED: 50 watts</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura de operaci&oacute;n: -40&deg;C / 50&deg;C</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Distribuci&oacute;n de luz: Haz sim&eacute;trico oval</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cuerpo principal y m&oacute;dulos de iluminaci&oacute;n fundidos en aluminio </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Acabado con pintura en polvo electrost&aacute;tica</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Color est&aacute;ndar: Blanco</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Refractor: Vidrio esf&eacute;rico convexo, distribuye de un modo homog&eacute;neo y aumenta la apertura de alcance del haz de luz </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Apertura superior del conexionado el&eacute;ctrico. Sellado mediante o&acute;ring de goma, cierre por tornillo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&oacute;dulos de iluminaci&oacute;n dirigibles </span></p>\r\n\r\n<p><span style=\"font-size:14px\">ujeci&oacute;n a ca&ntilde;os de &Oslash;60 y &Oslash;45 mediante cuatro tornillos prensa </span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Caracter&iacute;sticas Led:</span></strong></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Potencia: 50W</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Alimentaci&oacute;n: 30-36V</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Corriente: 1500mA</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Flujo Luminoso: 5000-5500Lm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura Color: 6000&deg;- 6500&deg;K</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vida Util: 50.000 Hs</span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Dibujo T&eacute;cnico</span></strong></span></p>', 'productoluminaria__ficha.pdf', 'productoluminaria__dibujo1.jpg', 'productoluminaria__dibujo2.jpg', NULL, 'CC', 4, '2018-06-26 16:16:59', '2018-06-26 16:20:33'),
(4, 'productoluminaria__luminaria.jpg', 'productoluminaria__luminaria1.jpg', 'productoluminaria__luminaria2.jpg', 'CUADRÚPLE', '<p><span style=\"font-size:16px\"><span style=\"color:#434242\"><strong>Detalles</strong></span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Iluminaci&oacute;n p&uacute;blica con la &uacute;ltima tecnolog&iacute;a en LED.</span></span></p>\r\n\r\n<p><span style=\"color:#4c4c4c\"><span style=\"font-size:14px\">Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</span></span></p>', '<p><span style=\"font-size:16px\"><span style=\"color:#d2041a\"><strong>Caracter&iacute;sticas</strong></span></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Tensi&oacute;n de entrada: 90-270 VAC</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Potencia de LED: 50 watts</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura de operaci&oacute;n: -40&deg;C / 50&deg;C</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Distribuci&oacute;n de luz: Haz sim&eacute;trico oval</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Cuerpo principal y m&oacute;dulos de iluminaci&oacute;n fundidos en aluminio </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Acabado con pintura en polvo electrost&aacute;tica</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Color est&aacute;ndar: Blanco</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Refractor: Vidrio esf&eacute;rico convexo, distribuye de un modo homog&eacute;neo y aumenta la apertura de alcance del haz de luz </span></p>\r\n\r\n<p><span style=\"font-size:14px\">Apertura superior del conexionado el&eacute;ctrico. Sellado mediante o&acute;ring de goma, cierre por tornillo</span></p>\r\n\r\n<p><span style=\"font-size:14px\">M&oacute;dulos de iluminaci&oacute;n dirigibles </span></p>\r\n\r\n<p><span style=\"font-size:14px\">ujeci&oacute;n a ca&ntilde;os de &Oslash;60 y &Oslash;45 mediante cuatro tornillos prensa </span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Caracter&iacute;sticas Led:</span></strong></span></p>\r\n<br>\r\n<p><span style=\"font-size:14px\">Potencia: 50W</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Alimentaci&oacute;n: 30-36V</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Corriente: 1500mA</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Flujo Luminoso: 5000-5500Lm</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Temperatura Color: 6000&deg;- 6500&deg;K</span></p>\r\n\r\n<p><span style=\"font-size:14px\">Vida Util: 50.000 Hs</span></p>\r\n<br>\r\n<p><span style=\"font-size:16px\"><strong><span style=\"color:#d2041a\">Dibujo T&eacute;cnico</span></strong></span></p>', 'productoluminaria__ficha.pdf', 'productoluminaria__dibujo1.jpg', 'productoluminaria__dibujo2.jpg', NULL, 'DD', 4, '2018-06-26 16:16:59', '2018-06-26 16:20:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_novedads`
--

CREATE TABLE `productos_novedads` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `extracto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ficha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_categorias_novedads` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos_novedads`
--

INSERT INTO `productos_novedads` (`id`, `imagen`, `titulo`, `extracto`, `texto`, `ficha`, `fecha`, `orden`, `id_categorias_novedads`, `created_at`, `updated_at`) VALUES
(1, 'productonovedad__1.jpg', 'Exposición Indomatrix', '<p>Nos orgullese presentar nuestro cat&aacute;logo de productos y servicios. Nos especializamos en todas las &aacute;reas del proceso de manufacturing de un producto industrial.</p>', '<p>La mayor&iacute;a de los proyectos de iluminaci&oacute;n p&uacute;blica son demorados por falta del tendido de la red el&eacute;ctrica.</p>\r\n\r\n<p>Hoy es un hecho tener iluminaci&oacute;n p&uacute;blica de manera r&aacute;pida, duradera y eficiente, sin depender del tendido de la red el&eacute;ctrica.</p>\r\n\r\n<p>Analizamos proyectos para:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Municipalidades</p>\r\n\r\n<p>Barrios cerrados</p>\r\n\r\n<p>Countries</p>\r\n\r\n<p>Chacras</p>\r\n\r\n<p>Autopistas</p>\r\n\r\n<p>Estancias</p>\r\n\r\n<p>Otras zonas que requieran iluminaci&oacute;n publica sin necesidad de depender del tendido de la red el&eacute;ctrica</p>', 'productonovedad__ficha.pdf', '23/05/18', 'AA', 1, '2018-06-26 20:57:17', '2018-06-26 20:57:17'),
(2, 'productonovedad__2.jpg', 'Depósito renovado', '<p>Realizamos la ampliaci&oacute;n de nuestro galp&oacute;n. Contin&uacute;a &nbsp;nuestra expansi&oacute;n manteniendo la excelencia en nuestra cadena. Ingres&aacute; para leer la nota completa.</p>', '<p>Realizamos la ampliaci&oacute;n de nuestro galp&oacute;n. Contin&uacute;a &nbsp;nuestra expansi&oacute;n manteniendo la excelencia en nuestra cadena. Ingres&aacute; para leer la nota completa.</p>\r\n\r\n<p>Realizamos la ampliaci&oacute;n de nuestro galp&oacute;n. Contin&uacute;a &nbsp;nuestra expansi&oacute;n manteniendo la excelencia en nuestra cadena. Ingres&aacute; para leer la nota completa.</p>\r\n\r\n<p>Realizamos la ampliaci&oacute;n de nuestro galp&oacute;n. Contin&uacute;a &nbsp;nuestra expansi&oacute;n manteniendo la excelencia en nuestra cadena. Ingres&aacute; para leer la nota completa.</p>', 'productonovedad__ficha.pdf', '23/05/18', 'BB', 2, '2018-06-26 20:59:41', '2018-06-26 21:02:27'),
(3, 'productonovedad__3.jpg', 'Mobiliario Urbano', '<p>Presentamos uno de los proyectos m&aacute;s importantes en nuestra empresa. Nuestra misi&oacute;n es satisfacer las necesidades de nuestros clientes.</p>', '<p>Presentamos uno de los proyectos m&aacute;s importantes en nuestra empresa. Nuestra misi&oacute;n es satisfacer las necesidades de nuestros clientes.</p>\r\n\r\n<p>Presentamos uno de los proyectos m&aacute;s importantes en nuestra empresa. Nuestra misi&oacute;n es satisfacer las necesidades de nuestros clientes.</p>\r\n\r\n<p>Presentamos uno de los proyectos m&aacute;s importantes en nuestra empresa. Nuestra misi&oacute;n es satisfacer las necesidades de nuestros clientes.</p>', 'productonovedad__ficha.pdf', '25/04/18', 'CC', 3, '2018-06-26 21:00:18', '2018-06-26 21:03:06'),
(4, 'productonovedad__4.jpg', 'Iluminación LED', '<p>Calidad y versatilidad en tecnolog&iacute;a LED de ultima generaci&oacute;n. Aprovechamos todos sus beneficios para entregar un producto de excelencia.</p>', '<p>Calidad y versatilidad en tecnolog&iacute;a LED de ultima generaci&oacute;n. Aprovechamos todos sus beneficios para entregar un producto de excelencia.</p>\r\n\r\n<p>Calidad y versatilidad en tecnolog&iacute;a LED de ultima generaci&oacute;n. Aprovechamos todos sus beneficios para entregar un producto de excelencia.</p>\r\n\r\n<p>Calidad y versatilidad en tecnolog&iacute;a LED de ultima generaci&oacute;n. Aprovechamos todos sus beneficios para entregar un producto de excelencia.</p>', 'productonovedad__ficha.pdf', '12/02/18', 'DD', 3, '2018-06-26 21:00:44', '2018-06-26 21:03:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacions`
--

CREATE TABLE `publicacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `publicacions`
--

INSERT INTO `publicacions` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Visión', '<p>&middot; Constituir una cartera comercial diversificada en n&uacute;mero de clientes y dirigida a diferentes sectores para asegurar la estabilidad.</p>\r\n\r\n<p>&middot; Consolidar las relaciones con nuevos clientes mediante b&uacute;squeda activa y conseguir el reconocimiento de sus profesionales.</p>\r\n\r\n<p>&middot; Mantener un crecimiento constante y sostenido.</p>\r\n\r\n<p>&middot; Hacer que la mejora de calidad y la innovaci&oacute;n impregnen nuestro d&iacute;a a d&iacute;a.</p>\r\n\r\n<p>&middot; Encontrar soluciones t&eacute;cnicas para el sector industrial y sus procesos productivos, de acuerdo con las nuevas tecnolog&iacute;as y materiales.</p>', 'AA', '2018-06-26 14:38:20', '2018-06-26 14:38:20'),
(2, NULL, 'Valores', '<p>&middot; Orientaci&oacute;n al cliente y al resultado: para garantizar la permanencia de la compa&ntilde;&iacute;a, del servicio futuro y la estabilidad de los colaboradores.</p>\r\n\r\n<p>&middot; Potenciaci&oacute;n del capital humano: el principal recurso de INDOMATRIX son las personas, su experiencia y sus conocimientos profesionales y t&eacute;cnicos.</p>\r\n\r\n<p>&middot; Satisfacci&oacute;n del cliente: es garant&iacute;a de &eacute;xito.</p>\r\n\r\n<p>&middot; Apuesta por la innovaci&oacute;n: tanto la tecnol&oacute;gica como la de gesti&oacute;n.</p>\r\n\r\n<p>&middot; La calidad: viene determinada por todos los integrantes del equipo, internos y externos, y est&aacute; impulsada por la filosof&iacute;a de a&ntilde;adir valor a los clientes.</p>\r\n\r\n<p>&middot; Trabajo en equipo: comunicaci&oacute;n, disponibilidad, cooperaci&oacute;n y esfuerzo.</p>', 'BB', '2018-06-26 14:38:50', '2018-06-26 14:39:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes`
--

CREATE TABLE `redes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `redes`
--

INSERT INTO `redes` (`id`, `nombre`, `imagen`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'redes__facebook.png', 'https://www.facebook.com/', 'AA', '2018-06-21 03:19:26', '2018-06-21 03:19:26'),
(2, 'Twitter', 'redes__twitter.png', 'https://twitter.com/', 'BB', '2018-06-21 03:20:02', '2018-06-21 03:20:02'),
(3, 'Gmail', 'redes__gmail.png', 'https://www.gmail.com/', 'CC', '2018-06-21 03:20:27', '2018-06-21 03:20:27'),
(4, 'Instagram', 'redes__instagram.png', 'https://www.instagram.com/', 'DD', '2018-06-21 03:21:10', '2018-06-21 03:21:10'),
(5, 'YouTube', 'redes__youtube.png', 'https://www.youtube.com/', 'EE', '2018-06-21 03:21:38', '2018-06-21 03:21:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serv_contenido`
--

CREATE TABLE `serv_contenido` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `serv_contenido`
--

INSERT INTO `serv_contenido` (`id`, `imagen`, `titulo`, `texto`, `ruta`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Nuestros Servicios', '<p>Somos una Empresa dedicada a la Venta e Instalaci&oacute;n de Alambrados Perimetrales y Rurales, Cercos, Puertas y Portones. Ofrecemos Nuestros Servicios a Particulares, Industrias, Entidades Deportivas, Barrios Privados y Countries. Brindamos Calidad, Seguridad y Garant&iacute;a de Todos los Trabajos que Realizamos.</p>', NULL, '2018-07-03 15:43:44', '2018-07-03 15:49:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serv_destacados`
--

CREATE TABLE `serv_destacados` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `seccion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `serv_destacados`
--

INSERT INTO `serv_destacados` (`id`, `imagen`, `titulo`, `texto`, `ruta`, `orden`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 'servdestacados__1.jpg', 'Atención Personalizada', '<p>Con personal altamente capacitado, le ofrecemos a nuestros clientes una atenci&oacute;n exclusiva y personalizada</p>', NULL, 'AA', NULL, '2018-07-03 15:55:48', '2018-07-03 15:55:48'),
(2, 'servdestacados__2.jpg', 'Colocación y Mano de Obra', '<p>Adem&aacute;s de los mejores materiales, contamos con mano de obra especializada para la colocaci&oacute;n de cercos</p>', NULL, 'BB', NULL, '2018-07-03 15:56:02', '2018-07-03 15:56:02'),
(3, 'servdestacados__3.jpg', 'Asesoramiento Permanente', '<p>En Alambrados Prix le brindamos asesoramiento en todo el proceso de la compra, para guiarlo a la mejor soluci&oacute;n en su b&uacute;squeda</p>', NULL, 'CC', NULL, '2018-07-03 15:56:18', '2018-07-03 15:56:18'),
(4, 'servdestacados__s4.jpg', 'Calidad en Materiales', '<p>Proveemos de los mejores materiales: Alambrados romboidales, postes, puertas y portones a su medida</p>', NULL, 'DD', NULL, '2018-07-03 15:56:35', '2018-07-19 16:53:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serv_items`
--

CREATE TABLE `serv_items` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `ruta` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `serv_items`
--

INSERT INTO `serv_items` (`id`, `imagen`, `titulo`, `texto`, `ruta`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'servitems__1.jpg', 'Cercos Perimetrales', '<p>Instalamos cercos perimetrales en todo el pa&iacute;s. Para cualquier prop&oacute;sito y necesidad. Ya sea en cercos perimetrales para campo, alambrado industrial, alambrados para predios deportivos, para el hogar, para su terreno o cualquier otra necesidad.</p>', NULL, 'AA', '2018-07-03 16:01:17', '2018-07-03 16:01:17'),
(2, 'servitems__2.jpg', 'Cercos para Piletas', '<p>Instalamos cercos para piletas que te dar&aacute;n toda la tranquilidad que necesitas para la SEGURIDAD de tus chiquitos sin tener que renunciar a la est&eacute;tica ni a la facilidad de acceso a tu PILETA.</p>\r\n\r\n<p>Nuestra especializaci&oacute;n nos ha convertido en expertos en este sistema de protecci&oacute;n y en l&iacute;deres en su desarrollo, garantizando la m&aacute;xima calidad y seguridad.</p>', NULL, 'BB', '2018-07-03 16:01:42', '2018-07-03 16:01:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_unicode_ci NOT NULL,
  `seccion` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`id`, `titulo`, `subtitulo`, `imagen`, `seccion`, `orden`, `created_at`, `updated_at`) VALUES
(4, '<p>A medida de nuestros Clientes</p>', '<p>Solicit&aacute; tu Presupuesto Online</p>', 'sliders__Empresa.jpg', '2', 'AA', '2018-07-02 17:16:11', '2018-07-02 17:16:11'),
(5, '<p>Calidad, Seguridad y Garant&iacute;a</p>', '<p>Venta e Instalaci&oacute;n de Alambrados</p>', 'sliders__Home.jpg', '1', 'AA', '2018-07-04 22:48:12', '2018-07-04 22:48:12'),
(6, '<p>A medida de nuestros Clientes</p>', '<p>Solicit&aacute; tu Presupuesto Online</p>', 'sliders__slider-prix.jpg', '1', 'bb', '2018-07-19 16:54:10', '2018-07-19 17:17:17'),
(7, '<p>Cercos Perimetrales</p>', '<p>de Seguridad, Deportivos, Industriales y de Campo</p>', 'sliders__slider-prix-2.jpg', '2', 'bb', '2018-07-19 17:19:00', '2018-07-19 17:19:00'),
(8, '<p>Servicio integral</p>', '<p>Instalaciones en todo el Pa&iacute;s</p>', 'sliders__slider-prix-4.jpg', '2', 'cc', '2018-07-19 17:20:21', '2018-07-19 17:21:03'),
(9, '<p>Servicio de Colocaci&oacute;n y Mano de Obra</p>', '<p>Instalaciones en Todo el Pa&iacute;s</p>', 'sliders__slider-prix-3.jpg', '1', 'cc', '2018-07-19 17:21:34', '2018-07-19 17:21:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soluciones`
--

CREATE TABLE `soluciones` (
  `id` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `soluciones`
--

INSERT INTO `soluciones` (`id`, `titulo`, `imagen`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Soluciones a Medida', 'imagen.png', '<p style=\"text-align:center\">En Diatex ofrecemos soluciones para una amplia gama de aplicaciones</p>\r\n\r\n<p style=\"text-align:center\">industriales. Contamos con diferentes tipos de adhesivos y un equipo de trabajo</p>\r\n\r\n<p style=\"text-align:center\">capacitado en la elaboraci&oacute;n de soluciones personalizadas para necesidades</p>\r\n\r\n<p style=\"text-align:center\">espec&iacute;ficas de cada aplicaci&oacute;n y lo que el cliente requiera.</p>', NULL, '2018-06-15 16:32:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo`
--

CREATE TABLE `tiempo` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `texto` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orden` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tiempo`
--

INSERT INTO `tiempo` (`id`, `imagen`, `titulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, NULL, '1930', '<p>Reference site about<em> Lorem Ipsum</em>, giving information on its origins, as well as random Lipsum generator.</p>', 'AA', '2018-06-27 22:52:24', '2018-06-27 22:52:24'),
(2, NULL, '1950', '<p>Reference site about<em> Lorem Ipsum</em>, giving information on its origins, as well as random Lipsum generator.</p>', 'BB', '2018-06-27 22:52:33', '2018-06-27 22:52:33'),
(3, NULL, '1962', '<p>Reference site about<em> Lorem Ipsum</em>, giving information on its origins, as well as random Lipsum generator.</p>', 'CC', '2018-06-27 22:52:40', '2018-06-27 22:52:40'),
(4, 'tiempos__destacados__1.jpg', '1963', '<p>En 2011 y hasta la actualidad estamos participando en la construcci&oacute;n &nbsp;de los moldes, piezas y mecanizados de los nuevos refugios del mobiliario urbano de la ciudad de Buenos Aires Buenos Aires a trav&eacute;s de sus dise&ntilde;adores el &ldquo;Estudio Cabeza&rdquo;.</p>', 'DD', '2018-06-27 22:53:20', '2018-06-27 22:53:20'),
(5, NULL, '1968', '<p>Reference site about<em> Lorem Ipsum</em>, giving information on its origins, as well as random Lipsum generator.</p>', 'EE', '2018-06-27 22:53:35', '2018-06-27 22:53:35'),
(6, NULL, '1968', '<p>Reference site about<em> Lorem Ipsum</em>, giving information on its origins, as well as random Lipsum generator.</p>', 'FF', '2018-06-27 22:53:52', '2018-06-27 22:53:52'),
(7, NULL, '1980', '<p>Reference site about<em> Lorem Ipsum</em>, giving information on its origins, as well as random Lipsum generator.</p>', 'GG', '2018-06-27 22:54:00', '2018-06-27 22:54:00'),
(8, NULL, '1996', '<p>Reference site about<em> Lorem Ipsum</em>, giving information on its origins, as well as random Lipsum generator.</p>', 'HH', '2018-06-27 22:54:08', '2018-06-27 22:54:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajamos`
--

CREATE TABLE `trabajamos` (
  `id` int(11) NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `subtitulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `texto` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `trabajamos`
--

INSERT INTO `trabajamos` (`id`, `imagen`, `titulo`, `subtitulo`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'trabajamos__1.png', 'Presupuesto', '1º PASO', '<p>El departamento de cotizaciones prepara un presupuesto seg&uacute;n las indicaciones enviadas por los clientes. En este caso, se trata de dise&ntilde;o y fabricaci&oacute;n</p>', 'AA', '2018-06-25 17:06:29', '2018-06-25 17:06:29'),
(2, 'trabajamos__2.png', 'Análisis y Planificación', '2º PASO', '<p>En Reuni&oacute;n de Dise&ntilde;o se preparan las etapas necesarias a la fabricaci&oacute;n del producto, necesidad de materia prima y metodolog&iacute;as a emplear</p>', 'BB', '2018-06-25 17:06:43', '2018-06-25 17:06:43'),
(3, 'trabajamos__3.png', 'Fabricación', '3º PASO', '<p>Se genera una O/T &nbsp;con todos los procesos y las &aacute;reas involucradas para su ejecuci&oacute;n con fechas programadas en nuestro sistema de KANBAN</p>', 'CC', '2018-06-25 17:06:57', '2018-06-25 17:06:57'),
(4, 'trabajamos__4.png', 'Terminaciones', '4º PASO', '<p>El taller realiza las terminaciones de pulido, tratamiento superficial y pintado</p>', 'DD', '2018-06-25 17:07:17', '2018-06-25 17:07:17'),
(5, 'trabajamos__5.png', 'Antes de la Entrega', '5º PASO', '<p>Finalizaci&oacute;n del producto, inspecci&oacute;n visual, avisos internos de finalizaci&oacute;n de ejecuci&oacute;n</p>', 'EE', '2018-06-25 17:07:34', '2018-06-25 17:07:34'),
(6, 'trabajamos__6.png', 'Comunicación', '6 PASO', '<p>Durante el proceso de producci&oacute;n, el cliente puede estar informado del estado de su pedido en cualquier momento</p>', 'FF', '2018-06-25 17:07:51', '2018-06-25 17:07:51'),
(7, 'trabajamos__7.png', 'Mediciones', '7º PASO', '<p>El controller controla bajada de noyos y cierre de molde (en el caso de modelos para fundici&oacute;n) &nbsp;y se verifican las cotas</p>', 'GG', '2018-06-25 17:08:05', '2018-06-25 17:08:05'),
(8, 'trabajamos__8.png', 'Entrega', '8º PASO', '<p>Seg&uacute;n las necesidades del cliente, el producto se entrega en un palet, o en una caja realizada a medida</p>', 'HH', '2018-06-25 17:08:31', '2018-06-25 17:08:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pablo', 'pablo', '$2y$10$XlOopRLeg45MV4WTZsevmungGPfpyvO3puI6hRGlAjdm2XPIqFQlO', 'RDNfaozFQNUNQunlWUfiXwuz1AZOhe18eC2FuSBSPuslakFgTIVyjKUQ2GPU', NULL, '2018-06-04 16:47:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acategorias`
--
ALTER TABLE `acategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aproductos`
--
ALTER TABLE `aproductos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_contenido`
--
ALTER TABLE `banner_contenido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner_iconos`
--
ALTER TABLE `banner_iconos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calidades`
--
ALTER TABLE `calidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias_compresors`
--
ALTER TABLE `categorias_compresors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias_luminarias`
--
ALTER TABLE `categorias_luminarias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias_novedads`
--
ALTER TABLE `categorias_novedads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `correos`
--
ALTER TABLE `correos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `destacados`
--
ALTER TABLE `destacados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipamientos`
--
ALTER TABLE `equipamientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerias_id_producto_foreign` (`id_producto`);

--
-- Indices de la tabla `galerias_novedads`
--
ALTER TABLE `galerias_novedads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galerias_novedads_id_productos_novedads_foreign` (`id_productos_novedads`);

--
-- Indices de la tabla `home_clientes`
--
ALTER TABLE `home_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listarproductos`
--
ALTER TABLE `listarproductos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modal_realizados`
--
ALTER TABLE `modal_realizados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos_contenidos`
--
ALTER TABLE `modelos_contenidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos_galerias`
--
ALTER TABLE `modelos_galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `novedades_id_categoria_foreign` (`id_categoria`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_alambrados`
--
ALTER TABLE `productos_alambrados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_compresors`
--
ALTER TABLE `productos_compresors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_compresors_id_categorias_compresors_foreign` (`id_categorias_compresors`);

--
-- Indices de la tabla `productos_luminarias`
--
ALTER TABLE `productos_luminarias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_luminarias_id_categorias_luminarias_foreign` (`id_categorias_luminarias`);

--
-- Indices de la tabla `productos_novedads`
--
ALTER TABLE `productos_novedads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_novedads_id_categorias_novedads_foreign` (`id_categorias_novedads`);

--
-- Indices de la tabla `publicacions`
--
ALTER TABLE `publicacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serv_contenido`
--
ALTER TABLE `serv_contenido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serv_destacados`
--
ALTER TABLE `serv_destacados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serv_items`
--
ALTER TABLE `serv_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `soluciones`
--
ALTER TABLE `soluciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajamos`
--
ALTER TABLE `trabajamos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_unique` (`user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acategorias`
--
ALTER TABLE `acategorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `aproductos`
--
ALTER TABLE `aproductos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `banner_contenido`
--
ALTER TABLE `banner_contenido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `banner_iconos`
--
ALTER TABLE `banner_iconos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `calidades`
--
ALTER TABLE `calidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias_compresors`
--
ALTER TABLE `categorias_compresors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias_luminarias`
--
ALTER TABLE `categorias_luminarias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias_novedads`
--
ALTER TABLE `categorias_novedads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `correos`
--
ALTER TABLE `correos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `descargas`
--
ALTER TABLE `descargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `destacados`
--
ALTER TABLE `destacados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `equipamientos`
--
ALTER TABLE `equipamientos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galerias_novedads`
--
ALTER TABLE `galerias_novedads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `home_clientes`
--
ALTER TABLE `home_clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `listarproductos`
--
ALTER TABLE `listarproductos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `listas`
--
ALTER TABLE `listas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de la tabla `modal_realizados`
--
ALTER TABLE `modal_realizados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `modelos_contenidos`
--
ALTER TABLE `modelos_contenidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `modelos_galerias`
--
ALTER TABLE `modelos_galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos_alambrados`
--
ALTER TABLE `productos_alambrados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `productos_compresors`
--
ALTER TABLE `productos_compresors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos_luminarias`
--
ALTER TABLE `productos_luminarias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos_novedads`
--
ALTER TABLE `productos_novedads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `publicacions`
--
ALTER TABLE `publicacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `serv_contenido`
--
ALTER TABLE `serv_contenido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `serv_destacados`
--
ALTER TABLE `serv_destacados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `serv_items`
--
ALTER TABLE `serv_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `soluciones`
--
ALTER TABLE `soluciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tiempo`
--
ALTER TABLE `tiempo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `trabajamos`
--
ALTER TABLE `trabajamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD CONSTRAINT `galerias_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `galerias_novedads`
--
ALTER TABLE `galerias_novedads`
  ADD CONSTRAINT `galerias_novedads_id_productos_novedads_foreign` FOREIGN KEY (`id_productos_novedads`) REFERENCES `productos_novedads` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD CONSTRAINT `novedades_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos_compresors`
--
ALTER TABLE `productos_compresors`
  ADD CONSTRAINT `productos_compresors_id_categorias_compresors_foreign` FOREIGN KEY (`id_categorias_compresors`) REFERENCES `categorias_compresors` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos_luminarias`
--
ALTER TABLE `productos_luminarias`
  ADD CONSTRAINT `productos_luminarias_id_categorias_luminarias_foreign` FOREIGN KEY (`id_categorias_luminarias`) REFERENCES `categorias_luminarias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos_novedads`
--
ALTER TABLE `productos_novedads`
  ADD CONSTRAINT `productos_novedads_id_categorias_novedads_foreign` FOREIGN KEY (`id_categorias_novedads`) REFERENCES `categorias_novedads` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

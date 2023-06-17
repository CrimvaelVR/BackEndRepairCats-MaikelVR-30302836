-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2023 a las 22:11:53
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `repaircats`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorías`
--

CREATE TABLE `categorías` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripción` text NOT NULL,
  `ImagenCat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categorías`
--

INSERT INTO `categorías` (`ID`, `Nombre`, `Descripción`, `ImagenCat`) VALUES
(1, 'Laptops', 'Laptops desde baja a altagamma', '/assets/img/categorialaptops.jpg'),
(2, 'Computadores', 'CPUs y computadores all-in-one ', '/assets/img/categoriacomputadores.jpg'),
(3, 'Auriculares', 'Los mejores auriculares para gamers y profesionales', '/assets/img/categoriaauriculares.webp'),
(4, 'Tarjetas Gráficas', 'Las mejores GPUs del mercado, desde gamma baja a alta', '/assets/img/rtx4090.jpg'),
(5, 'Teclados', 'Los teclados mas comodos para el usuario', '/assets/img/categoriateclados.webp'),
(6, 'Mouses', 'Con la mejor sensibilidad y la mayor comodidad para el usuario', '/assets/img/categoriamouses.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosform`
--

CREATE TABLE `datosform` (
  `ID_Form` int(11) NOT NULL,
  `Nombre_Persona` varchar(200) NOT NULL,
  `Correo` varchar(128) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  `Mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombreprod` varchar(200) NOT NULL,
  `descripción` text NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombreprod`, `descripción`, `costo`, `id_categoria`, `imagen`, `fecha`) VALUES
(1, 'Nvidia GeForce RTX 4080', 'La Nvidia GeForce RTX 4080 es la GPU más potente dentro de la serie RTX de Nvidia. Con una arquitectura Ampere mejorada y 12.288 núcleos de procesamiento, esta GPU ofrece un rendimiento excepcional en juegos y aplicaciones de alta demanda gráfica. Además, cuenta con 24 GB de VRAM GDDR6X para manejar grandes cargas de trabajo en aplicaciones de renderizado, edición de video y diseño 3D.', '1499.99', 4, '/assets/img/rtx4080.webp\r\n', '2022-11-17'),
(2, 'Mouse Logitech MX Master 3', 'Mouse inalámbrico con diseño ergonómico, sensor láser de alta precisión y botones personalizables', '99.99', 6, '/assets/img/mousegaming.webp', '2023-06-17'),
(3, 'Teclado mecánico Corsair K70 RGB', 'El teclado mecánico Corsair K70 RGB cuenta con interruptores Cherry MX RGB Brown, que ofrecen una experiencia de escritura táctil y silenciosa. Además, tiene retroiluminación RGB personalizable y teclas programables para una mayor comodidad y productividad.', '149.99', 5, '/assets/img/applekm.webp', '2022-05-17'),
(4, 'AMD Radeon RX 7900 XT', 'La AMD Radeon RX 7900 XT es la GPU más potente dentro de la serie RX de AMD. Con una arquitectura RDNA3 mejorada y 10.240 núcleos de procesamiento, esta GPU ofrece un rendimiento excepcional en juegos y aplicaciones de alta demanda gráfica. Además, cuenta con 16 GB de VRAM GDDR6 para manejar cargas de trabajo en aplicaciones de renderizado, edición de video y diseño 3D.', '1399.99', 4, '/assets/img/radeon7900.png', '2023-06-17'),
(5, 'Teclado gamer Redragon K552', 'El teclado gamer Redragon K552 cuenta con interruptores mecánicos Outemu Blue para una experiencia de escritura táctil y audible. Además, tiene retroiluminación roja ajustable y teclas programables para una mayor comodidad y productividad. Es ideal para jugadores y profesionales que requieren un teclado de alta calidad y durabilidad.', '49.99', 5, 'https://ejemplo.com/tecladoredragon.jpg', '2022-05-17'),
(6, 'Nvidia Titan R', 'La Nvidia Titan R es la GPU más potente dentro de la serie Titan de Nvidia. Con una arquitectura Ampere mejorada y 4608 núcleos de procesamiento, esta GPU ofrece el máximo rendimiento en aplicaciones de renderizado, edición de video y diseño 3D. Además, cuenta con 48 GB de VRAM GDDR6X para manejar grandes cargas de trabajo incluso en aplicaciones de mayor demanda.', '4999.99', 4, '/assets/img/nvidiatitan.png', '2023-06-17'),
(7, 'Teclado inalámbrico Apple Magic Keyboard', 'El teclado inalámbrico Apple Magic Keyboard cuenta con un diseño delgado y elegante, teclas de perfil bajo y una batería recargable que dura hasta un mes con una sola carga. Además, tiene un sistema de emparejamiento fácil con dispositivos Apple y teclas de función dedicadas para acceder rápidamente a las funciones del sistema. Es ideal para usuarios de dispositivos Apple que requieren un teclado inalámbrico de alta calidad y comodidad.', '150.00', 5, 'www.ejemplo.com/mousegaming.webp\r\n', '2023-05-10'),
(8, 'Mouse gaming Razer DeathAdder V2 Pro', 'El mouse gaming Razer DeathAdder V2 Pro cuenta con un sensor óptico de 20.000 DPI y switches ópticos para una mayor precisión y velocidad de respuesta. Además, tiene una batería recargable que dura hasta 70 horas con una sola carga y un diseño ergonómico para la mano derecha. Es ideal para jugadores que requieren un mouse de alta calidad y rendimiento.', '99.99', 6, 'https://ejemplo.com/mousegamingrazer.jpg', '2021-02-20'),
(9, 'Nvidia GeForce RTX 4070 Ti\r\n', 'Basado en la arquitectura de la GPU \"Ada Lovelace\" de NVIDIA, la 4070 Ti funciona, así como la GPU de la serie 30 más rápida. Es excelente para los juegos de 1080p y 1440p, y también puede mantenerse en 4K. Las tarjetas gráficas GeForce RTX 40-Series de NVIDIA vienen con mejoras serias en más de 30 tarjetas gráficas.\r\n', '699.99', 4, '/assets/img/rtx4070t.webp\r\n', '2023-06-17'),
(10, 'NVIDIA GeForce RTX 2060 de 6 GB\r\n', 'Parece que fue ayer, pero ya han pasado 4 años desde la presentación y el lanzamiento de la NVIDIA GeForce RTX 2060, una de las tarjetas gráficas más revolucionarias y populares de los últimos años. De hecho, tal fue su impacto que, antes de su cese de producción, llegó a convertirse en la segunda tarjeta gráfica más popular de Steam.  Y es que, a la vista de su capacidad de brindar al usuario la oportunidad de jugar a 1080p a una media de 100 fps, pocas opciones mejores hay en el mercado. Eso sí, el cese de producción y su popularidad juegan en su contra ya que por precios similares hay opciones mejores.\r\n\r\n', '399.99', 4, '/assets/img/rtx2060.png', '2023-06-17'),
(11, 'Mouse gaming Razer DeathAdder V2 Pro', 'El mouse gaming Razer DeathAdder V2 Pro cuenta con un sensor óptico de 20.000 DPI y switches ópticos para una mayor precisión y velocidad de respuesta. Además, tiene una batería recargable que dura hasta 70 horas con una sola carga y un diseño ergonómico para la mano derecha. Es ideal para jugadores que requieren un mouse de alta calidad y rendimiento.', '99.99', 6, '/assets/img/mousegaming.webp\r\n', '2021-02-20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorías`
--
ALTER TABLE `categorías`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `datosform`
--
ALTER TABLE `datosform`
  ADD PRIMARY KEY (`ID_Form`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorías`
--
ALTER TABLE `categorías`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `datosform`
--
ALTER TABLE `datosform`
  MODIFY `ID_Form` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `Categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorías` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

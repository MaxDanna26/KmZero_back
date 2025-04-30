-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2025 a las 18:06:42
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kmzero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(2, 'Carne', '2025-04-30 13:23:55', '2025-04-30 13:23:55'),
(3, 'Pescados', '2025-04-30 13:24:01', '2025-04-30 13:24:01'),
(4, 'Frutas', '2025-04-30 13:24:11', '2025-04-30 13:24:11'),
(5, 'Verduras', '2025-04-30 13:24:17', '2025-04-30 13:24:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `locations`
--

INSERT INTO `locations` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Barcelona', '2025-04-25 13:55:45', '2025-04-25 13:55:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `fk_store` int(11) NOT NULL,
  `fk_category` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `description`, `fk_store`, `fk_category`, `createdAt`, `updatedAt`) VALUES
(3, 'Fresas', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746020508/haacu8zyd2m00dpkgcit.jpg', 4.95, 'Fresas frescas cultivadas en huertos locales, dulces y jugosas, ideales para postres o meriendas.', 4, 4, '2025-04-30 13:42:24', '2025-04-30 13:42:24'),
(4, 'Kiwi', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746020831/oln1brcxsoobnijggcwq.jpg', 3.49, 'Kiwi de proximidad con pulpa verde y refrescante, rico en vitamina C y sabor natural.', 4, 4, '2025-04-30 13:47:48', '2025-04-30 13:47:48'),
(6, 'Manzana roja', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746020967/jwulmrq3n7p5xodtwhmu.jpg', 2.25, 'Manzana roja crujiente y dulce, recolectada en fincas locales con cultivo responsable.', 4, 4, '2025-04-30 13:50:03', '2025-04-30 13:50:03'),
(7, 'Manzana verde', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746021032/lyyrr6z9rh7na9scf4ap.jpg', 2.65, 'Manzana verde con un toque ácido, perfecta para snacks saludables o ensaladas.', 4, 4, '2025-04-30 13:51:09', '2025-04-30 13:51:09'),
(8, 'Melon', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746021109/ato2jksfynjgbvwel3k4.jpg', 2.69, 'Melón local de temporada, dulce y aromático, ideal para refrescar tus días.', 4, 4, '2025-04-30 13:52:26', '2025-04-30 13:52:26'),
(9, 'Naranja', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746021186/hpgsnxdlhw0d8qmbfct6.jpg', 2.29, 'Naranjas de proximidad llenas de zumo, perfectas para exprimir o disfrutar al natural.', 4, 4, '2025-04-30 13:53:42', '2025-04-30 13:53:42'),
(10, 'Pera', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746021234/waqvtuubwtwuzeecfcbo.jpg', 2.69, 'Peras tiernas y jugosas de cultivos cercanos, con sabor suave y textura delicada.', 4, 4, '2025-04-30 13:54:30', '2025-04-30 13:54:30'),
(11, 'Plátanos', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746021363/yymsm9t3x0vtwjhti3mx.jpg', 3.99, 'Plátano madurado en su punto, lleno de energía natural y sabor tradicional.', 4, 4, '2025-04-30 13:56:39', '2025-04-30 13:56:39'),
(13, 'Sandía', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746021465/nipz9itcfnv2nkr2vprq.jpg', 1.95, 'Sandía dulce y refrescante de temporada, perfecta para compartir en verano.', 4, 4, '2025-04-30 13:58:21', '2025-04-30 13:58:21'),
(14, 'Uvas', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746021527/kllf5o92yy3twket0gt9.jpg', 3.69, 'Uvas frescas de viña local, dulces y listas para comer o acompañar tus platos.', 4, 4, '2025-04-30 13:59:23', '2025-04-30 13:59:23'),
(15, 'Zanahorias', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746021877/gf6yxj6htigyeislij50.jpg', 1.25, 'Zanahorias frescas y crujientes, ideales para ensaladas y guisos.', 5, 5, '2025-04-30 14:05:13', '2025-04-30 14:05:13'),
(16, 'Tomates', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746021994/cf6ihf1lklqk6gbrjsma.jpg', 2.05, 'Tomates maduros y jugosos, perfectos para ensaladas y salsas.', 5, 5, '2025-04-30 14:07:10', '2025-04-30 14:07:10'),
(17, 'Pimiento Verde', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746022115/hwcell6nurwk2pzbxeus.jpg', 2.59, 'Pimientos verdes frescos y versátiles, ideales para asar o saltear.', 5, 5, '2025-04-30 14:09:11', '2025-04-30 14:09:11'),
(18, 'Pack pimientos', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746022214/k7kbn1pgbihngh9zg5g0.jpg', 3.08, 'Combinación de pimientos rojos, verdes y amarillos, para dar color y sabor a tus platos.', 5, 5, '2025-04-30 14:10:50', '2025-04-30 14:10:50'),
(19, 'Pepinos', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746022809/qtl6tcaelztv0yrbmvhy.jpg', 1.75, 'Pepinos frescos y crujientes, ideales para ensaladas y gazpachos.', 5, 5, '2025-04-30 14:20:46', '2025-04-30 14:20:46'),
(20, 'Lechuga', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746022868/lmcqxvc0x7hdrxfzmrcx.jpg', 1.91, 'Lechugas frescas y tiernas, perfectas para ensaladas y acompañamientos.', 5, 5, '2025-04-30 14:21:44', '2025-04-30 14:21:44'),
(22, 'Cebollas', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746022992/prphix4wdvyl8mq8mc0n.jpg', 2.39, 'Cebollas secas de sabor intenso, esenciales en la cocina diaria.', 5, 5, '2025-04-30 14:23:48', '2025-04-30 14:23:48'),
(23, 'Coliflor', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746023108/awgdkg1mzcwzvhrdmxo6.jpg', 3.09, 'Coliflor blanca y compacta, ideal para hervir, gratinar o preparar al vapor.​', 5, 5, '2025-04-30 14:25:45', '2025-04-30 14:25:45'),
(24, 'Brócoli', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746023157/mg6dgeolxspr5pxuqj8x.jpg', 2.55, 'Brócoli verde y fresco, rico en nutrientes, perfecto para cocinar al vapor o salteado.', 5, 5, '2025-04-30 14:26:33', '2025-04-30 14:26:33'),
(25, 'Filetes de trucha', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746023412/sa6qjganovdirwke6vwl.jpg', 8.99, 'Trucha fresca de aguas locales, con carne rosada y sabor suave, ideal para plancha o horno.', 3, 3, '2025-04-30 14:30:48', '2025-04-30 14:30:48'),
(26, 'Rodajas de salmon', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746023530/pbtkel3lp1zp84ofbbm6.jpg', 16.95, 'Salmón de cultivo sostenible, con carne jugosa y rica en ácidos grasos esenciales.', 3, 3, '2025-04-30 14:32:47', '2025-04-30 14:32:47'),
(27, 'Sardinas', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746023582/mns3vvkwsn96lnatffep.jpg', 4.05, 'Sardinas frescas del Mediterráneo, ricas en omega-3, perfectas para asar o freír.', 3, 3, '2025-04-30 14:33:39', '2025-04-30 14:33:39'),
(28, 'Filete de rape', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746023699/sirxos2lckuzikx1yzkp.jpg', 17.5, 'Rape de textura firme y sabor delicado, ideal para guisos y suquets.', 3, 3, '2025-04-30 14:35:36', '2025-04-30 14:35:36'),
(29, 'Filete de merluza', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746024029/tlroax2xkjvt1ixkucau.jpg', 15.95, 'Filete de merluza fresca, de carne blanca y textura suave, ideal para cocinar al horno, a la plancha o en guisos.​', 3, 3, '2025-04-30 14:41:06', '2025-04-30 14:41:06'),
(30, 'Filete de lubina', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746024080/k6ndkfbbabqnn83cn86c.jpg', 22.5, 'Lubina fresca, de carne blanca y sabor suave, perfecta para horno o plancha.', 3, 3, '2025-04-30 14:41:57', '2025-04-30 14:41:57'),
(31, 'Filete de lenguado', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746024137/zletzk7f6g6vrwpdzmxm.jpg', 22.7, 'Lenguado de carne fina y sabor delicado, ideal para recetas al horno o a la meunière.', 3, 3, '2025-04-30 14:42:54', '2025-04-30 14:42:54'),
(32, 'Filete de bacalao', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746024255/qjxef2vkyc3smlqzfwip.jpg', 23, 'Bacalao fresco, especialmente el skrei, con carne firme y sabor intenso, excelente para múltiples preparaciones.', 3, 3, '2025-04-30 14:44:52', '2025-04-30 14:44:52'),
(33, 'Filete de atun', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746024319/vnxfyqcjcpleedum6obn.jpg', 18.89, 'Atún de carne roja y sabor potente, ideal para tartar, plancha o sushi.', 3, 3, '2025-04-30 14:45:56', '2025-04-30 14:45:56'),
(34, 'Lomo bajo', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746025757/i64jd0bbnqsiafzbxaod.jpg', 14.95, 'Corte noble y jugoso, ideal para parrilla o sartén, con gran sabor y terneza.', 2, 2, '2025-04-30 15:09:54', '2025-04-30 15:09:54'),
(35, 'Chorizo', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746028195/bk7qkzl2eafnlfhrriyb.jpg', 9.5, 'Embutido curado con pimentón y ajo, perfecto para tapas o cocinar.', 2, 2, '2025-04-30 15:50:31', '2025-04-30 15:50:31'),
(36, 'Morcilla', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746028233/ucorruvnie2oykqfnvgq.jpg', 8.65, 'Embutido de sangre y arroz o cebolla, ideal para guisos y parrilladas.', 2, 2, '2025-04-30 15:51:10', '2025-04-30 15:51:10'),
(37, 'Lomo de cerdo', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746028339/nbffxxqv1agzoj4jvwbu.jpg', 6, 'Corte magro y versátil, excelente para asar o a la plancha.', 2, 2, '2025-04-30 15:52:56', '2025-04-30 15:52:56'),
(38, 'Pechuga de pollo', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746028376/sr10vqj7foovhd7eo9ja.jpg', 7.25, 'Carne magra y suave, ideal para dietas saludables y múltiples preparaciones.​', 2, 2, '2025-04-30 15:53:32', '2025-04-30 15:53:32'),
(39, 'Costillar de cerdo', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746028405/obwjwvuqnlewctmt355d.jpg', 8.45, 'Costillas jugosas, perfectas para asar al horno o a la barbacoa.', 2, 2, '2025-04-30 15:54:01', '2025-04-30 15:54:01'),
(40, 'Osobuco', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746028437/ydlxnkvnlxicnzooz8ch.jpg', 6.5, 'Corte con hueso ideal para estofados, aporta sabor y gelatina natural.​', 2, 2, '2025-04-30 15:54:34', '2025-04-30 15:54:34'),
(41, 'Butifarra', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746028496/rv2zmdu5wzrcxijr97x2.jpg', 20.55, 'Embutido fresco y versátil, perfecto para asar o freír.', 2, 2, '2025-04-30 15:55:32', '2025-04-30 15:55:32'),
(42, 'Tira de asado', 'https://res.cloudinary.com/dl0pefmca/image/upload/v1746028552/ssk06ifycbgnbsjtxajg.jpg', 10.55, 'Corte típico para parrilla, jugoso y sabroso.', 2, 2, '2025-04-30 15:56:28', '2025-04-30 15:56:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '2025-04-25 14:52:52', '2025-04-25 14:52:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fk_location` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stores`
--

INSERT INTO `stores` (`id`, `name`, `fk_location`, `createdAt`, `updatedAt`) VALUES
(2, 'Granja Barcelona', 1, '2025-04-25 13:55:51', '2025-04-25 13:55:51'),
(3, 'Pescaderia Barcelona', 1, '2025-04-30 13:22:52', '2025-04-30 13:22:52'),
(4, 'Fruteria Barcelona', 1, '2025-04-30 13:22:59', '2025-04-30 13:22:59'),
(5, 'Verdureria Barcelona', 1, '2025-04-30 13:23:21', '2025-04-30 13:23:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `fk_rol` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `userName`, `password`, `street`, `number`, `postalCode`, `city`, `phone`, `fk_rol`, `createdAt`, `updatedAt`) VALUES
(2, 'max@gmail.com', 'Max', '$2b$06$yvsdvl9TuEvIp8fMuXQ/QuwRRLWpvx/uwqnA8xzW7Gi0pbHqocR8a', NULL, NULL, NULL, NULL, NULL, 1, '2025-04-25 14:53:00', '2025-04-25 14:53:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_store` (`fk_store`),
  ADD KEY `fk_category` (`fk_category`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_location` (`fk_location`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_rol` (`fk_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`fk_store`) REFERENCES `stores` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`fk_category`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`fk_location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`fk_rol`) REFERENCES `rols` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

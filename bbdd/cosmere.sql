-- phpMyAdmin SQL Dump
-- version 5.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------
-- Table structure for table `estados`
--

CREATE TABLE `estados` (
  `id_estados` int(11) NOT NULL,
  `tipo_estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `estados` (`id_estados`, `tipo_estado`) VALUES
(1, 'activo'),
(2, 'baneado');

-- --------------------------------------------------------
-- Table structure for table `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(350) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `libros` (`id_libro`, `nombre`, `descripcion`, `fecha_publicacion`, `foto`) VALUES
(1, 'Elantris', '...', '2005-04-21', '13.jpg'),
(2, 'Warbreaker', '...', '2009-06-09', '14.jpg'),
(3, 'El Imperio Final', '...', '2006-07-07', '2.jpg'),
(4, 'El Pozo de la Ascencion', '...', '2007-08-21', '1.jpg'),
(5, 'El Heroe de las Eras', '...', '2008-10-14', '3.jpg'),
(6, 'Aleación de Ley', '...', '2011-11-08', '6.jpg'),
(7, 'Sombras de Identidad', '...', '2015-10-06', '5.jpg'),
(8, 'Brazales de Duelo', '...', '2016-01-26', '7.jpg'),
(9, 'El metal perdido', '...', '2022-11-15', '4.jpg'),
(10, 'El camino de los reyes', '...', '2010-08-31', '8.jpg'),
(11, 'Palabras radiantes', '...', '2014-03-04', '10.jpg'),
(12, 'Juramentada', '...', '2017-11-14', '11.jpg'),
(13, 'El Ritmo de la Guerra', '...', '2020-11-17', '12.jpg'),
(14, 'Viento y Verdad', '...', '2024-12-06', '9.jpg'),
(15, 'Arcanum Ilimitado', '...', '2016-11-22', '15.jpg'),
(16, 'Trenza del mar Esmeralda', '...', '2023-01-01', '16.jpg'),
(17, 'Yumi y el pintor de pesadillas', '...', '2023-07-01', '18.jpg'),
(18, 'El hombre iluminado', '...', '2023-10-19', '17.jpg');  -- ✅ SIN coma

-- --------------------------------------------------------
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `libros_id_libro` int(11) NOT NULL,
  `usuarios_id_usuarios` int(11) NOT NULL,
  `archivo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `posts` (`id_post`, `texto`, `libros_id_libro`, `usuarios_id_usuarios`, `archivo`) VALUES
(16, 'me encantó cómo Sanderson...', 2, 2, NULL),
(17, 'LO AMO la mejor conclusion...', 14, 3, NULL),
(20, 'Un cierre potente...', 9, 2, NULL),
(21, 'El inicio de una historia...', 10, 4, NULL),
(22, 'Una aventura fresca...', 16, 7, NULL),
(23, 'El cierre épico...', 5, 2, NULL);

-- --------------------------------------------------------
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_roles` int(11) NOT NULL,
  `tipo_rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `roles` (`id_roles`, `tipo_rol`) VALUES
(1, 'admin'),
(2, 'usuario');

-- --------------------------------------------------------
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `user` varchar(20) NOT NULL,
  `fecha_nac` date NOT NULL,
  `mail` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `roles_id_roles` int(11) NOT NULL,
  `estados_id_estados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `user`, `fecha_nac`, `mail`, `pass`, `roles_id_roles`, `estados_id_estados`) VALUES
(2, 'Caterina', 'cate', '2005-02-07', 'cate@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 2, 1),
(3, 'Vicky', 'vickyycm', '2006-05-11', 'vicky@gmail.com', 'b59c67bf196a4758191e42f76670ceba', 2, 2),
(4, 'Camila', 'camojcius', '2005-05-20', 'cam@gmail.com', '934b535800b1cba8f96a5d72f72f1611', 2, 1),
(5, 'Paula', 'admin', '1999-08-01', 'admin@davinci.edu.ar', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
(6, 'Marcela', 'marce1', '1988-02-20', 'marce@davinci.edu.ar', 'e00cf25ad42683b3df678c61f42c6bda', 1, 1),
(7, 'Nicolas', 'nicolino', '2004-10-07', 'nico@gmail.com', '2be9bd7a3434f7038ca27d1918de58bd', 2, 1);

COMMIT;

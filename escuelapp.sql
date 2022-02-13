-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-02-2022 a las 21:39:16
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuelapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id_materia` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  `calificacion_p2` float DEFAULT NULL,
  `calificacion_p1` float DEFAULT NULL,
  `calificacion_p3` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id_materia`, `id_student`, `calificacion_p2`, `calificacion_p1`, `calificacion_p3`) VALUES
(1, 1, 2, 1, 3),
(2, 1, 5, 4, 6),
(1, 2, 10, 10, 9),
(2, 2, 8, 9, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre_materia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre_materia`) VALUES
(1, 'Español'),
(2, 'Matemáticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `id_work_center` int(11) NOT NULL,
  `matricula` varchar(15) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `ape_paterno` varchar(60) DEFAULT NULL,
  `ape_materno` varchar(60) DEFAULT NULL,
  `genero` char(1) NOT NULL,
  `generacion` smallint(6) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `id_work_center`, `matricula`, `activo`, `nombre`, `ape_paterno`, `ape_materno`, `genero`, `generacion`, `municipio`, `pais`, `fecha_nacimiento`) VALUES
(1, 1, 'TBC130001001', 1, 'María de la Luz', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1982-09-22'),
(2, 1, 'TBC130001002', 1, 'Ismael', 'Perez', 'Bush', 'H', 1, 'Jerécuaro', 'México', '1996-08-23'),
(3, 1, 'TBC130001003', 1, 'María de los Ángeles', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1998-08-28'),
(4, 1, 'TBC130001004', 1, 'María Guadalupe', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1996-02-24'),
(5, 1, 'TBC130001005', 0, 'María Brenda', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1998-04-20'),
(6, 1, 'TBC130001006', 0, 'Luis Fernando', 'Perez', 'Bush', 'H', 1, 'Jerécuaro', 'México', '1996-04-20'),
(7, 1, 'TBC130001007', 1, 'Andrea', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1998-03-01'),
(8, 1, 'TBC130001008', 0, 'Ana Delia', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1993-07-24'),
(9, 1, 'TBC130001009', 1, 'Juan Enrique', 'Perez', 'Bush', 'H', 1, 'Jerécuaro', 'México', '1997-07-14'),
(10, 1, 'TBC130001010', 0, 'Cecilia', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1991-11-02'),
(11, 1, 'TBC130001011', 0, 'Marisol', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1996-03-26'),
(12, 1, 'TBC130001012', 1, 'Griselda', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1998-01-08'),
(13, 1, 'TBC130001013', 1, 'Jazmín', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1998-04-02'),
(14, 1, 'TBC130001014', 0, 'Omar', 'Perez', 'Bush', 'H', 1, 'Jerécuaro', 'México', '1997-09-30'),
(15, 1, 'TBC130001015', 0, 'Perla Lizbeth', 'Perez', 'Bush', 'M', 1, 'Jerécuaro', 'México', '1998-07-29'),
(16, 1, 'TBC130001016', 1, 'Rosa Isela', 'Perez', 'Clinton', 'M', 1, 'Jerécuaro', 'México', '1997-10-07'),
(17, 1, 'TBC130001017', 1, 'Leslie Sarahy', 'Perez', 'Clinton', 'M', 1, 'Jerécuaro', 'México', '1997-10-31'),
(18, 1, 'TBC130001018', 1, 'José de Jesús', 'Perez', 'Clinton', 'H', 1, 'Jerécuaro', 'México', '1998-06-30'),
(19, 1, 'TBC130001019', 0, 'Diego', 'Juarez', 'Clinton', 'H', 1, 'Jerécuaro', 'México', '1996-10-13'),
(20, 1, 'TBC130001020', 0, 'María Guadalupe', 'Juarez', 'Clinton', 'M', 1, 'Jerécuaro', 'México', '1997-09-22'),
(21, 1, 'TBC130001021', 0, 'Pedro', 'Juarez', 'Clinton', 'H', 1, 'Jerécuaro', 'México', '1998-01-21'),
(22, 1, 'TBC130001022', 1, 'Esmeralda', 'Juarez', 'Clinton', 'M', 1, 'Jerécuaro', 'México', '1997-09-09'),
(23, 1, 'TBC130001023', 0, 'Mireya', 'Juarez', 'Clinton', 'M', 1, 'Jerécuaro', 'México', '1996-09-16'),
(24, 1, 'TBC130001024', 0, 'Araceli', 'Juarez', 'Clinton', 'M', 1, 'Jerécuaro', 'México', '1997-03-05'),
(25, 1, 'TBC130001025', 0, 'Jesús Enrique', 'Juarez', 'Clinton', 'H', 1, 'Jerécuaro', 'México', '1997-08-18'),
(26, 1, 'TBC130001026', 1, 'Luis Fernando', 'Juarez', 'Clinton', 'H', 1, 'Jerécuaro', 'México', '1997-07-20'),
(27, 2, 'TBC130002001', 0, 'Juan Ramón', 'Juarez', 'Clinton', 'H', 1, 'Manuel Doblado', 'México', '1997-09-15'),
(28, 2, 'TBC130002002', 0, 'Erika Georgina', 'Juarez', 'Clinton', 'M', 1, 'Manuel Doblado', 'México', '1997-09-12'),
(29, 2, 'TBC130002003', 1, 'Berenice', 'Juarez', 'Clinton', 'M', 1, 'Manuel Doblado', 'México', '1993-11-21'),
(30, 2, 'TBC130002004', 1, 'Felipe Adolfo', 'Juarez', 'Clinton', 'H', 1, 'Manuel Doblado', 'México', '1998-05-15'),
(31, 2, 'TBC130002005', 0, 'Jessica', 'Juarez', 'Clinton', 'M', 1, 'Manuel Doblado', 'México', '1993-11-15'),
(32, 2, 'TBC130002006', 1, 'Mónica Rocío', 'Juarez', 'Clinton', 'M', 1, 'Manuel Doblado', 'México', '1990-09-15'),
(33, 2, 'TBC130002007', 0, 'Jorge Antonio', 'Juarez', 'Clinton', 'H', 1, 'Manuel Doblado', 'México', '1997-04-19'),
(34, 2, 'TBC130002008', 0, 'Cristian Ezequiel', 'Juarez', 'Clinton', 'H', 1, 'Manuel Doblado', 'México', '1997-11-11'),
(35, 2, 'TBC130002009', 1, 'Anahí Francisca', 'Juarez', 'Clinton', 'M', 1, 'Manuel Doblado', 'México', '1998-06-30'),
(36, 2, 'TBC130002010', 0, 'Diana Karian', 'Juarez', 'Clinton', 'M', 1, 'Manuel Doblado', 'México', '1995-11-13'),
(37, 2, 'TBC130002011', 1, 'José Emmanuel', 'Juarez', 'Clinton', 'H', 1, 'Manuel Doblado', 'México', '1998-08-24'),
(38, 2, 'TBC130002012', 1, 'María del Carmen', 'Juarez', 'Clinton', 'M', 1, 'Manuel Doblado', 'México', '1998-08-24'),
(39, 2, 'TBC130002013', 1, 'Rafael de Jesús Edgardo', 'Juarez', 'Clinton', 'H', 1, 'Manuel Doblado', 'México', '1997-09-22'),
(40, 2, 'TBC130002014', 1, 'Laura Isabel', 'Juarez', 'Clinton', 'M', 1, 'Manuel Doblado', 'México', '1998-01-31'),
(41, 2, 'TBC130002015', 0, 'José Merced', 'Juarez', 'Clinton', 'H', 1, 'Manuel Doblado', 'México', '1996-03-18'),
(42, 2, 'TBC130002016', 0, 'Jesús Eli', 'Juarez', 'Clinton', 'H', 1, 'Manuel Doblado', 'México', '1997-09-05'),
(43, 3, 'TBC130003001', 0, 'Marisol', 'Juarez', 'Clinton', 'M', 1, 'Pénjamo', 'México', '1996-10-23'),
(44, 3, 'TBC130003002', 1, 'Leonardo', 'Juarez', 'Clinton', 'H', 1, 'Pénjamo', 'México', '1995-05-15'),
(45, 3, 'TBC130003003', 0, 'Diego', 'Juarez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1996-10-29'),
(46, 3, 'TBC130003004', 1, 'Victor', 'Juarez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1992-11-27'),
(47, 3, 'TBC130003005', 0, 'Roberto', 'Juarez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1996-10-11'),
(48, 3, 'TBC130003006', 0, 'Fernando', 'Juarez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1997-01-09'),
(49, 3, 'TBC130003007', 0, 'Vicente', 'Dominguez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1998-04-29'),
(50, 3, 'TBC130003008', 1, 'María del Carmen', 'Dominguez', 'Obama', 'M', 1, 'Pénjamo', 'México', '1995-07-15'),
(51, 3, 'TBC130003009', 1, 'Sandra', 'Dominguez', 'Obama', 'M', 1, 'Pénjamo', 'México', '1998-05-20'),
(52, 3, 'TBC130003010', 0, 'Iván', 'Dominguez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1996-09-13'),
(53, 3, 'TBC130003011', 0, 'Manuel', 'Dominguez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1992-09-23'),
(54, 3, 'TBC130003012', 0, 'Elizabeth', 'Dominguez', 'Obama', 'M', 1, 'Pénjamo', 'México', '1997-07-04'),
(55, 3, 'TBC130003013', 1, 'Cinthya Leilani', 'Dominguez', 'Obama', 'M', 1, 'Pénjamo', 'México', '1997-12-27'),
(56, 3, 'TBC130003014', 1, 'Fidel', 'Dominguez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1991-07-21'),
(57, 3, 'TBC130003015', 1, 'Luis Antonio', 'Dominguez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1998-07-29'),
(58, 3, 'TBC130003016', 0, 'María Elizabeth', 'Dominguez', 'Obama', 'M', 1, 'Pénjamo', 'México', '1996-09-28'),
(59, 3, 'TBC130003017', 0, 'Neftali', 'Dominguez', 'Obama', 'M', 1, 'Pénjamo', 'México', NULL),
(60, 3, 'TBC130003018', 0, 'Isaac', 'Dominguez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1992-09-30'),
(61, 3, 'TBC130003019', 0, 'Jesús', 'Dominguez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1994-12-24'),
(62, 3, 'TBC130003020', 0, 'Aristeo', 'Dominguez', 'Obama', 'H', 1, 'Pénjamo', 'México', '1995-10-14'),
(63, 4, 'TBC130004001', 1, 'David', 'Dominguez', 'Obama', 'H', 1, 'Pueblo Nuevo', 'México', '1992-06-08'),
(64, 4, 'TBC130004002', 1, 'Martín', 'Dominguez', 'Obama', 'H', 1, 'Pueblo Nuevo', 'México', '1990-09-08'),
(65, 4, 'TBC130004003', 1, 'José Juan', 'Dominguez', 'Obama', 'H', 1, 'Pueblo Nuevo', 'México', '1998-01-25'),
(66, 4, 'TBC130004004', 1, 'Rosa', 'Jackson', 'Obama', 'M', 1, 'Pueblo Nuevo', 'México', '1998-08-03'),
(67, 4, 'TBC130004005', 1, 'Margarita', 'Jackson', 'Obama', 'M', 1, 'Pueblo Nuevo', 'México', '1994-06-14'),
(68, 4, 'TBC130004006', 0, 'Mario', 'Jackson', 'Obama', 'H', 1, 'Pueblo Nuevo', 'México', '1997-08-22'),
(69, 4, 'TBC130004007', 0, 'Gerardo', 'Jackson', 'Obama', 'H', 1, 'Pueblo Nuevo', 'México', '1995-01-26'),
(70, 4, 'TBC130004008', 1, 'Ricardo', 'Jackson', 'Obama', 'H', 1, 'Pueblo Nuevo', 'México', '1997-04-26'),
(71, 4, 'TBC130004009', 1, 'Angélica María', 'Jackson', 'Obama', 'M', 1, 'Pueblo Nuevo', 'México', '1998-08-04'),
(72, 4, 'TBC130004010', 1, 'Ana Paulina', 'Jackson', 'Obama', 'M', 1, 'Pueblo Nuevo', 'México', '1997-07-15'),
(73, 4, 'TBC130004011', 1, 'Juana Guadalupe', 'Jackson', 'Obama', 'M', 1, 'Pueblo Nuevo', 'México', '1996-11-12'),
(74, 4, 'TBC130004012', 0, 'Ángel', 'Jackson', 'Obama', 'H', 1, 'Pueblo Nuevo', 'México', '1995-09-28'),
(75, 4, 'TBC130004013', 0, 'José Jesús', 'Jackson', 'Calderón', 'H', 1, 'Pueblo Nuevo', 'México', '1990-06-22'),
(76, 4, 'TBC130004014', 0, 'Gabriela', 'Jackson', 'Calderón', 'M', 1, 'Pueblo Nuevo', 'México', '1995-11-07'),
(77, 5, 'TBC130005015', 0, 'Lupita Anayeli', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1993-12-13'),
(78, 5, 'TBC130005016', 1, 'Sanjuana', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1997-10-10'),
(79, 5, 'TBC130005017', 0, 'Uriel Yanuar', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1997-04-11'),
(80, 5, 'TBC130005018', 0, 'Jose Guadalupe', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1995-05-26'),
(81, 5, 'TBC130005019', 0, 'Victor Hugo', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1998-04-26'),
(82, 5, 'TBC130005020', 1, 'Joel', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1998-07-13'),
(83, 5, 'TBC130005021', 1, 'Jorge Miguel', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1995-09-21'),
(84, 5, 'TBC130005022', 1, 'Ana Mariela', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1995-07-24'),
(85, 5, 'TBC130005023', 0, 'Vanesa', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1998-01-14'),
(86, 5, 'TBC130005024', 1, 'César', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1997-11-19'),
(87, 5, 'TBC130005025', 0, 'Vicente Antonio', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1997-10-30'),
(88, 5, 'TBC130005026', 0, 'Sandra Zulema', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1997-10-09'),
(89, 5, 'TBC130005027', 0, 'Ana Adela', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1998-11-10'),
(90, 5, 'TBC130005028', 0, 'Reyna Paola Maribel', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1995-09-07'),
(91, 5, 'TBC130005029', 1, 'Yéssica Ivett', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1994-02-17'),
(92, 5, 'TBC130005030', 0, 'José Armando', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1998-04-19'),
(93, 5, 'TBC130005031', 0, 'Oscar Hernán', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1997-04-17'),
(94, 5, 'TBC130005032', 1, 'Ana Adela', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1996-11-10'),
(95, 5, 'TBC130005033', 1, 'Talia', 'Jackson', 'Calderón', 'M', 1, 'San Diego de la Unión', 'México', '1982-02-11'),
(96, 5, 'TBC130005034', 0, 'Jaime Omar', 'Jackson', 'Calderón', 'H', 1, 'San Diego de la Unión', 'México', '1995-04-10'),
(97, 5, 'TBC130005035', 0, 'Angélica Guadalupe', 'Jackson', 'Lenon', 'M', 1, 'San Diego de la Unión', 'México', '1997-12-21'),
(98, 5, 'TBC130005036', 0, 'Vicente Antonio', 'Jackson', 'Lenon', 'H', 1, 'San Diego de la Unión', 'México', '1997-10-30'),
(99, 5, 'TBC130005037', 1, 'Jesús Humberto', 'Jackson', 'Lenon', 'H', 1, 'San Diego de la Unión', 'México', '1994-04-14'),
(100, 6, 'TBC130006001', 1, 'Jesús', 'Jackson', 'Lenon', 'H', 1, 'San Felipe', 'México', '1997-12-25'),
(101, 6, 'TBC130006002', 1, 'María del Socorro', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1996-02-16'),
(102, 6, 'TBC130006003', 0, 'María del Rosario', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1995-03-01'),
(103, 6, 'TBC130006004', 0, 'María Guadalupe', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1995-12-28'),
(104, 6, 'TBC130006005', 0, 'Guadalupe', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1997-04-26'),
(105, 6, 'TBC130006006', 1, 'Alma Paola', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1998-03-14'),
(106, 6, 'TBC130006007', 1, 'Rosa Isela', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1997-08-10'),
(107, 6, 'TBC130006008', 0, 'Martín', 'Jackson', 'Lenon', 'H', 1, 'San Felipe', 'México', '1997-11-11'),
(108, 6, 'TBC130006009', 1, 'Guadalupe', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1996-06-08'),
(109, 6, 'TBC130006010', 1, 'Rosalva', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1994-12-04'),
(110, 6, 'TBC130006011', 1, 'María de la Luz', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1993-03-09'),
(111, 6, 'TBC130006012', 1, 'Diana Laura', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1998-04-13'),
(112, 6, 'TBC130006013', 1, 'María Guadalupe', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1996-06-28'),
(113, 6, 'TBC130006014', 1, 'Rosa Esthela', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1997-02-21'),
(114, 6, 'TBC130006015', 0, 'María Brenda', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1998-07-25'),
(115, 6, 'TBC130006016', 1, 'Ana Patricia', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1998-04-17'),
(116, 6, 'TBC130006017', 1, 'Diana Carolina', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1996-01-07'),
(117, 6, 'TBC130006018', 1, 'Vianney', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1997-12-30'),
(118, 6, 'TBC130006019', 0, 'Rosa María', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1995-04-19'),
(119, 6, 'TBC130006020', 1, 'Yonatan', 'Jackson', 'Lenon', 'H', 1, 'San Felipe', 'México', '1997-01-17'),
(120, 6, 'TBC130006021', 1, 'Verónica', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1996-12-02'),
(121, 6, 'TBC130006022', 0, 'Maria del Carmen', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1998-07-25'),
(122, 6, 'TBC130006023', 1, 'Juan Manuel', 'Jackson', 'Lenon', 'H', 1, 'San Felipe', 'México', '1995-10-16'),
(123, 6, 'TBC130006024', 1, 'Juan Daniel', 'Jackson', 'Lenon', 'H', 1, 'San Felipe', 'México', '1996-05-22'),
(124, 6, 'TBC130006025', 1, 'José Adolfo', 'Jackson', 'Lenon', 'H', 1, 'San Felipe', 'México', '1996-05-02'),
(125, 6, 'TBC130006026', 0, 'Maria Estela', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1998-08-14'),
(126, 6, 'TBC130006027', 1, 'Mariela', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1997-04-02'),
(127, 6, 'TBC130006028', 1, 'María Guadalupe', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1997-08-18'),
(128, 6, 'TBC130006029', 1, 'María Soledad', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1996-05-27'),
(129, 6, 'TBC130006030', 1, 'Dania', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1995-12-30'),
(130, 6, 'TBC130006031', 1, 'Eliseo Enrique', 'Jackson', 'Lenon', 'H', 1, 'San Felipe', 'México', '1997-11-30'),
(131, 6, 'TBC130006032', 0, 'Juana', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1995-01-09'),
(132, 6, 'TBC130006033', 0, 'María Elizabeth', 'Jackson', 'Lenon', 'M', 1, 'San Felipe', 'México', '1995-11-20'),
(133, 6, 'TBC130006034', 0, 'Juana Laura', 'Jackson', 'Star', 'M', 1, 'San Felipe', 'México', '1992-08-04'),
(134, 7, 'TBC130007001', 1, 'María Guadalupe', 'Jackson', 'Star', 'M', 1, 'San José Iturbide', 'México', '1998-07-07'),
(135, 7, 'TBC130007002', 1, 'Erika', 'Jackson', 'Star', 'M', 1, 'San José Iturbide', 'México', '1996-11-02'),
(136, 7, 'TBC130007003', 1, 'Juan Indalecio', 'Jackson', 'Star', 'H', 1, 'San José Iturbide', 'México', '1998-02-24'),
(137, 7, 'TBC130007004', 1, 'José Ascención', 'Jackson', 'Star', 'H', 1, 'San José Iturbide', 'México', '1995-02-25'),
(138, 7, 'TBC130007005', 1, 'Roberto', 'Jackson', 'Star', 'H', 1, 'San José Iturbide', 'México', '1996-11-25'),
(139, 7, 'TBC130007006', 1, 'María Ernestina', 'Jackson', 'Star', 'M', 1, 'San José Iturbide', 'México', '1997-03-27'),
(140, 7, 'TBC130007007', 1, 'Alma Andrea', 'Washington', 'Star', 'M', 1, 'San José Iturbide', 'México', '1996-06-20'),
(141, 7, 'TBC130007008', 1, 'Jorge', 'Washington', 'Star', 'H', 1, 'San José Iturbide', 'México', '1995-09-20'),
(142, 7, 'TBC130007009', 0, 'Daniela', 'Washington', 'Star', 'M', 1, 'San José Iturbide', 'México', '1997-06-17'),
(143, 7, 'TBC130007010', 0, 'Diego Joel', 'Washington', 'Star', 'H', 1, 'San José Iturbide', 'México', '1997-07-22'),
(144, 7, 'TBC130007011', 0, 'Joaquín', 'Washington', 'Star', 'H', 1, 'San José Iturbide', 'México', '1995-03-29'),
(145, 7, 'TBC130007012', 0, 'Luis Enrique', 'Washington', 'Star', 'H', 1, 'San José Iturbide', 'México', '1997-10-14'),
(146, 7, 'TBC130007013', 1, 'Karla Paulina', 'Washington', 'Star', 'M', 1, 'San José Iturbide', 'México', '1994-01-08'),
(147, 7, 'TBC130007014', 1, 'Cinthia', 'Washington', 'Star', 'M', 1, 'San José Iturbide', 'México', '1998-03-25'),
(148, 7, 'TBC130007015', 1, 'Brenda', 'Washington', 'Star', 'M', 1, 'San José Iturbide', 'México', '1996-09-24'),
(149, 7, 'TBC130007016', 1, 'María Ana Laura', 'Washington', 'Star', 'M', 1, 'San José Iturbide', 'México', '1995-05-14'),
(150, 7, 'TBC130007017', 1, 'Jose Gerardo', 'Washington', 'Gandhi', 'H', 1, 'San José Iturbide', 'México', '1998-06-26'),
(151, 7, 'TBC130007018', 0, 'José Gustavo', 'Washington', 'Gandhi', 'H', 1, 'San José Iturbide', 'México', '1998-07-29'),
(152, 7, 'TBC130007019', 1, 'José Reyes', 'Washington', 'Gandhi', 'H', 1, 'San José Iturbide', 'México', '1997-01-06'),
(153, 7, 'TBC130007020', 1, 'Maria Dolores', 'Washington', 'Gandhi', 'M', 1, 'San José Iturbide', 'México', '1997-02-02'),
(154, 7, 'TBC130007021', 0, 'Fabiola', 'Washington', 'Gandhi', 'M', 1, 'San José Iturbide', 'México', '1997-07-21'),
(155, 7, 'TBC130007022', 1, 'Brenda', 'Washington', 'Gandhi', 'M', 1, 'San José Iturbide', 'México', '1997-09-15'),
(156, 7, 'TBC130007023', 0, 'María Marina', 'Washington', 'Gandhi', 'M', 1, 'San José Iturbide', 'México', NULL),
(157, 7, 'TBC130007024', 0, 'Rogelio Rafael', 'Washington', 'Gandhi', 'H', 1, 'San José Iturbide', 'México', NULL),
(158, 7, 'TBC130007025', 0, 'Gonzalo', 'Washington', 'Gandhi', 'H', 1, 'San José Iturbide', 'México', NULL),
(159, 7, 'TBC130007026', 0, 'Rogelio Rafael', 'Washington', 'Gandhi', 'H', 1, 'San José Iturbide', 'México', NULL),
(160, 7, 'TBC130007027', 0, 'Rosa', 'Washington', 'Gandhi', 'H', 1, 'San José Iturbide', 'México', '1996-12-03'),
(161, 7, 'TBC130007028', 1, 'Edith', 'Washington', 'Gandhi', 'H', 1, 'San José Iturbide', 'México', '1998-12-01'),
(162, 7, 'TBC130007029', 1, 'Germán', 'Washington', 'Gandhi', 'H', 1, 'San José Iturbide', 'México', '1998-12-01'),
(163, 8, 'TBC130008015', 1, 'Karla Marisol', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1998-05-25'),
(164, 8, 'TBC130008016', 1, 'Rocío Alejandra', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1996-09-10'),
(165, 8, 'TBC130008017', 0, 'Alejandro', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1998-07-20'),
(166, 8, 'TBC130008018', 1, 'Patricia', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', NULL),
(167, 8, 'TBC130008019', 1, 'Sergio', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1995-10-01'),
(168, 8, 'TBC130008020', 0, 'Cristina', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1998-01-08'),
(169, 8, 'TBC130008021', 1, 'María Salomé', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1997-05-04'),
(170, 8, 'TBC130008022', 1, 'Jorge Luis', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1996-12-21'),
(171, 8, 'TBC130008023', 1, 'María Araceli', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1995-04-17'),
(172, 8, 'TBC130008024', 0, 'María Inés', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1996-12-09'),
(173, 8, 'TBC130008025', 1, 'María Ofelia', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1990-04-04'),
(174, 8, 'TBC130008026', 0, 'Humberto', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1996-09-10'),
(175, 8, 'TBC130008027', 0, 'Delfino', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1997-10-27'),
(176, 8, 'TBC130008028', 0, 'Mauricio', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1997-02-26'),
(177, 8, 'TBC130008029', 1, 'Cristhoper Guillermo', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1997-02-12'),
(178, 8, 'TBC130008030', 0, 'Gregorio', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1996-06-22'),
(179, 8, 'TBC130008031', 1, 'Juan Diego', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1995-12-28'),
(180, 8, 'TBC130008032', 1, 'María Concepción', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1997-12-08'),
(181, 8, 'TBC130008033', 0, 'Alejandro', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1995-01-16'),
(182, 8, 'TBC130008034', 1, 'Carlos Ignacio', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1998-07-01'),
(183, 8, 'TBC130008035', 1, 'Dulce Marisol', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1996-04-20'),
(184, 8, 'TBC130008036', 0, 'Juan Geovany', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1997-07-04'),
(185, 8, 'TBC130008037', 0, 'José Mauricio', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1996-02-23'),
(186, 8, 'TBC130008038', 0, 'Nestor', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1998-01-21'),
(187, 8, 'TBC130008039', 0, 'José Armando', 'Washington', 'Gandhi', 'H', 1, 'San Luis de la Paz', 'México', '1997-08-05'),
(188, 8, 'TBC130008040', 1, 'Yazmín', 'Washington', 'Gandhi', 'M', 1, 'San Luis de la Paz', 'México', '1998-07-21'),
(189, 8, 'TBC130008041', 0, 'Isidro', 'Washington', 'Ludovico', 'H', 1, 'San Luis de la Paz', 'México', '1994-04-02'),
(190, 8, 'TBC130008042', 1, 'Michel Gisela', 'Washington', 'Ludovico', 'M', 1, 'San Luis de la Paz', 'México', '1996-03-05'),
(191, 8, 'TBC130008043', 1, 'María Isabel', 'Washington', 'Ludovico', 'M', 1, 'San Luis de la Paz', 'México', '1994-11-05'),
(192, 8, 'TBC130008044', 0, 'Martha Lorena', 'Washington', 'Ludovico', 'M', 1, 'San Luis de la Paz', 'México', '1995-05-04'),
(193, 8, 'TBC130008045', 0, 'César Geovanny', 'Washington', 'Ludovico', 'H', 1, 'San Luis de la Paz', 'México', '1994-03-07'),
(194, 8, 'TBC130008046', 0, 'Karla Lizbeth', 'Washington', 'Ludovico', 'M', 1, 'San Luis de la Paz', 'México', '1997-11-14'),
(195, 8, 'TBC130008047', 1, 'Andrés', 'Washington', 'Ludovico', 'H', 1, 'San Luis de la Paz', 'México', '1996-08-19'),
(196, 8, 'TBC130008048', 0, 'Juan de Dios', 'Washington', 'Ludovico', 'H', 1, 'San Luis de la Paz', 'México', '1994-12-16'),
(197, 8, 'TBC130008049', 0, 'Héctor', 'Washington', 'Ludovico', 'H', 1, 'San Luis de la Paz', 'México', '1998-05-18'),
(198, 8, 'TBC130008050', 0, 'Abigail', 'Washington', 'Ludovico', 'M', 1, 'San Luis de la Paz', 'México', '1998-04-20'),
(199, 8, 'TBC130008051', 0, 'María Juana', 'Washington', 'Ludovico', 'M', 1, 'San Luis de la Paz', 'México', '1997-02-10'),
(200, 8, 'TBC130008052', 0, 'Carlos Rolando', 'Washington', 'Ludovico', 'H', 1, 'San Luis de la Paz', 'México', '1998-08-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `work_centers`
--

CREATE TABLE `work_centers` (
  `id` int(11) NOT NULL,
  `clave` varchar(15) NOT NULL,
  `nombre_ct` varchar(100) NOT NULL,
  `clave_ct` varchar(20) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `encargado` varchar(100) NOT NULL,
  `email_encargado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla de centro de trabajo';

--
-- Volcado de datos para la tabla `work_centers`
--

INSERT INTO `work_centers` (`id`, `clave`, `nombre_ct`, `clave_ct`, `municipio`, `encargado`, `email_encargado`) VALUES
(1, 'CTBC-0001', 'Telebachillerato Comunitario Jerécuaro - El Tepozán', '11ETK0001U', 'Jerécuaro', 'Sergio Jesús Almanza Juárez', 'sealmanza@uveg.edu.mx'),
(2, 'CTBC-0002', 'Telebachillerato Comunitario Manuel Doblado - Calzada de la Merced', '11ETK0002T', 'Manuel Doblado', 'David Chávez Mandujano', 'dachavez@uveg.edu.mx'),
(3, 'CTBC-0003', 'Telebachillerato Comunitario Pénjamo - Cuevas de Morales', '11ETK0003S', 'Pénjamo', 'Wilehand Sandoval Banda', 'wisandoval@uveg.edu.mx'),
(4, 'CTBC-0004', 'Telebachillerato Comunitario Pueblo Nuevo - Progreso de la Unión', '11ETK0004R', 'Pueblo Nuevo', 'Saul Giovanni Reyes Carrillo', 'sareyes@uveg.edu.mx'),
(5, 'CTBC-0005', 'Telebachillerato Comunitario San Diego de la Unión - Santa Anita', '11ETK0005Q', 'San Diego de la Unión', 'Martín Antonio Ramírez Lino', 'malino@uveg.edu.mx'),
(6, 'CTBC-0006', 'Telebachillerato Comunitario San Felipe - La Sauceda de la Luz', '11ETK0006P', 'San Felipe', 'Norma Alejandra Aguilar Juárez', 'noaguilar@uveg.edu.mx'),
(7, 'CTBC-0007', 'Telebachillerato Comunitario San José Iturbide - La Escondida', '11ETK0007O', 'San José Iturbide', 'Juan Antonio Flores Arredondo', 'anflores@uveg.edu.mx'),
(8, 'CTBC-0008', 'Telebachillerato Comunitario San Luis de la Paz - San Isidro', '11ETK0008N', 'San Luis de la Paz', 'Alejandra González Arredondo', 'alarredondo@uveg.edu.mx'),
(9, 'CTBC-0009', 'Telebachillerato Comunitario San Miguel de Allende - Los Galvanes', '11ETK0009M', 'San Miguel de Allende', 'María Lemus García', 'malemus@uveg.edu.mx'),
(10, 'CTBC-0010', 'Telebachillerato Comunitario Victoria - Malinto', '11ETK0010B', 'Victoria', 'Brenda Virginia Urías Ruiz', 'brurias@uveg.edu.mx'),
(11, 'CTBC-0011', 'Telebachillerato Comunitario Abasolo - Chamacua', '11ETK0033M', 'Abasolo', 'Marcelino Rodríguez Hernández', 'marodriguez@uveg.edu.mx'),
(12, 'CTBC-0012', 'Telebachillerato Comunitario Abasolo - Luz de Quintana', '11ETK0032N', 'Abasolo', 'Gabriela García González', 'gagonzalez@uveg.edu.mx'),
(13, 'CTBC-0013', 'Telebachillerato Comunitario Abasolo - San Isidro', '11ETK0031O', 'Abasolo', 'Alejandro Quintero Alcacio', 'alquintero@uveg.edu.mx'),
(14, 'CTBC-0014', 'Telebachillerato Comunitario Acámbaro - La Ortiga', '11ETK0114X', 'Acámbaro', 'Jonatan Salvador Rivera García', 'jorivera@uveg.edu.mx'),
(15, 'CTBC-0015', 'Telebachillerato Comunitario Acámbaro - Monte Prieto', '11ETK0034L', 'Acámbaro', 'María Guadalupe Esmeralda Hernández Meza', 'mahernandez@uveg.edu.mx'),
(16, 'CTBC-0016', 'Telebachillerato Comunitario Acámbaro - San Mateo Tocuaro', '11ETK0133L', 'Acámbaro', 'Juan Manuel Luna Mora', 'juluna@uveg.edu.mx'),
(17, 'CTBC-0017', 'Telebachillerato Comunitario Apaseo el Alto - Congregación de la Cruz (La Cueva)', '11ETK0035K', 'Apaseo el Alto', 'Ana Hilda Arreguín Cervantes', 'anarreguin@uveg.edu.mx'),
(18, 'CTBC-0018', 'Telebachillerato Comunitario Apaseo el Alto - El Durazno', '11ETK0014Y', 'Apaseo el Alto', 'María Fabiola Bernal Nieto', 'mabernal@uveg.edu.mx'),
(19, 'CTBC-0019', 'Telebachillerato Comunitario Apaseo el Alto - El Salto de Espejo', '11ETK0134K', 'Apaseo el Alto', 'Cesar Augusto De los Cobos Urtusastegui', 'cecobos@uveg.edu.mx'),
(20, 'CTBC-0020', 'Telebachillerato Comunitario Apaseo el Alto - San Juan del Llanito', '11ETK0115W', 'Apaseo el Alto', 'María del Carmen Montes Flores', 'mamontes@uveg.edu.mx'),
(21, 'CTBC-0021', 'Telebachillerato Comunitario Apaseo el Grande - El Tunal (Los Olivos)', '11ETK0116V', 'Apaseo el Grande', 'Thalia Luna Rodríguez', 'thluna@uveg.edu.mx'),
(22, 'CTBC-0022', 'Telebachillerato Comunitario Apaseo el Grande - Ixtla (San Miguel de Ixtla)', '11ETK0036J', 'Apaseo el Grande', 'Nelsy Amalia Ortega Puerto', 'neortega@uveg.edu.mx'),
(23, 'CTBC-0023', 'Telebachillerato Comunitario Atarjea - La Tapona', '11ETK0056X', 'Atarjea', 'Norma Hernández Aguas', 'nohernandez@uveg.edu.mx'),
(24, 'CTBC-0024', 'Telebachillerato Comunitario Atarjea - Mangas Cuatas', '11ETK0117U', 'Atarjea', 'Laura Leticia Flores Hurtado', 'laflores@uveg.edu.mx'),
(25, 'CTBC-0025', 'Telebachillerato Comunitario Atarjea - San Juan de Dios', '11ETK0057W', 'Atarjea', 'Pablo Rivas Loyola', 'parivas@uveg.edu.mx'),
(26, 'CTBC-0026', 'Telebachillerato Comunitario Comonfort - La Borunda', '11ETK0037I', 'Comonfort', 'Juan Carlos Gómez Olalde', 'jugomez@uveg.edu.mx'),
(27, 'CTBC-0027', 'Telebachillerato Comunitario Comonfort - Ojo de Agua de García', '11ETK0038H', 'Comonfort', 'Edgar Lomas González', 'edlomas@uveg.edu.mx'),
(28, 'CTBC-0028', 'Telebachillerato Comunitario Coroneo - Cebolletas', '11ETK0128Z', 'Coroneo', 'Rubén Francisco Galnarez Zavala', 'rugalnarez@uveg.edu.mx'),
(29, 'CTBC-0029', 'Telebachillerato Comunitario Cortazar - Arreguin de Arriba', '11ETK0040W', 'Cortazar', 'María de la Luz Ceballos Jaramillo', 'maceballos@uveg.edu.mx'),
(30, 'CTBC-0030', 'Telebachillerato Comunitario Cortazar - Bellavista', '11ETK0039G', 'Cortazar', 'Rosa Isela Rodríguez Ramírez', 'rorodriguez@uveg.edu.mx'),
(31, 'CTBC-0031', 'Telebachillerato Comunitario Cortazar - Caracheo', '11ETK0118T', 'Cortazar', 'Alicia Ramírez Jurado', 'alramirez@uveg.edu.mx'),
(32, 'CTBC-0032', 'Telebachillerato Comunitario Cuerámaro - Cerrito de Agua Caliente', '11ETK0041V', 'Cuerámaro', 'Armando González Escobar', 'argonzalez@uveg.edu.mx'),
(33, 'CTBC-0033', 'Telebachillerato Comunitario Doctor Mora - La Redonda', '11ETK0042U', 'Doctor Mora', 'Salvador Celestino Gudiño', 'sacelestino@uveg.edu.mx'),
(34, 'CTBC-0034', 'Telebachillerato Comunitario Doctor Mora - Peña Rodada', '11ETK0043T', 'Doctor Mora', 'Brenda Edith Portilla Melgarejo', 'beportilla@uveg.edu.mx'),
(35, 'CTBC-0035', 'Telebachillerato Comunitario Dolores Hidalgo - Jamaica', '11ETK0049N', 'Dolores Hidalgo, C.I.N', 'Juana Elizabeth Cruz Palacios', 'jucruz@uveg.edu.mx'),
(36, 'CTBC-0036', 'Telebachillerato Comunitario Dolores Hidalgo - La California', '11ETK0048O', 'Dolores Hidalgo, C.I.N', 'Maciel Romo Zamarrón', 'mazamarron@uveg.edu.mx'),
(37, 'CTBC-0037', 'Telebachillerato Comunitario Dolores Hidalgo - La Haciendita', '11ETK0046Q', 'Dolores Hidalgo, C.I.N', 'Gema Dolores Romero Cabrera', 'geromero@uveg.edu.mx'),
(38, 'CTBC-0038', 'Telebachillerato Comunitario Dolores Hidalgo - Las Yerbas', '11ETK0045R', 'Dolores Hidalgo, C.I.N', 'José Lira Mejía', 'jolira@uveg.edu.mx'),
(39, 'CTBC-0039', 'Telebachillerato Comunitario Dolores Hidalgo - Palmitas', '11ETK0044S', 'Dolores Hidalgo, C.I.N', 'José Luis Guerrero Mendoza', 'joguerrero@uveg.edu.mx'),
(40, 'CTBC-0040', 'Telebachillerato Comunitario Dolores Hidalgo - San Martín de Terreros', '11ETK0050C', 'Dolores Hidalgo, C.I.N', 'Hugo Bárcenas Salinas', 'hubarcenas@uveg.edu.mx'),
(41, 'CTBC-0041', 'Telebachillerato Comunitario Dolores Hidalgo - Ojo de Agua de Cervantes', '11ETK0135J', 'Dolores Hidalgo, C.I.N', 'Claudia Marisol Solís Guerrero', NULL),
(42, 'CTBC-0042', 'Telebachillerato Comunitario Guanajuato - Campuzano', '11ETK0129Z', 'Guanajuato', 'Nadia del Rocio Rocha Panales', 'derocha@uveg.edu.mx'),
(43, 'CTBC-0043', 'Telebachillerato Comunitario Guanajuato - La Concepción', '11ETK0058V', 'Guanajuato', 'Jesús Antonio Ramírez Navarro', 'jeramirez@uveg.edu.mx'),
(44, 'CTBC-0044', 'Telebachillerato Comunitario Guanajuato - La Trinidad', '11ETK0013Z', 'Guanajuato', 'Sergio Varela Piña', NULL),
(45, 'CTBC-0045', 'Telebachillerato Comunitario Guanajuato - Mineral del Cubo', '11ETK0051B', 'Guanajuato', 'Manuel González Martínez', 'magonzalez@uveg.edu.mx'),
(46, 'CTBC-0046', 'Telebachillerato Comunitario Huanímaro - Ojos de Agua', '11ETK0053Z', 'Huaní­maro', 'Pedro Hernández Luna', 'pehernandez@uveg.edu.mx'),
(47, 'CTBC-0047', 'Telebachillerato Comunitario Huanímaro - Rancho de Guadalupe (El Gato)', '11ETK0052A', 'Huaní­maro', 'Sergio Maya Sánchez', 'semaya@uveg.edu.mx'),
(48, 'CTBC-0048', 'Telebachillerato Comunitario Irapuato - Guadalupe de Rivera', '11ETK0016W', 'Irapuato', 'Sandra Soledad Patiño Rodríguez', 'sapatino@uveg.edu.mx'),
(49, 'CTBC-0049', 'Telebachillerato Comunitario Irapuato - Santa Rosa Temascatío', '11ETK0017V', 'Irapuato', 'Teresita de Jesús Aguas Valadez', 'tevaladez@uveg.edu.mx'),
(50, 'CTBC-0050', 'Telebachillerato Comunitario Jerécuaro - Candelas', '11ETK0061I', 'Jerécuaro', 'Sergio Malagón Aguilar', 'semalagon@uveg.edu.mx'),
(51, 'CTBC-0051', 'Telebachillerato Comunitario Jerécuaro - Canoas', '11ETK0060J', 'Jerécuaro', 'Genaro García Camacho', 'gegarcia@uveg.edu.mx'),
(52, 'CTBC-0052', 'Telebachillerato Comunitario Jerécuaro - El Fresno', '11ETK0018U', 'Jerécuaro', 'María Guadalupe Cervantes García', 'macervantes@uveg.edu.mx'),
(53, 'CTBC-0053', 'Telebachillerato Comunitario Jerécuaro - La Mina', '11ETK0059U', 'Jerécuaro', 'Juan Antonio Medina Rodríguez', 'jumedina@uveg.edu.mx'),
(54, 'CTBC-0054', 'Telebachillerato Comunitario Jerécuaro - Salto de Peña', '11ETK0055Y', 'Jerécuaro', 'Saúl Puga Parra', 'sapuga@uveg.edu.mx'),
(55, 'CTBC-0055', 'Telebachillerato Comunitario Jerécuaro - San Lorenzo', '11ETK0054Z', 'Jerécuaro', 'Hector Manuel Astudillo Escobar', 'heastudillo@uveg.edu.mx'),
(56, 'CTBC-0056', 'Telebachillerato Comunitario León - Nuevo Lindero', '11ETK0019T', 'León', 'Brenda Yadira Prieto Rodríguez', 'brprieto@uveg.edu.mx'),
(57, 'CTBC-0057', 'Telebachillerato Comunitario León - Ramillete', '11ETK0020I', 'León', 'Arely Vázquez Morales', 'arvazquez@uveg.edu.mx'),
(58, 'CTBC-0058', 'Telebachillerato Comunitario León - Vaquerías', '11ETK0062H', 'León', 'Josue Anuahar Espinoza Rodríguez', 'joespinoza@uveg.edu.mx'),
(59, 'CTBC-0059', 'Telebachillerato Comunitario Manuel Doblado - Frías', '11ETK0119S', 'Manuel Doblado', 'Ángel Fabián Muñoz Díaz', 'anmunoz@uveg.edu.mx'),
(60, 'CTBC-0060', 'Telebachillerato Comunitario Manuel Doblado - Rancho Nuevo de Atotonilquillo', '11ETK0021H', 'Manuel Doblado', 'Jacqueline Jaramillo Rojas', 'jarojas@uveg.edu.mx'),
(61, 'CTBC-0061', 'Telebachillerato Comunitario Manuel Doblado - Zapote de Adjuntas', '11ETK0127A', 'Manuel Doblado', 'Iván René Gutiérrez Hernández', 'ivgutierrez@uveg.edu.mx'),
(62, 'CTBC-0062', 'Telebachillerato Comunitario Moroleón - Cuanamuco', '11ETK0063G', 'Moroleón', 'Luis Francisco Sánchez Lemus', 'lusanchez@uveg.edu.mx'),
(63, 'CTBC-0063', 'Telebachillerato Comunitario Moroleón - La Ordeña', '11ETK0145Q', 'Moroleón', 'María del Carmen Tinoco García', 'matinoco@uveg.edu.mx'),
(64, 'CTBC-0064', 'Telebachillerato Comunitario Ocampo - El Potrero', '11ETK0064F', 'Ocampo', 'Jesús Gregorio González Moya', 'jegonzalez@uveg.edu.mx'),
(65, 'CTBC-0065', 'Telebachillerato Comunitario Ocampo - La Escondida', '11ETK0120H', 'Ocampo', 'Juan Pablo Rodríguez Monroy', 'parodriguez@uveg.edu.mx'),
(66, 'CTBC-0066', 'Telebachillerato Comunitario Pénjamo - El Comalillo', '11ETK0067C', 'Pénjamo', 'Juan de Dios López Villagómez', 'dilopez@uveg.edu.mx'),
(67, 'CTBC-0067', 'Telebachillerato Comunitario Pénjamo - La Madeja', '11ETK0136I', 'Pénjamo', 'Marina Moreno Maldonado', NULL),
(68, 'CTBC-0068', 'Telebachillerato Comunitario Pénjamo - Mangas de Corralejo', '11ETK0066D', 'Pénjamo', 'Ana María Guevara Yañez', 'anguevara@uveg.edu.mx'),
(69, 'CTBC-0069', 'Telebachillerato Comunitario Pénjamo - Palo Alto de Abajo', '11ETK0065E', 'Pénjamo', 'José Ramón Solís Hernández', 'josolis@uveg.edu.mx'),
(70, 'CTBC-0070', 'Telebachillerato Comunitario Pénjamo - Zapote de Cestau', '11ETK0121G', 'Pénjamo', 'María Elena Medina Cano', 'elmedina@uveg.edu.mx'),
(71, 'CTBC-0071', 'Telebachillerato Comunitario Purísima del Rincón - Dolores', '11ETK0130O', 'Purísima del Rincón', 'Ignacio Isaí Barroso Rivas', 'igbarroso@uveg.edu.mx'),
(72, 'CTBC-0072', 'Telebachillerato Comunitario Purísima del Rincón - La Trinidad', '11ETK0146P', 'Purísima del Rincón', 'José de Jesús Estrada González', 'jeestrada@uveg.edu.mx'),
(73, 'CTBC-0073', 'Telebachillerato Comunitario Purisima del Rincón - Tepetate del Gallo', '11ETK0068B', 'Purísima del Rincón', 'Héctor Federico González Aranda', 'hegonzalez@uveg.edu.mx'),
(74, 'CTBC-0074', 'Telebachillerato Comunitario Romita - Los Amoles', '11ETK0069A', 'Romita', 'Pablo Delgado Rojas', 'padelgado@uveg.edu.mx'),
(75, 'CTBC-0075', 'Telebachillerato Comunitario Salamanca - Doña Rosa (El Chicote)', '11ETK0070Q', 'Salamanca', 'Rosa Jessica García González', 'rogonzalez@uveg.edu.mx'),
(76, 'CTBC-0076', 'Telebachillerato Comunitario Salamanca - El Recuerdo de Ancón', '11ETK0137H', 'Salamanca', 'Luis Fernando Patron Barbosa', 'lupatron@uveg.edu.mx'),
(77, 'CTBC-0077', 'Telebachillerato Comunitario Salamanca - La Ordeña', '11ETK0147O', 'Salamanca', 'Angélica González Páramo', NULL),
(78, 'CTBC-0078', 'Telebachillerato Comunitario Salvatierra - Estancia del Carmen de Maravatío', '11ETK0071P', 'Salvatierra', 'Fabiola Jiménez Carreño', 'fajimenez@uveg.edu.mx'),
(79, 'CTBC-0079', 'Telebachillerato Comunitario Salvatierra - La Luz', '11ETK0122F', 'Salvatierra', 'Jimena Gordillo Escamilla', 'jigordillo@uveg.edu.mx'),
(80, 'CTBC-0080', 'Telebachillerato Comunitario San Diego de la Unión - Barranca del Cano', '11ETK0076K', 'San Diego de la Unión', 'Pedro Vargas Martínez', 'pevargas@uveg.edu.mx'),
(81, 'CTBC-0081', 'Telebachillerato Comunitario San Diego de la Unión - El Rosalito', '11ETK0075L', 'San Diego de la Unión', 'José Antonio Gloria Almaguer', 'jogloria@uveg.edu.mx'),
(82, 'CTBC-0082', 'Telebachillerato Comunitario San Diego de la Unión - Ex Hacienda la Jaula', '11ETK0074M', 'San Diego de la Unión', 'Lilia Rebeca Romero Álvarez', 'liromero@uveg.edu.mx'),
(83, 'CTBC-0083', 'Telebachillerato Comunitario San Diego de la Unión - La Sauceda', '11ETK0138G', 'San Diego de la Unión', 'Erika Liliana Esquivel Padierna', 'eresquivel@uveg.edu.mx'),
(84, 'CTBC-0084', 'Telebachillerato Comunitario San Diego de la Unión - Mulatos', '11ETK0073N', 'San Diego de la Unión', 'María del Socorro Baca Rodríguez', 'debaca@uveg.edu.mx'),
(85, 'CTBC-0085', 'Telebachillerato Comunitario San Diego de la Unión - Peñuelas', '11ETK0072O', 'San Diego de la Unión', 'Laura Martínez Hernández', 'lamartinez@uveg.edu.mx'),
(86, 'CTBC-0086', 'Telebachillerato Comunitario San Diego de la Unión - San Antonio', '11ETK0148N', 'San Diego de la Unión', 'Adriána González Arevalo', 'adgonzalez@uveg.edu.mx'),
(87, 'CTBC-0087', 'Telebachillerato Comunitario San Felipe - Coecillo', '11ETK0023F', 'San Felipe', 'Dolores Berenice Aceves Rocha', 'doaceves@uveg.edu.mx'),
(88, 'CTBC-0088', 'Telebachillerato Comunitario San Felipe - El Carretón', '11ETK0140V', 'San Felipe', 'Aurelio Zúñiga Juárez', 'auzuniga@uveg.edu.mx'),
(89, 'CTBC-0089', 'Telebachillerato Comunitario San Felipe - Estancia de San Francisco', '11ETK0082V', 'San Felipe', 'Gloria Gisela Piñon Martínez', 'glpinon@uveg.edu.mx'),
(90, 'CTBC-0090', 'Telebachillerato Comunitario San Felipe - Estancia del Cubo', '11ETK0081W', 'San Felipe', 'Julio César Padrón Mena', 'jupadron@uveg.edu.mx'),
(91, 'CTBC-0091', 'Telebachillerato Comunitario San Felipe - Guadalupe', '11ETK0139F', 'San Felipe', 'Aurora Camacho Rodríguez', 'aucamacho@uveg.edu.mx'),
(92, 'CTBC-0092', 'Telebachillerato Comunitario San Felipe - Jesús María', '11ETK0024E', 'San Felipe', 'Herón Sánchez Rangel', 'hesanchez@uveg.edu.mx'),
(93, 'CTBC-0093', 'Telebachillerato Comunitario San Felipe - La Lagunita', '11ETK0080X', 'San Felipe', 'Maricela Trujillo Hernández', 'matrujillo@uveg.edu.mx'),
(94, 'CTBC-0094', 'Telebachillerato Comunitario San Felipe - Mastranto del Refugio', '11ETK0079H', 'San Felipe', 'Alfonso Luna Machuca', 'alluna@uveg.edu.mx'),
(95, 'CTBC-0095', 'Telebachillerato Comunitario San Felipe - Molino de San José', '11ETK0078I', 'San Felipe', 'Alejandra de la Luz Aguiñaga Malacara', 'alaguinaga@uveg.edu.mx'),
(96, 'CTBC-0096', 'Telebachillerato Comunitario San Felipe - San Isidro de Capellanía', '11ETK0123E', 'San Felipe', 'María de la Luz Martínez Barbosa', 'lumartinez@uveg.edu.mx'),
(97, 'CTBC-0097', 'Telebachillerato Comunitario San Felipe - San José del Tanque', '11ETK0077J', 'San Felipe', 'Teresa Monserrat Rodríguez Carreón', 'terodriguez@uveg.edu.mx'),
(98, 'CTBC-0098', 'Telebachillerato Comunitario San Francisco del Rincón - El Nacimiento', '11ETK0084T', 'San Francisco del Rincón', 'Gerardo Santana Islas', 'gesantana@uveg.edu.mx'),
(99, 'CTBC-0099', 'Telebachillerato Comunitario San Francisco del Rincón - San José de la Barranca', '11ETK0083U', 'San Francisco del Rincón', 'Diego Eduardo Morales Lopez', 'edmorales@uveg.edu.mx'),
(100, 'CTBC-0100', 'Telebachillerato Comunitario San Francisco del Rincón - Sauz de Armenta', '11ETK0022G', 'San Francisco del Rincón', 'Juan Antonio Sotelo Nava', 'jusotelo@uveg.edu.mx'),
(101, 'CTBC-0101', 'Telebachillerato Comunitario San José Iturbide - El Cerrito del Arenal', '11ETK0087Q', 'San José Iturbide', 'Juan Carlos Martínez Murguía', 'camurguia@uveg.edu.mx'),
(102, 'CTBC-0102', 'Telebachillerato Comunitario San José Iturbide - El Zapote', '11ETK0141U', 'San José Iturbide', 'Jesús Omar Jaime Valencia', 'jejaime@uveg.edu.mx'),
(103, 'CTBC-0103', 'Telebachillerato Comunitario San José Iturbide - La Fragua', '11ETK0086R', 'San José Iturbide', 'Diana Verónica Medina Jaramillo', 'dimedina@uveg.edu.mx'),
(104, 'CTBC-0104', 'Telebachillerato Comunitario San José Iturbide - Medina', '11ETK0085S', 'San José Iturbide', 'Lucia Jiménez Morales', 'lujimenez@uveg.edu.mx'),
(105, 'CTBC-0105', 'Telebachillerato Comunitario San Luis de la Paz - El Varal (La Merced)', '11ETK0092B', 'San Luis de la Paz', 'Juan Fabián Torres Ávila', 'fatorres@uveg.edu.mx'),
(106, 'CTBC-0106', 'Telebachillerato Comunitario San Luis de la Paz - La Mesa de Jesús', '11ETK0091C', 'San Luis de la Paz', 'Carlos García Solís', 'casolis@uveg.edu.mx'),
(107, 'CTBC-0107', 'Telebachillerato Comunitario San Luis de la Paz - San Juan de los Rangeles', '11ETK0090D', 'San Luis de la Paz', 'Erendida García Camacho', 'ergarcia@uveg.edu.mx'),
(108, 'CTBC-0108', 'Telebachillerato Comunitario San Luis de la Paz - San Nicolas del Carmen', '11ETK0089O', 'San Luis de la Paz', 'Oscar Eduardo Vázquez Arredondo', 'osvazquez@uveg.edu.mx'),
(109, 'CTBC-0109', 'Telebachillerato Comunitario San Luis de la Paz - Vista Hermosa', '11ETK0088P', 'San Luis de la Paz', 'Ana Rocío Alonso Orta', 'analonso@uveg.edu.mx'),
(110, 'CTBC-0110', 'Telebachillerato Comunitario San Miguel de Allende - Clavellinas', '11ETK0132M', 'San Miguel de Allende', 'Lucrecia Hernández García', 'lugarcia@uveg.edu.mx'),
(111, 'CTBC-0111', 'Telebachillerato Comunitario San Miguel de Allende - Don Francisco', '11ETK0095Z', 'San Miguel de Allende', 'Grisel Guadalupe Gutiérrez Hernández', 'grgutierrez@uveg.edu.mx'),
(112, 'CTBC-0112', 'Telebachillerato Comunitario San Miguel de Allende - Jalpa', '11ETK0131N', 'San Miguel de Allende', 'Ikary Mildret Cerda García', 'ikcerda@uveg.edu.mx'),
(113, 'CTBC-0113', 'Telebachillerato Comunitario San Miguel de Allende - La Huerta', '11ETK0094Z', 'San Miguel de Allende', 'Xochiquetzal Landín Rojas', 'xolandin@uveg.edu.mx'),
(114, 'CTBC-0114', 'Telebachillerato Comunitario San Miguel de Allende - Las Cañas', '11ETK0026C', 'San Miguel de Allende', 'Nayeli del Carmen Hernández Vera', 'cahernandez@uveg.edu.mx'),
(115, 'CTBC-0115', 'Telebachillerato Comunitario San Miguel de Allende - Los González', '11ETK0093A', 'San Miguel de Allende', 'José Luis Rodríguez Arellano', 'lurodriguez@uveg.edu.mx'),
(116, 'CTBC-0116', 'Telebachillerato Comunitario San Miguel de Allende - Pantoja', '11ETK0028A', 'San Miguel de Allende', 'Erika del Carmen Montes de Oca Margaiz', 'ermargaiz@uveg.edu.mx'),
(117, 'CTBC-0117', 'Telebachillerato Comunitario Santa Catarina - Ortega', '11ETK0096Y', 'Santa Catarina', 'Eva García Moya', 'evgarcia@uveg.edu.mx'),
(118, 'CTBC-0118', 'Telebachillerato Comunitario Santa Cruz de Juventino Rosas - El Naranjillo', '11ETK0142T', 'Santa Cruz de Juventino Rosas', 'Demetrio Antonio Ramírez Montoya', 'deramirez@uveg.edu.mx'),
(119, 'CTBC-0119', 'Telebachillerato Comunitario Santa Cruz de Juventino Rosas - Mesas De Acosta', '11ETK0098W', 'Santa Cruz de Juventino Rosas', 'Juan Luis Rodríguez Noria', 'jlrodriguez@uveg.edu.mx'),
(120, 'CTBC-0120', 'Telebachillerato Comunitario Santa Cruz de Juventino Rosas - San Julian de Tierra Blanca', '11ETK0097X', 'Santa Cruz de Juventino Rosas', 'Noemí Gasca González', 'nogasca@uveg.edu.mx'),
(121, 'CTBC-0121', 'Telebachillerato Comunitario Silao - Comanjilla', '11ETK0149M', 'Silao', 'Francisco José De la Garza Jiménez', 'frdelagarza@uveg.edu.mx'),
(122, 'CTBC-0122', 'Telebachillerato Comunitario Silao - San Agustín de las Flores', '11ETK0143S', 'Silao', 'Ma. de los Ángeles Goytia Vega', 'magoytia@uveg.edu.mx'),
(123, 'CTBC-0123', 'Telebachillerato Comunitario Silao de la Victoria - Loma De Yerbabuena', '11ETK0101T', 'Silao', 'Yolanda Abigail Hinojosa Sauceda', 'yohinojosa@uveg.edu.mx'),
(124, 'CTBC-0124', 'Telebachillerato Comunitario Silao de la Victoria - Medranos', '11ETK0029Z', 'Silao', 'Ma. Elena Azpitarte Almaguer', 'maazpitarte@uveg.edu.mx'),
(125, 'CTBC-0125', 'Telebachillerato Comunitario Silao de la Victoria - Napoles', '11ETK0100U', 'Silao', 'María del Rocío Zamudio Rocha', 'rozamudio@uveg.edu.mx'),
(126, 'CTBC-0126', 'Telebachillerato Comunitario Silao de la Victoria - San Andres De La Baraña', '11ETK0099V', 'Silao', 'Sofía Abundiz González', 'soabundiz@uveg.edu.mx'),
(127, 'CTBC-0127', 'Telebachillerato Comunitario Tierra Blanca - El Sauz', '11ETK0102S', 'Tierra Blanca', 'Elizabeth Valdez Pérez', 'elvaldez@uveg.edu.mx'),
(128, 'CTBC-0128', 'Telebachillerato Comunitario Uriangato - El Derramadero', '11ETK0103R', 'Uriangato', 'Josue Iván Rodríguez Balcazar', 'ivrodriguez@uveg.edu.mx'),
(129, 'CTBC-0129', 'Telebachillerato Comunitario Valle de Santiago - El Borrego', '11ETK0113Y', 'Valle de Santiago', 'Martha Saldívar Valtierra', NULL),
(130, 'CTBC-0130', 'Telebachillerato Comunitario Valle de Santiago - El Tambor', '11ETK0107N', 'Valle de Santiago', 'Gabriel León García', 'galeon@uveg.edu.mx'),
(131, 'CTBC-0131', 'Telebachillerato Comunitario Valle de Santiago - Los Martinez', '11ETK0106O', 'Valle de Santiago', 'María Lucia González Ramos', 'laramos@uveg.edu.mx'),
(132, 'CTBC-0132', 'Telebachillerato Comunitario Valle de Santiago - Sabino De Santa Rosa', '11ETK0105P', 'Valle de Santiago', 'Marco Julio García García', 'magarciag@uveg.edu.mx'),
(133, 'CTBC-0133', 'Telebachillerato Comunitario Valle de Santiago - San Cristobal', '11ETK0104Q', 'Valle de Santiago', 'María Elena Albarran Hernández', 'maalbarran@uveg.edu.mx'),
(134, 'CTBC-0134', 'Telebachillerato Comunitario Valle de Santiago - Zapotillo De Mogotes', '11ETK0125C', 'Valle de Santiago', 'Alma Fabiola Arteaga Cabrera', 'alarteaga@uveg.edu.mx'),
(135, 'CTBC-0135', 'Telebachillerato Comunitario Victoria - Mision De Arnedo', '11ETK0108M', 'Victoria', 'Cindy Sarahi Mata Sánchez', 'cimata@uveg.edu.mx'),
(136, 'CTBC-0136', 'Telebachillerato Comunitario Victoria - Puerto de Palmas', '11ETK0144R', 'Victoria', 'Silvia Fonseca Rangel', NULL),
(137, 'CTBC-0137', 'Telebachillerato Comunitario Xichú - Buenavista (Puerto De Buenavista)', '11ETK0110A', 'Xichú', 'Mario Emmanuel Velázquez Ramírez', 'mavelazquez@uveg.edu.mx'),
(138, 'CTBC-0138', 'Telebachillerato Comunitario Xichú - El Aguacate', '11ETK0109L', 'Xichú', 'Olga María Mata García', 'olmata@uveg.edu.mx'),
(139, 'CTBC-0139', 'Telebachillerato Comunitario Yuriria - La Calera', '11ETK0126B', 'Yuriria', 'Ana Gabriela Barajas Camarena', 'anbarajas@uveg.edu.mx'),
(140, 'CTBC-0140', 'Telebachillerato Comunitario Yuriria - Porullo', '11ETK0112Z', 'Yuriria', 'Nancy Jazmín González Pantoja', 'nagonzalez@uveg.edu.mx'),
(141, 'CTBC-0141', 'Telebachillerato Comunitario Yuriria - San Andrés Enguaro', '11ETK0030P', 'Yuriria', 'Eduardo Vega Estrada', 'edestrada@uveg.edu.mx'),
(142, 'CTBC-0142', 'Telebachillerato Comunitario Yuriria - Xoconoxtle', '11ETK0111Z', 'Yuriria', 'María Esther Herrejón Nieto', 'maherrejon@uveg.edu.mx');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD KEY `calificaciones_materias_id_fk` (`id_materia`),
  ADD KEY `calificaciones_students_id_fk` (`id_student`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_work_centers_id_fk` (`id_work_center`);

--
-- Indices de la tabla `work_centers`
--
ALTER TABLE `work_centers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `work_centers_clave_ct_uindex` (`clave_ct`),
  ADD UNIQUE KEY `work_centers_clave_uindex` (`clave`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `work_centers`
--
ALTER TABLE `work_centers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_materias_id_fk` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `calificaciones_students_id_fk` FOREIGN KEY (`id_student`) REFERENCES `students` (`id`);

--
-- Filtros para la tabla `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_work_centers_id_fk` FOREIGN KEY (`id_work_center`) REFERENCES `work_centers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

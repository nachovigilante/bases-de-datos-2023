-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 07:58 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escuela`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `dni` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `fecha_nac` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `direc_calle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `direc_nro` int NOT NULL,
  `direc_prov` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `curso` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`dni`, `nombre`, `apellido`, `fecha_nac`, `email`, `direc_calle`, `direc_nro`, `direc_prov`, `curso`) VALUES
(1101429, 'Diego', 'Rodríguez', '1990-07-18', 'diego.rodríguez@gmail.com', 'Calle 474', 209, 'Buenos Aires', 'NG3B'),
(1501502, 'María', 'Pérez', '1993-03-15', 'maría.pérez@gmail.com', 'Calle 669', 231, 'Buenos Aires', 'ND4A'),
(2084514, 'Juan', 'Díaz', '2017-02-20', 'juan.díaz@gmail.com', 'Calle 317', 211, 'Buenos Aires', 'NR3C'),
(8628083, 'Miguel', 'Martínez', '1993-05-08', 'miguel.martínez@gmail.com', 'Calle 601', 824, 'Buenos Aires', 'NR4E'),
(9673098, 'Pedro', 'Gómez', '2001-05-27', 'pedro.gómez@hotmail.com', 'Calle 422', 183, 'Buenos Aires', 'NR5A'),
(10309457, 'Luisa', 'González', '2005-06-23', 'luisa.gonzález@gmail.com', 'Calle 981', 466, 'Buenos Aires', 'NG3A'),
(12524545, 'Miguel', 'Díaz', '2014-11-16', 'miguel.díaz@gmail.com', 'Calle 642', 260, 'Buenos Aires', 'NG4C'),
(14208198, 'Miguel', 'Sánchez', '1990-12-03', 'miguel.sánchez@hotmail.com', 'Calle 604', 1, 'Buenos Aires', 'NR4E'),
(15321538, 'María', 'Pérez', '2007-09-15', 'maría.pérez@yahoo.com', 'Calle 183', 319, 'Buenos Aires', 'NR4D'),
(17161152, 'Diego', 'Fernández', '1991-04-23', 'diego.fernández@yahoo.com', 'Calle 349', 139, 'Buenos Aires', 'NR3B'),
(19702597, 'Pedro', 'Martínez', '2006-06-01', 'pedro.martínez@gmail.com', 'Calle 670', 85, 'Buenos Aires', 'NG4B'),
(21181466, 'Miguel', 'Gómez', '2004-07-06', 'miguel.gómez@gmail.com', 'Calle 176', 406, 'Buenos Aires', 'NM4C'),
(21598657, 'Laura', 'Gómez', '2015-07-27', 'laura.gómez@gmail.com', 'Calle 833', 980, 'Buenos Aires', 'NG3C'),
(24592814, 'Laura', 'Rodríguez', '2011-10-27', 'laura.rodríguez@gmail.com', 'Calle 27', 624, 'Buenos Aires', 'NR5B'),
(26435838, 'Diego', 'Gómez', '1995-08-20', 'diego.gómez@hotmail.com', 'Calle 253', 557, 'Buenos Aires', 'NM3E'),
(28374185, 'Diego', 'García', '2007-12-18', 'diego.garcía@gmail.com', 'Calle 704', 710, 'Buenos Aires', 'ND5B'),
(28837750, 'Camila', 'Pérez', '2002-04-11', 'camila.pérez@gmail.com', 'Calle 36', 275, 'Buenos Aires', 'NM5D'),
(31818292, 'Ana', 'Díaz', '2001-02-09', 'ana.díaz@gmail.com', 'Calle 848', 822, 'Buenos Aires', 'NR3E'),
(36650640, 'Luisa', 'Gómez', '2018-05-08', 'luisa.gómez@gmail.com', 'Calle 733', 566, 'Buenos Aires', 'NR4E'),
(40850470, 'Juan', 'García', '1997-01-20', 'juan.garcía@gmail.com', 'Calle 177', 358, 'Buenos Aires', 'ND4A'),
(43990147, 'Miguel', 'Sánchez', '2015-02-22', 'miguel.sánchez@gmail.com', 'Calle 885', 321, 'Buenos Aires', 'NH5A'),
(47238882, 'Miguel', 'González', '2006-12-13', 'miguel.gonzález@yahoo.com', 'Calle 21', 315, 'Buenos Aires', 'NG3A'),
(47314067, 'Miguel', 'García', '2017-12-02', 'miguel.garcía@gmail.com', 'Calle 593', 870, 'Buenos Aires', 'NG5A'),
(49860997, 'Carlos', 'Rodríguez', '2015-02-28', 'carlos.rodríguez@hotmail.com', 'Calle 818', 312, 'Buenos Aires', 'NG4C'),
(52396988, 'Miguel', 'Gómez', '1993-02-23', 'miguel.gómez@gmail.com', 'Calle 829', 898, 'Buenos Aires', 'NM5A'),
(54477157, 'Carlos', 'Pérez', '2007-09-09', 'carlos.pérez@hotmail.com', 'Calle 178', 167, 'Buenos Aires', 'NG5B'),
(56956379, 'Ana', 'Díaz', '1994-03-11', 'ana.díaz@hotmail.com', 'Calle 784', 871, 'Buenos Aires', 'NG3D'),
(58184798, 'Laura', 'Pérez', '2005-05-21', 'laura.pérez@gmail.com', 'Calle 523', 491, 'Buenos Aires', 'NH5A'),
(63587390, 'Miguel', 'Díaz', '1996-07-13', 'miguel.díaz@yahoo.com', 'Calle 809', 713, 'Buenos Aires', 'ND5B'),
(64022124, 'Pedro', 'González', '2002-04-19', 'pedro.gonzález@gmail.com', 'Calle 262', 523, 'Buenos Aires', 'NM3C'),
(67252497, 'Laura', 'Martínez', '2004-04-19', 'laura.martínez@yahoo.com', 'Calle 151', 917, 'Buenos Aires', 'NR4A'),
(71321518, 'Carlos', 'Gómez', '1992-11-06', 'carlos.gómez@gmail.com', 'Calle 448', 715, 'Buenos Aires', 'NR5B'),
(72468087, 'Carlos', 'Díaz', '2000-04-16', 'carlos.díaz@hotmail.com', 'Calle 453', 194, 'Buenos Aires', 'NG3B'),
(74236658, 'Camila', 'Díaz', '2014-12-27', 'camila.díaz@gmail.com', 'Calle 549', 151, 'Buenos Aires', 'NM4C'),
(75262032, 'Camila', 'Pérez', '2001-01-12', 'camila.pérez@hotmail.com', 'Calle 572', 713, 'Buenos Aires', 'NM4D'),
(76722215, 'Diego', 'Gómez', '2010-08-18', 'diego.gómez@gmail.com', 'Calle 512', 618, 'Buenos Aires', 'NR5D'),
(78348677, 'Laura', 'Gómez', '2018-01-20', 'laura.gómez@yahoo.com', 'Calle 364', 340, 'Buenos Aires', 'NR3D'),
(80139253, 'Laura', 'Sánchez', '2005-06-12', 'laura.sánchez@hotmail.com', 'Calle 892', 815, 'Buenos Aires', 'NM4A'),
(80447973, 'Laura', 'Pérez', '1992-10-12', 'laura.pérez@yahoo.com', 'Calle 471', 561, 'Buenos Aires', 'ND5A'),
(82387006, 'Camila', 'López', '2011-03-03', 'camila.lópez@gmail.com', 'Calle 88', 614, 'Buenos Aires', 'NM3C'),
(83780891, 'Ana', 'Gómez', '1992-11-04', 'ana.gómez@yahoo.com', 'Calle 312', 335, 'Buenos Aires', 'NG5D'),
(85897346, 'María', 'Rodríguez', '2008-10-05', 'maría.rodríguez@hotmail.com', 'Calle 32', 874, 'Buenos Aires', 'ND4B'),
(85999965, 'Juan', 'Rodríguez', '1995-06-05', 'juan.rodríguez@hotmail.com', 'Calle 64', 353, 'Buenos Aires', 'NR5F'),
(86340230, 'Ana', 'García', '2000-09-25', 'ana.garcía@gmail.com', 'Calle 511', 875, 'Buenos Aires', 'NR3E'),
(86738251, 'Diego', 'Díaz', '2008-06-30', 'diego.díaz@gmail.com', 'Calle 741', 597, 'Buenos Aires', 'NM5B'),
(88574783, 'Diego', 'Rodríguez', '2003-07-05', 'diego.rodríguez@hotmail.com', 'Calle 331', 686, 'Buenos Aires', 'NM3B'),
(90631529, 'Laura', 'López', '1993-02-01', 'laura.lópez@hotmail.com', 'Calle 112', 818, 'Buenos Aires', 'NG4D'),
(96092282, 'Camila', 'Pérez', '1993-05-14', 'camila.pérez@yahoo.com', 'Calle 550', 473, 'Buenos Aires', 'NM5C'),
(97588154, 'Carlos', 'López', '2012-07-25', 'carlos.lópez@gmail.com', 'Calle 957', 565, 'Buenos Aires', 'NG3E'),
(99371614, 'Laura', 'García', '2011-05-12', 'laura.garcía@yahoo.com', 'Calle 579', 368, 'Buenos Aires', 'NR5B');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `codigo` varchar(4) NOT NULL,
  `anio` int NOT NULL,
  `letra` varchar(1) NOT NULL,
  `especialidad` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`codigo`, `anio`, `letra`, `especialidad`) VALUES
('ND3A', 3, 'A', 'ND'),
('ND3B', 3, 'B', 'ND'),
('ND4A', 4, 'A', 'ND'),
('ND4B', 4, 'B', 'ND'),
('ND5A', 5, 'A', 'ND'),
('ND5B', 5, 'B', 'ND'),
('NG3A', 3, 'A', 'NG'),
('NG3B', 3, 'B', 'NG'),
('NG3C', 3, 'C', 'NG'),
('NG3D', 3, 'D', 'NG'),
('NG3E', 3, 'E', 'NG'),
('NG4A', 4, 'A', 'NG'),
('NG4B', 4, 'B', 'NG'),
('NG4C', 4, 'C', 'NG'),
('NG4D', 4, 'D', 'NG'),
('NG4E', 4, 'E', 'NG'),
('NG5A', 5, 'A', 'NG'),
('NG5B', 5, 'B', 'NG'),
('NG5C', 5, 'C', 'NG'),
('NG5D', 5, 'D', 'NG'),
('NH3A', 3, 'A', 'NH'),
('NH4A', 4, 'A', 'NH'),
('NH5A', 5, 'A', 'NH'),
('NH5B', 5, 'B', 'NH'),
('NM3A', 3, 'A', 'NM'),
('NM3B', 3, 'B', 'NM'),
('NM3C', 3, 'C', 'NM'),
('NM3D', 3, 'D', 'NM'),
('NM3E', 3, 'E', 'NM'),
('NM4A', 4, 'A', 'NM'),
('NM4B', 4, 'B', 'NM'),
('NM4C', 4, 'C', 'NM'),
('NM4D', 4, 'D', 'NM'),
('NM5A', 5, 'A', 'NM'),
('NM5B', 5, 'B', 'NM'),
('NM5C', 5, 'C', 'NM'),
('NM5D', 5, 'D', 'NM'),
('NM5E', 5, 'E', 'NM'),
('NR3A', 3, 'A', 'NR'),
('NR3B', 3, 'B', 'NR'),
('NR3C', 3, 'C', 'NR'),
('NR3D', 3, 'D', 'NR'),
('NR3E', 3, 'E', 'NR'),
('NR3F', 3, 'F', 'NR'),
('NR4A', 4, 'A', 'NR'),
('NR4B', 4, 'B', 'NR'),
('NR4C', 4, 'C', 'NR'),
('NR4D', 4, 'D', 'NR'),
('NR4E', 4, 'E', 'NR'),
('NR5A', 5, 'A', 'NR'),
('NR5B', 5, 'B', 'NR'),
('NR5C', 5, 'C', 'NR'),
('NR5D', 5, 'D', 'NR'),
('NR5E', 5, 'E', 'NR'),
('NR5F', 5, 'F', 'NR');

-- --------------------------------------------------------

--
-- Table structure for table `especialidades`
--

CREATE TABLE `especialidades` (
  `id` varchar(2) NOT NULL,
  `nombre_corto` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nombre_largo` varchar(80) NOT NULL,
  `piso` int NOT NULL,
  `edificio` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre_corto`, `nombre_largo`, `piso`, `edificio`) VALUES
('ND', 'Diseño', 'Diseño', 2, 'Montañeses'),
('NG', 'Gestión', 'Gestión de las Organizaciones', 1, 'Montañeses'),
('NH', 'Humanidades', 'Humanidades', 1, 'Libertador'),
('NM', 'Medios', 'Producción de Medios de Comunicación', 3, 'Libertador'),
('NR', 'TIC', 'Tecnología Innovación y Creatividad', 2, 'Libertador');

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

CREATE TABLE `materias` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `anio` int NOT NULL,
  `especialidad` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `anio`, `especialidad`) VALUES
(1, 'Base de datos', 4, 'NR'),
(2, 'Tecnologías de la Información', 4, 'NR'),
(3, 'Modelado e Interacción 3D', 4, 'NR'),
(4, 'Hardware', 4, 'NR'),
(5, 'TIMI', 3, 'NR'),
(6, 'Redes', 3, 'NR'),
(7, 'Taller de programación', 5, 'NR'),
(8, 'Proyecto Final', 5, 'NR'),
(9, 'Emprendedurismo', 5, 'NR'),
(10, 'Arte', 3, 'ND'),
(11, 'Contabilidad', 4, 'NG');

-- --------------------------------------------------------

--
-- Table structure for table `profesores`
--

CREATE TABLE `profesores` (
  `dni` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `direc_calle` varchar(50) NOT NULL,
  `direc_nro` int NOT NULL,
  `direc_prov` varchar(30) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `profesores`
--

INSERT INTO `profesores` (`dni`, `nombre`, `apellido`, `direc_calle`, `direc_nro`, `direc_prov`, `email`) VALUES
(22345678, 'Carolina', 'Rodriguez', 'Calle Belgrano', 456, 'Buenos Aires', 'carolina.rodriguez@email.com'),
(23456789, 'Juan', 'Perez', 'Avenida San Martin', 345, 'Buenos Aires', 'juan.perez@email.com'),
(24567890, 'Maria', 'Fernandez', 'Calle Mitre', 789, 'Buenos Aires', 'maria.fernandez@email.com'),
(25678901, 'Pablo', 'Gonzalez', 'Calle Rivadavia', 123, 'Buenos Aires', 'pablo.gonzalez@email.com'),
(26789012, 'Laura', 'Garcia', 'Calle 9 de Julio', 234, 'Buenos Aires', 'laura.garcia@email.com'),
(27890123, 'Carlos', 'Martinez', 'Calle Sarmiento', 456, 'Buenos Aires', 'carlos.martinez@email.com'),
(28901234, 'Sofia', 'Diaz', 'Calle Alvear', 567, 'Buenos Aires', 'sofia.diaz@email.com'),
(29012345, 'Diego', 'Sanchez', 'Avenida 25 de Mayo', 678, 'Buenos Aires', 'diego.sanchez@email.com'),
(30123456, 'Valeria', 'Castro', 'Calle San Juan', 789, 'Buenos Aires', 'valeria.castro@email.com'),
(31234567, 'Lucas', 'Romero', 'Calle Pellegrini', 890, 'Buenos Aires', 'lucas.romero@email.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`dni`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`dni`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2022 at 04:48 AM
-- Server version: 8.0.26
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empresa`
--

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `dni` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `email` varchar(45) NOT NULL,
  `id_sector` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empleado`
--

INSERT INTO `empleado` (`dni`, `nombre`, `apellido`, `email`, `id_sector`) VALUES
(8578124, 'José', 'Feller', 'feller@gmail.com', 3),
(10674839, 'Marcos', 'Molero', 'mmolero@investigaciones.com.ar', 1),
(11798427, 'Agustín', 'Mendilaharzu', 'drmendilaharzu@presidencia.gob.ar', 3),
(18354680, 'Fernando', 'Laguzzi', 'flaguzzi@yahoo.com.ar', 2),
(18657843, 'Franco', 'Milazzo', 'valentiayfuerza@hotmail.com', 2),
(23895945, 'Máximo', 'Cozzetti', 'elcamaleon@hotmail.com', 4),
(25767823, 'Bernardo', 'Galván', 'bernardogalvan.arte@hotmail,com', 4),
(26360271, 'Martín', 'Vanegas', 'tinchovanegas@gmail.com', 1),
(43182902, 'Matías', 'Miguens', 'matikpo23@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE `sala` (
  `id` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `superficie` int NOT NULL,
  `max_personas` int NOT NULL,
  `id_sector` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sala`
--

INSERT INTO `sala` (`id`, `nombre`, `superficie`, `max_personas`, `id_sector`) VALUES
(1, 'Fotografía', 15, 4, 1),
(2, 'Archivo', 10, 3, 1),
(3, 'Depósito', 80, 5, 2),
(4, 'Sala de comunicaciones', 20, 5, 2),
(5, 'Oficina jefe - Lógistica', 10, 2, 2),
(7, 'Oficina jefe - Investigación', 10, 2, 1),
(8, 'Oficina jefe - Planificación', 20, 3, 3),
(9, 'Sala de reuniones', 30, 5, 3),
(10, 'Sala de vestuario', 50, 5, 4),
(11, 'Oficina jefe - Caracterización', 10, 2, 4),
(12, 'Sala común', 45, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `id` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `dni_jefe` int NOT NULL,
  `nombre_jefe` varchar(25) NOT NULL,
  `apellido_jefe` varchar(25) NOT NULL,
  `email_jefe` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`id`, `nombre`, `dni_jefe`, `nombre_jefe`, `apellido_jefe`, `email_jefe`) VALUES
(1, 'Investigación', 13954782, 'Gabriel', 'Medina', 'gabimedina@gmail.com'),
(2, 'Logística', 13239854, 'Pablo', 'Lampone', 'pablolampone@hotmaill.com'),
(3, 'Planificación', 12893574, 'Mario', 'Santos', 'elmentirosodelamontaña@gmail.com'),
(4, 'Caracterización', 14539029, 'Emilio', 'Ravenna', 'emiravenna32@yahoo.com.ar');

-- --------------------------------------------------------

--
-- Table structure for table `telefono`
--

CREATE TABLE `telefono` (
  `numero` int NOT NULL,
  `dni_duenio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `telefono`
--

INSERT INTO `telefono` (`numero`, `dni_duenio`) VALUES
(1125793384, 10674839),
(1134558903, 13954782),
(1144358696, 13239854),
(1154932865, 14539029),
(1157438751, 12893574),
(1164985236, 26360271),
(1175486389, 13239854),
(1198247784, 18657843),
(1525634785, 10674839),
(1547895632, 10674839),
(1564738972, 18354680),
(1575840322, 13239854),
(1590081203, 12893574);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`dni`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni_jefe` (`dni_jefe`);

--
-- Indexes for table `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`numero`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sala`
--
ALTER TABLE `sala`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

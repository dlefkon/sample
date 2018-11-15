-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 14, 2018 at 06:39 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cars`
--

--
-- Dumping data for table `make`
--

INSERT INTO `make` (`id`, `name`) VALUES
(1, 'Ford'),
(2, 'Acura');

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `name`, `make_id`, `image`) VALUES
(1, 'Fiesta', 1, 'fiesta.jpg'),
(2, 'F-150', 1, 'f150.jpg'),
(3, 'TLX', 2, 'tlx'),
(4, 'MDX', 2, 'mdx');

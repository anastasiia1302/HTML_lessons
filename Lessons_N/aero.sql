-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 04 2019 г., 18:44
-- Версия сервера: 10.1.30-MariaDB
-- Версия PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `aero`
--

-- --------------------------------------------------------

--
-- Структура таблицы `company`
--

CREATE TABLE `company` (
  `ID_comp` int(11) NOT NULL,
  `name` char(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `company`
--

INSERT INTO `company` (`ID_comp`, `name`) VALUES
(1, 'Don_avia'),
(2, 'Aeroflot'),
(3, 'Dale_avia'),
(4, 'air_France'),
(5, 'British_AW');

-- --------------------------------------------------------

--
-- Структура таблицы `passenger`
--

CREATE TABLE `passenger` (
  `ID_psg` int(11) NOT NULL,
  `name` char(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `passenger`
--

INSERT INTO `passenger` (`ID_psg`, `name`) VALUES
(1, 'Bruce Willis'),
(2, 'George Clooney'),
(3, 'Kevin Costner'),
(4, 'Donald Sutherland'),
(5, 'Jennifer Lopez'),
(6, 'Ray Liotta'),
(7, 'Samuel L. Jackson'),
(8, 'Nikole Kidman'),
(9, 'Alan Rickman'),
(10, 'Kurt Russell'),
(11, 'Harrison Ford'),
(12, 'Russell Crowe'),
(13, 'Steve Martin'),
(14, 'Michael Caine'),
(15, 'Angelina Jolie'),
(16, 'Mel Gibson'),
(17, 'Michael Douglas'),
(18, 'John Travolta'),
(19, 'Sylvester Stallone'),
(20, 'Tommy Lee Jones'),
(21, 'Catherine Zeta-Jones'),
(22, 'Antonio Banderas'),
(23, 'Kim Basinger'),
(24, 'Sam Neill'),
(25, 'Gary Oldman'),
(26, 'Clint Eastwood'),
(27, 'Brad Pitt'),
(28, 'Johnny Depp'),
(29, 'Pierce Brosnan'),
(30, 'Sean Connery'),
(31, 'Bruce Willis'),
(37, 'Mullah Omar');

-- --------------------------------------------------------

--
-- Структура таблицы `pass_in_trip`
--

CREATE TABLE `pass_in_trip` (
  `trip_no` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `ID_psg` int(11) NOT NULL,
  `place` char(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `pass_in_trip`
--

INSERT INTO `pass_in_trip` (`trip_no`, `date`, `ID_psg`, `place`) VALUES
(1100, '2003-04-29 00:00:00', 1, '1a'),
(1123, '2003-04-05 00:00:00', 3, '2a'),
(1123, '2003-04-08 00:00:00', 1, '4c'),
(1123, '2003-04-08 00:00:00', 6, '4b'),
(1124, '2003-04-02 00:00:00', 2, '2d'),
(1145, '2003-04-05 00:00:00', 3, '2c'),
(1145, '2003-04-25 00:00:00', 5, '1d'),
(1181, '2003-04-01 00:00:00', 1, '1a'),
(1181, '2003-04-01 00:00:00', 6, '1b'),
(1181, '2003-04-01 00:00:00', 8, '3c'),
(1181, '2003-04-13 00:00:00', 5, '1b'),
(1182, '2003-04-13 00:00:00', 5, '4b'),
(1182, '2003-04-13 00:00:00', 9, '6d'),
(1187, '2003-04-14 00:00:00', 8, '3a'),
(1187, '2003-04-14 00:00:00', 10, '3d'),
(1188, '2003-04-01 00:00:00', 8, '3a'),
(7771, '2005-11-04 00:00:00', 11, '4a'),
(7771, '2005-11-07 00:00:00', 11, '1b'),
(7771, '2005-11-07 00:00:00', 37, '1c'),
(7771, '2005-11-09 00:00:00', 11, '5a'),
(7771, '2005-11-14 00:00:00', 14, '4d'),
(7771, '2005-11-16 00:00:00', 14, '5d'),
(7772, '2005-11-07 00:00:00', 12, '1d'),
(7772, '2005-11-07 00:00:00', 37, '1a'),
(7772, '2005-11-29 00:00:00', 10, '3a'),
(7772, '2005-11-29 00:00:00', 13, '1b'),
(7772, '2005-11-29 00:00:00', 14, '1c'),
(7773, '2005-11-07 00:00:00', 13, '2d'),
(7778, '2005-11-05 00:00:00', 10, '2a'),
(8881, '2005-11-08 00:00:00', 37, '1d'),
(8882, '2005-11-06 00:00:00', 37, '1a'),
(8882, '2005-11-13 00:00:00', 14, '3d');

-- --------------------------------------------------------

--
-- Структура таблицы `trip`
--

CREATE TABLE `trip` (
  `trip_no` int(11) NOT NULL,
  `ID_comp` int(11) NOT NULL,
  `plane` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `town_from` char(25) COLLATE utf8_unicode_ci NOT NULL,
  `town_to` char(25) COLLATE utf8_unicode_ci NOT NULL,
  `time_out` datetime NOT NULL,
  `time_in` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `trip`
--

INSERT INTO `trip` (`trip_no`, `ID_comp`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES
(1100, 4, 'Boeing', 'Rostov', 'Paris', '1900-01-01 14:30:00', '1900-01-01 17:50:00'),
(1101, 4, 'Boeing', 'Paris', 'Rostov', '1900-01-01 08:12:00', '1900-01-01 11:45:00'),
(1123, 3, 'TU-154', 'Rostov', 'Vladivostok', '1900-01-01 16:20:00', '1900-01-01 03:40:00'),
(1124, 3, 'TU-154', 'Vladivostok', 'Rostov', '1900-01-01 09:00:00', '1900-01-01 19:50:00'),
(1145, 2, 'IL-86', 'Moscow', 'Rostov', '1900-01-01 09:35:00', '1900-01-01 11:23:00'),
(1146, 2, 'IL-86', 'Rostov', 'Moscow', '1900-01-01 17:55:00', '1900-01-01 20:01:00'),
(1181, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01 06:12:00', '1900-01-01 08:01:00'),
(1182, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01 12:35:00', '1900-01-01 14:30:00'),
(1187, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01 15:42:00', '1900-01-01 17:39:00'),
(1188, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01 22:50:00', '1900-01-01 00:48:00'),
(1195, 1, 'TU-154', 'Rostov', 'Moscow', '1900-01-01 23:30:00', '1900-01-01 01:11:00'),
(1196, 1, 'TU-154', 'Moscow', 'Rostov', '1900-01-01 04:00:00', '1900-01-01 05:45:00'),
(7771, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 01:00:00', '1900-01-01 11:00:00'),
(7772, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 12:00:00', '1900-01-01 02:00:00'),
(7773, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 03:00:00', '1900-01-01 13:00:00'),
(7774, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 14:00:00', '1900-01-01 06:00:00'),
(7775, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 09:00:00', '1900-01-01 20:00:00'),
(7776, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 18:00:00', '1900-01-01 08:00:00'),
(7777, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 18:00:00', '1900-01-01 06:00:00'),
(7778, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 22:00:00', '1900-01-01 12:00:00'),
(8881, 5, 'Boeing', 'London', 'Paris', '1900-01-01 03:00:00', '1900-01-01 04:00:00'),
(8882, 5, 'Boeing', 'Paris', 'London', '1900-01-01 22:00:00', '1900-01-01 23:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`ID_comp`);

--
-- Индексы таблицы `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`ID_psg`);

--
-- Индексы таблицы `pass_in_trip`
--
ALTER TABLE `pass_in_trip`
  ADD PRIMARY KEY (`trip_no`,`date`,`ID_psg`),
  ADD KEY `FK_Pass_in_trip_Passenger` (`ID_psg`);

--
-- Индексы таблицы `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_no`),
  ADD KEY `FK_Trip_Company` (`ID_comp`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `pass_in_trip`
--
ALTER TABLE `pass_in_trip`
  ADD CONSTRAINT `FK_Pass_in_trip_Passenger` FOREIGN KEY (`ID_psg`) REFERENCES `passenger` (`ID_psg`),
  ADD CONSTRAINT `FK_Pass_in_trip_Trip` FOREIGN KEY (`trip_no`) REFERENCES `trip` (`trip_no`);

--
-- Ограничения внешнего ключа таблицы `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `FK_Trip_Company` FOREIGN KEY (`ID_comp`) REFERENCES `company` (`ID_comp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

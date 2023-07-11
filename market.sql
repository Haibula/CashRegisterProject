-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3307
-- Время создания: Окт 21 2022 г., 16:41
-- Версия сервера: 5.7.24
-- Версия PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `market`
--
-- Структура таблицы `userbasedata`
--

CREATE TABLE `userbasedata` (
  `id` int(11) NOT NULL,
  `host` varchar(30) NOT NULL,
  `port` int(30) NOT NULL,
  `log` varchar(30) DEFAULT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `userbasedata`
--

INSERT INTO `userbasedata` (`id`, `host`, `port`, `log`, `pass`) VALUES
(1, 'localhost', 3307, 'root', 'root');

-- --------------------------------------------------------

--
-- Структура таблицы `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `userdata`
--

INSERT INTO `userdata` (`id`, `login`, `password`) VALUES
(1, 'haibula', '123'),
(5, 'safq1', 'safaf');

-- --------------------------------------------------------

--
-- Структура таблицы `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `productName` varchar(20) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `dateStart` date DEFAULT NULL,
  `dateEnd` date DEFAULT NULL,
  `productKod` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `warehouse`
--

INSERT INTO `warehouse` (`id`, `productName`, `quantity`, `price`, `dateStart`, `dateEnd`, `productKod`) VALUES
(1, 'Хлеб', '21 шт', '40р', NULL, NULL, '6941755212635'),
(2, 'Сахар', '29 шт', '45р', NULL, NULL, '4607001779797'),
(3, 'Яица', '19 шт', '110p', NULL, NULL, '4031626710369'),
(4, 'Молоко', '17 шт', '75p', NULL, NULL, '4665303537316');

--
-- Индексы таблицы `userbasedata`
--
ALTER TABLE `userbasedata`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц

-- AUTO_INCREMENT для таблицы `userbasedata`
--
ALTER TABLE `userbasedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

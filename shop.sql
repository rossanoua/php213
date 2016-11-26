-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 26 2016 г., 22:03
-- Версия сервера: 5.5.50
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `cnum` int(11) NOT NULL,
  `cname` varchar(35) NOT NULL,
  `city` varchar(35) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `snum` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `customers`
--

INSERT INTO `customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES
(5, 'Владимир', 'Полтава', 4, 2),
(7, 'Вячеслав', 'Чернигов', 1, 4),
(9, 'Федор', 'Кривой Рог', 2, 3),
(10, 'Святослав', 'Полтава', 9, 2),
(11, 'Аркадий', 'Винница', 4, 4),
(12, 'Иннокентий', 'Запорожье', 7, 3),
(14, 'sdfgh', 'dfgh', 4, 5),
(15, 'вкпкуп', 'епекрну', 45, 3),
(16, 'sd', 'sdfgf', 4, 2),
(17, 'sd', 'sdfgf', 4, 2),
(18, 'sd', 'we', 3, 4),
(19, 'sdf', 'sdf', 4, 6),
(20, 'er', 'ererreff', 3, 5),
(21, 'er', 'ererreff', 3, 5),
(22, 'er', 'ererreff', 3, 5),
(23, 'dfgh', 'wert', 4, 5),
(24, 'yhjh', 'ty', 5, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `onum` int(11) NOT NULL,
  `amt` decimal(8,2) NOT NULL,
  `cnum` int(11) NOT NULL,
  `snum` int(11) NOT NULL,
  `odate` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`onum`, `amt`, `cnum`, `snum`, `odate`) VALUES
(1, '7.00', 7, 4, '2016-11-17'),
(12, '4.00', 9, 5, '2016-09-07'),
(13, '3.00', 5, 7, '2016-11-09'),
(14, '44.00', 11, 2, '2016-11-07'),
(15, '10.00', 7, 4, '2016-06-02');

-- --------------------------------------------------------

--
-- Структура таблицы `salespeople`
--

CREATE TABLE IF NOT EXISTS `salespeople` (
  `snum` int(11) NOT NULL,
  `sname` varchar(35) NOT NULL,
  `city` varchar(35) NOT NULL,
  `comm` decimal(7,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `salespeople`
--

INSERT INTO `salespeople` (`snum`, `sname`, `city`, `comm`) VALUES
(1, 'Василий', 'Полтава', '0.02'),
(2, 'Григорий', 'Яремче', '10.00'),
(3, 'Павел', 'Одесса', '12.00'),
(4, 'Николай', 'Измаил', '0.01'),
(5, 'Коля', 'Полтава', '0.02'),
(6, 'Валера', 'Полтава', '0.02'),
(7, 'Константин', 'Полтава', '0.02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cnum`),
  ADD KEY `cnum` (`cnum`),
  ADD KEY `cnum_2` (`cnum`),
  ADD KEY `snum` (`snum`),
  ADD KEY `snum_2` (`snum`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`onum`),
  ADD KEY `onum` (`onum`),
  ADD KEY `cnum` (`cnum`),
  ADD KEY `snum` (`snum`);

--
-- Индексы таблицы `salespeople`
--
ALTER TABLE `salespeople`
  ADD PRIMARY KEY (`snum`),
  ADD UNIQUE KEY `snum_2` (`snum`),
  ADD KEY `snum` (`snum`),
  ADD KEY `snum_3` (`snum`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `customers`
--
ALTER TABLE `customers`
  MODIFY `cnum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `onum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `salespeople`
--
ALTER TABLE `salespeople`
  MODIFY `snum` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`snum`) REFERENCES `salespeople` (`snum`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`snum`) REFERENCES `salespeople` (`snum`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`cnum`) REFERENCES `customers` (`cnum`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

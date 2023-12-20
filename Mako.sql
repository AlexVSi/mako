-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 10 2023 г., 16:01
-- Версия сервера: 8.0.31
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Mako`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Comments`
--

CREATE TABLE `Comments` (
  `comment_id` int NOT NULL,
  `customer` int NOT NULL,
  `order` int NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Customers`
--

CREATE TABLE `Customers` (
  `customer_id` int NOT NULL,
  `firstname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(45) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Customers`
--

INSERT INTO `Customers` (`customer_id`, `firstname`, `lastname`, `email`, `phone_number`) VALUES
(1, 'mnknk', 'jknjkkj', 'njk@hkjj.sdv', '6567678678'),
(2, 'lllll', 'lllll', 'llll@ll.ll', '99999999'),
(3, 'kkkkkk', 'kkkkk', 'kkkk@kkk.kkk', '2222222'),
(4, 'jjjj', 'jjjj', 'jjjj@jjj.jjj', '7777777'),
(5, 'ooooo', 'ooooo', 'oooo@oo.oo', '00000'),
(6, 'ssssss', 'ssssss', 'ssss@ss.sss', '11111111'),
(7, 'sssss', 'sada', 'assa@as.adas', '12312'),
(8, 'aaaaa', 'aaaaaa', 'aaaa@aaa.aaa', '22222222222'),
(9, 'qqqqq', 'qqqqq', 'qqqqq@qqqq.qqqq', '333333333');

-- --------------------------------------------------------

--
-- Структура таблицы `Departments`
--

CREATE TABLE `Departments` (
  `department_id` int NOT NULL,
  `department_name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE `Orders` (
  `order_id` int NOT NULL,
  `customer` int NOT NULL,
  `project_name` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `service_type` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `task_description` text COLLATE utf8mb4_general_ci,
  `price` float DEFAULT NULL,
  `worker` int DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `status` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`order_id`, `customer`, `project_name`, `service_type`, `task_description`, `price`, `worker`, `application_date`, `completion_date`, `status`) VALUES
(4, 5, 'oooooo', 'Баннер', 'ooooo', NULL, NULL, NULL, NULL, NULL),
(5, 6, 'ssssss', 'Визитка', 'ssssssss', NULL, NULL, NULL, NULL, NULL),
(6, 7, 'asdsad', 'Логотип', 'asas', NULL, NULL, NULL, NULL, NULL),
(7, 8, 'aaaa', 'Сайт', 'aaaaaaaa', NULL, NULL, NULL, NULL, NULL),
(8, 9, 'qqqqq', 'Брендбук', 'qqqqq', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `Roles`
--

CREATE TABLE `Roles` (
  `role_id` int NOT NULL,
  `role_name` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Statistic`
--

CREATE TABLE `Statistic` (
  `statistic_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `way_to_find_study` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Statistic`
--

INSERT INTO `Statistic` (`statistic_id`, `customer_id`, `way_to_find_study`) VALUES
(1, 1, 'Реклама в соц. сетях'),
(2, 1, 'Реклама в соц. сетях'),
(3, 1, 'Подсказали друзья/знакомые'),
(4, 1, 'По запросу в интернете'),
(13, 5, 'Другое'),
(14, 6, 'Подсказали друзья/знакомые'),
(15, 7, 'По запросу в интернете'),
(16, 9, 'По запросу в интернете');

-- --------------------------------------------------------

--
-- Структура таблицы `Workers`
--

CREATE TABLE `Workers` (
  `worker_id` int NOT NULL,
  `lastname` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `firstname` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `surname` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `department` int NOT NULL,
  `role` int NOT NULL,
  `pasport_series` varchar(4) COLLATE utf8mb4_general_ci NOT NULL,
  `pasport_number` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `login` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_employment` date NOT NULL,
  `purse` float DEFAULT NULL,
  `social_payments` float DEFAULT NULL,
  `bonus_percent` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `order` (`order`);

--
-- Индексы таблицы `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `Departments`
--
ALTER TABLE `Departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Индексы таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer` (`customer`),
  ADD KEY `worker` (`worker`);

--
-- Индексы таблицы `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Индексы таблицы `Statistic`
--
ALTER TABLE `Statistic`
  ADD PRIMARY KEY (`statistic_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `Workers`
--
ALTER TABLE `Workers`
  ADD PRIMARY KEY (`worker_id`),
  ADD KEY `department` (`department`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Comments`
--
ALTER TABLE `Comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Customers`
--
ALTER TABLE `Customers`
  MODIFY `customer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `Departments`
--
ALTER TABLE `Departments`
  MODIFY `department_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Orders`
--
ALTER TABLE `Orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `Roles`
--
ALTER TABLE `Roles`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Statistic`
--
ALTER TABLE `Statistic`
  MODIFY `statistic_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `Workers`
--
ALTER TABLE `Workers`
  MODIFY `worker_id` int NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Comments`
--
ALTER TABLE `Comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`order`) REFERENCES `Orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`worker`) REFERENCES `Workers` (`worker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Statistic`
--
ALTER TABLE `Statistic`
  ADD CONSTRAINT `statistic_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Workers`
--
ALTER TABLE `Workers`
  ADD CONSTRAINT `workers_ibfk_1` FOREIGN KEY (`department`) REFERENCES `Departments` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `workers_ibfk_2` FOREIGN KEY (`role`) REFERENCES `Roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

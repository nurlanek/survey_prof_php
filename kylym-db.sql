-- -------------------------------------------------------------
-- TablePlus 4.6.4(414)
--
-- https://tableplus.com/
--
-- Database: prof
-- Generation Time: 2022-04-19 07:05:48.2490
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `poll_id` int NOT NULL,
  `answer_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `horizontal_id` int DEFAULT NULL,
  `vertical_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `poll_answers`;
CREATE TABLE `poll_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `poll_id` int NOT NULL,
  `horizontal_id` int NOT NULL,
  `vertical_id` int NOT NULL,
  `option_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `option_2` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `votes` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `results`;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vertical_id` int NOT NULL,
  `tel_no` int NOT NULL,
  `hor_id_1` int NOT NULL,
  `hor_id_2` int NOT NULL,
  `hor_id_3` int NOT NULL,
  `hor_id_4` int NOT NULL,
  `hor_id_5` int NOT NULL,
  `hor_id_6` int NOT NULL,
  `hor_id_7` int NOT NULL,
  `hor_id_8` int NOT NULL,
  `hor_id_9` int NOT NULL,
  `hor_id_10` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

INSERT INTO `answers` (`id`, `poll_id`, `answer_value`, `user_id`, `horizontal_id`, `vertical_id`) VALUES
(205, 1, '2', 85, 1, 1),
(206, 2, '2', 85, 2, 1),
(207, 3, '1', 85, 3, 1),
(208, 4, '1', 85, 4, 1),
(209, 5, '1', 85, 5, 1),
(210, 6, '2', 85, 6, 1),
(211, 7, '1', 85, 7, 1),
(212, 8, '2', 85, 8, 1),
(213, 9, '1', 85, 9, 1),
(214, 10, '2', 85, 10, 1),
(215, 11, '2', 85, 1, 2),
(216, 12, '2', 85, 2, 2),
(217, 13, '1', 85, 3, 2),
(218, 14, '2', 85, 4, 2),
(219, 15, '1', 85, 5, 2),
(220, 16, '2', 85, 6, 2),
(221, 17, '2', 85, 7, 2),
(222, 18, '1', 85, 8, 2),
(223, 19, '1', 85, 9, 2),
(224, 20, '2', 85, 10, 2),
(225, 21, '2', 85, 1, 3),
(226, 22, '2', 85, 2, 3),
(227, 23, '2', 85, 3, 3),
(228, 24, '1', 85, 4, 3),
(229, 25, '1', 85, 5, 3),
(230, 26, '2', 85, 6, 3),
(231, 27, '1', 85, 7, 3),
(232, 28, '2', 85, 8, 3),
(233, 29, '1', 85, 9, 3),
(234, 30, '2', 85, 10, 3),
(235, 31, '2', 85, 1, 4),
(236, 32, '2', 85, 2, 4),
(237, 33, '2', 85, 3, 4),
(238, 34, '2', 85, 4, 4),
(239, 35, '2', 85, 5, 4),
(240, 36, '2', 85, 6, 4),
(241, 37, '2', 85, 7, 4),
(242, 38, '2', 85, 8, 4),
(243, 39, '1', 85, 9, 4),
(244, 40, '2', 85, 10, 4),
(245, 41, '2', 85, 1, 5),
(246, 42, '2', 85, 2, 5),
(247, 43, '2', 85, 3, 5),
(248, 44, '2', 85, 4, 5),
(249, 45, '2', 85, 5, 5),
(250, 46, '2', 85, 6, 5),
(251, 47, '2', 85, 7, 5),
(252, 48, '2', 85, 8, 5),
(253, 49, '2', 85, 9, 5),
(254, 50, '2', 85, 10, 5),
(255, 51, '2', 85, 1, 6),
(256, 52, '2', 85, 2, 6),
(257, 53, '2', 85, 3, 6),
(258, 54, '2', 85, 4, 6),
(259, 55, '2', 85, 5, 6),
(260, 56, '2', 85, 6, 6),
(261, 57, '2', 85, 7, 6),
(262, 58, '1', 85, 8, 6),
(263, 59, '2', 85, 9, 6),
(264, 60, '1', 85, 10, 6),
(265, 61, '2', 85, 1, 7),
(266, 62, '1', 85, 2, 7),
(267, 63, '1', 85, 3, 7),
(268, 64, '2', 85, 4, 7),
(269, 65, '1', 85, 5, 7),
(270, 66, '2', 85, 6, 7),
(271, 67, '1', 85, 7, 7),
(272, 68, '1', 85, 8, 7),
(273, 69, '1', 85, 9, 7),
(274, 70, '2', 85, 10, 7),
(275, 71, '2', 85, 1, 8),
(276, 72, '2', 85, 2, 8),
(277, 73, '2', 85, 3, 8),
(278, 74, '2', 85, 4, 8),
(279, 75, '2', 85, 5, 8),
(280, 76, '2', 85, 6, 8),
(281, 77, '1', 85, 7, 8),
(282, 78, '2', 85, 8, 8),
(283, 79, '1', 85, 9, 8),
(284, 80, '2', 85, 10, 8),
(285, 81, '2', 85, 1, 9),
(286, 82, '1', 85, 2, 9),
(287, 83, '2', 85, 3, 9),
(288, 84, '2', 85, 4, 9),
(289, 85, '1', 85, 5, 9),
(290, 86, '2', 85, 6, 9),
(291, 87, '1', 85, 7, 9),
(292, 88, '2', 85, 8, 9),
(293, 89, '2', 85, 9, 9),
(294, 90, '2', 85, 10, 9),
(295, 91, '1', 85, 1, 10),
(296, 92, '2', 85, 2, 10),
(297, 93, '1', 85, 3, 10),
(298, 94, '2', 85, 4, 10),
(299, 95, '1', 85, 5, 10),
(300, 96, '2', 85, 6, 10),
(301, 97, '1', 85, 7, 10),
(302, 98, '2', 85, 8, 10),
(303, 99, '2', 85, 9, 10),
(304, 100, '2', 85, 10, 10);

INSERT INTO `poll_answers` (`id`, `poll_id`, `horizontal_id`, `vertical_id`, `option_1`, `option_2`, `votes`) VALUES
(1, 1, 1, 1, 'монтёр', 'часовщик', 0),
(3, 2, 2, 1, 'Электрик', 'бухгалтер', 0),
(5, 3, 3, 1, 'Авиамеханик', 'Маркетолог', 0),
(7, 4, 4, 1, 'Автомеханик', 'Переводчик', 0),
(9, 5, 5, 1, 'Радиомеханик', 'Учитель', 0),
(11, 6, 6, 1, 'Водопроводчик', 'Специалист по профориентации', 0),
(13, 7, 7, 1, 'Ювелир', 'Кассир', 0),
(15, 8, 8, 1, 'Кузнец', 'Машинист', 0),
(17, 9, 9, 1, 'Электромеханик', 'Лесник', 0),
(19, 10, 10, 1, 'Часовщик', 'Проектировщик', 0),
(21, 11, 1, 2, 'Кассир', 'Электромеханик', 0),
(23, 12, 2, 2, 'Бухгалтер', 'Работник банка', 0),
(25, 13, 3, 2, 'Работник банка', 'Продавец в книжном магазине', 0),
(27, 14, 4, 2, 'Бухгалтер', 'Редактор', 0),
(29, 15, 5, 2, 'Учитель математики', 'Врач', 0),
(31, 16, 6, 2, 'Преподаватель бухучета', 'Молдо/Священник', 0),
(33, 17, 7, 2, 'Математик', 'Политик', 0),
(35, 18, 8, 2, 'Работник банка', 'Специалист по логистике', 0),
(37, 19, 9, 2, 'Преподаватель бухучета', 'Плотник', 0),
(39, 20, 10, 2, 'Бухгалтер', 'Певец', 0),
(41, 21, 1, 3, 'Агент по торг.недвижимости', 'Механик радио/ТВ', 0),
(43, 22, 2, 3, 'Офисный работник', 'Математик', 0),
(45, 23, 3, 3, 'Милиционер', 'Маркетолог', 0),
(47, 24, 4, 3, 'Милиционер', 'Учитель русского языка', 0),
(49, 25, 5, 3, 'Чиновник', 'Адвокат', 0),
(51, 26, 6, 3, 'Торговец', 'Педагог группы продленного дня', 0),
(53, 27, 7, 3, 'Работник почты', 'Парикмахер', 0),
(55, 28, 8, 3, 'Торговля 1000 мелочей', 'Водитель автобуса', 0),
(57, 29, 9, 3, 'Продавец книжного магазина', 'Фермер', 0),
(59, 30, 10, 3, 'Кассир', 'Дизайнер рекламного агентства', 0),
(61, 31, 1, 4, 'Библиотекарь', 'Автомеханик', 0),
(63, 32, 2, 4, 'Журналист', 'Бухгалтер', 0),
(65, 33, 3, 4, 'Переводчик', 'Офисный работник', 0),
(67, 34, 4, 4, 'Писатель', 'Политик', 0),
(69, 35, 5, 4, 'Библиотекарь', 'Аптекарь', 0),
(71, 36, 6, 4, 'Политик', 'Специалист по социальной помощи', 0),
(73, 37, 7, 4, 'Учитель языка', 'Портье в гостинице', 0),
(75, 38, 8, 4, 'Учитель русского языка', 'Таксист', 0),
(77, 39, 9, 4, 'Редактор', 'Эколог', 0),
(79, 40, 10, 4, 'Переводчик', 'Химик', 0),
(81, 41, 1, 5, 'Учитель', 'Электрик', 0),
(83, 42, 2, 5, 'Инженер', 'Финансист', 0),
(85, 43, 3, 5, 'Зубной врач', 'Агент по торг.недвижимости', 0),
(87, 44, 4, 5, 'Судья', 'Библиотекарь', 0),
(89, 45, 5, 5, 'Архитектор', 'Ветеринар', 0),
(91, 46, 6, 5, 'Аптекарь', 'Медсестра', 0),
(93, 47, 7, 5, 'Врач', 'Уличная торговля', 0),
(95, 48, 8, 5, 'Ветеринар', 'Пилот', 0),
(97, 49, 9, 5, 'Ученый', 'Садовник', 0),
(99, 50, 10, 5, 'Адвокат', 'Живописец', 0),
(101, 51, 1, 6, 'Врач', 'Ювелир', 0),
(103, 52, 2, 6, 'Медсестра', 'Кассир', 0),
(105, 53, 3, 6, 'Специалист по социальной помощи', 'Продавец', 0),
(107, 54, 4, 6, 'Молдо/Священник', 'Журналист', 0),
(109, 55, 5, 6, 'Помощь по дому пожилым', 'Инженер', 0),
(111, 56, 6, 6, 'Воспитательница', 'Врач', 0),
(113, 57, 7, 6, 'Медсестра', 'Продавец', 0),
(115, 58, 8, 6, 'Специалист в центре занятости', 'Водитель скорой помощи', 0),
(117, 59, 9, 6, 'Специалист по профориентации', 'Егерь', 0),
(119, 60, 10, 6, 'Работник детского сада', 'Музыкант', 0),
(121, 61, 1, 7, 'Кассир', 'Водопроводчик', 0),
(123, 62, 2, 7, 'Официант', 'Учитель математики', 0),
(125, 63, 3, 7, 'Кассир', 'Секретарь', 0),
(127, 64, 4, 7, 'Гид/Экскурсовод', 'Писатель', 0),
(129, 65, 5, 7, 'Портье в гостинице', 'Ученый', 0),
(131, 66, 6, 7, 'Торговый агент', 'Помощь по дому пожилым', 0),
(133, 67, 7, 7, 'Сотрудник молодежного клуба', 'Экскурсовод', 0),
(135, 68, 8, 7, 'Помощь по дому пожилым', 'Почтальон', 0),
(137, 69, 9, 7, 'Работник турагентства', 'Огородник', 0),
(139, 70, 10, 7, 'Парикмахер', 'Архитектор', 0),
(141, 71, 1, 8, 'Таксист', 'Ювелир', 0),
(143, 72, 2, 8, 'Капитан корабля', 'Бухгалтер', 0),
(145, 73, 3, 8, 'Почтальон', 'Чиновник', 0),
(147, 74, 4, 8, 'Дальнобойщик', 'Учитель русского языка', 0),
(149, 75, 5, 8, 'Пилот', 'Судья', 0),
(151, 76, 6, 8, 'Гид/экскурсовод', 'Медсестра', 0),
(153, 77, 7, 8, 'Специалист по логистике', 'Работник турагентства', 0),
(155, 78, 8, 8, 'Водитель автобуса', 'Капитан судна', 0),
(157, 79, 9, 8, 'Штурман(направляющий)', 'Трубочист', 0),
(159, 80, 10, 8, 'Водитель скорой помощи', 'Программист', 0),
(161, 81, 1, 9, 'Фермер', 'Автомеханик', 0),
(163, 82, 2, 9, 'Каменщик/кладчик', 'Работник банка', 0),
(165, 83, 3, 9, 'Рыбак', 'Милиционер', 0),
(167, 84, 4, 9, 'Егерь', 'Продавец книжного магазина', 0),
(169, 85, 5, 9, 'Садовод', 'Архитектор', 0),
(171, 86, 6, 9, 'Строитель', 'Воспитательница', 0),
(173, 87, 7, 9, 'Плотник', 'Сотрудник молодежного клуба', 0),
(175, 88, 8, 9, 'Садовник', 'Гид/экскурсовод', 0),
(177, 89, 9, 9, 'Трубочист', 'Рыбак', 0),
(179, 90, 10, 9, 'Лесничий', 'Композитор', 0),
(181, 91, 1, 10, 'Музыкант', 'Инженер', 0),
(183, 92, 2, 10, 'Скульптор', 'Финансист', 0),
(185, 93, 3, 10, 'Музыкант', 'Специалист по кадрам', 0),
(187, 94, 4, 10, 'Живописец', 'Переводчик', 0),
(189, 95, 5, 10, 'Архитектор', 'Зубной врач', 0),
(191, 96, 6, 10, 'Химик', 'Медсестра', 0),
(193, 97, 7, 10, 'Дизайнер рекламного агентства', 'Помощь по дому пожилым', 0),
(195, 98, 8, 10, 'Актёр', 'Штурман', 0),
(197, 99, 9, 10, 'Поэт', 'Эколог', 0),
(199, 100, 10, 10, 'Певец', 'Графический дизайнер', 0);

INSERT INTO `users` (`id`, `name`, `surname`, `phone_number`) VALUES
(85, 'Taalaibek', 'Myktybekov', 552343434);



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
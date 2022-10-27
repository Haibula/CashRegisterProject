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

-- --------------------------------------------------------

--
-- Структура таблицы `fs_city`
--

CREATE TABLE `fs_city` (
  `id` int(12) UNSIGNED NOT NULL,
  `id_region` int(10) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fs_city`
--

INSERT INTO `fs_city` (`id`, `id_region`, `name`) VALUES
(1, 1, 'Адыгейск'),
(2, 1, 'Майкоп'),
(3, 2, 'Горно-Алтайск'),
(4, 3, 'Алейск'),
(5, 3, 'Барнаул'),
(6, 3, 'Белокуриха'),
(7, 3, 'Бийск'),
(8, 3, 'Горняк'),
(9, 3, 'Заринск'),
(10, 3, 'Змеиногорск'),
(11, 3, 'Камень-на-Оби'),
(12, 3, 'Новоалтайск'),
(13, 3, 'Рубцовск'),
(14, 3, 'Славгород'),
(15, 3, 'Яровое'),
(16, 4, 'Белогорск'),
(17, 4, 'Благовещенск'),
(18, 4, 'Завитинск'),
(19, 4, 'Зея'),
(20, 4, 'Райчихинск'),
(21, 4, 'Свободный'),
(22, 4, 'Сковородино'),
(23, 4, 'Тында'),
(24, 4, 'Шимановск'),
(25, 5, 'Архангельск'),
(26, 5, 'Вельск'),
(27, 5, 'Каргополь'),
(28, 5, 'Коряжма'),
(29, 5, 'Котлас'),
(30, 5, 'Мезень'),
(31, 5, 'Мирный'),
(32, 5, 'Новодвинск'),
(33, 5, 'Няндома'),
(34, 5, 'Онега'),
(35, 5, 'Северодвинск'),
(36, 5, 'Сольвычегодск'),
(37, 5, 'Шенкурск'),
(38, 6, 'Астрахань'),
(39, 6, 'Ахтубинск'),
(40, 6, 'Знаменск'),
(41, 6, 'Камызяк'),
(42, 6, 'Нариманов'),
(43, 6, 'Харабали'),
(44, 7, 'Агидель'),
(45, 7, 'Баймак'),
(46, 7, 'Белебей'),
(47, 7, 'Белорецк'),
(48, 7, 'Бирск'),
(49, 7, 'Благовещенск'),
(50, 7, 'Давлеканово'),
(51, 7, 'Дюртюли'),
(52, 7, 'Ишимбай'),
(53, 7, 'Кумертау'),
(54, 7, 'Межгорье'),
(55, 7, 'Мелеуз'),
(56, 7, 'Нефтекамск'),
(57, 7, 'Октябрьский'),
(58, 7, 'Салават'),
(59, 7, 'Сибай'),
(60, 7, 'Стерлитамак'),
(61, 7, 'Туймазы'),
(62, 7, 'Уфа'),
(63, 7, 'Учалы'),
(64, 7, 'Янаул'),
(65, 8, 'Алексеевка'),
(66, 8, 'Белгород'),
(67, 8, 'Бирюч'),
(68, 8, 'Валуйки'),
(69, 8, 'Грайворон'),
(70, 8, 'Губкин'),
(71, 8, 'Короча'),
(72, 8, 'Новый Оскол'),
(73, 8, 'Старый Оскол'),
(74, 8, 'Строитель'),
(75, 8, 'Шебекино'),
(76, 9, 'Брянск'),
(77, 9, 'Дятьково'),
(78, 9, 'Жуковка'),
(79, 9, 'Злынка'),
(80, 9, 'Карачев'),
(81, 9, 'Клинцы'),
(82, 9, 'Мглин'),
(83, 9, 'Новозыбков'),
(84, 9, 'Почеп'),
(85, 9, 'Севск'),
(86, 9, 'Сельцо'),
(87, 9, 'Стародуб'),
(88, 9, 'Сураж'),
(89, 9, 'Трубчевск'),
(90, 9, 'Унеча'),
(91, 9, 'Фокино'),
(92, 10, 'Бабушкин'),
(93, 10, 'Гусиноозёрск'),
(94, 10, 'Закаменск'),
(95, 10, 'Кяхта'),
(96, 10, 'Северобайкальск'),
(97, 10, 'Улан-Удэ'),
(98, 11, 'Александров'),
(99, 11, 'Владимир'),
(100, 11, 'Вязники'),
(101, 11, 'Гороховец'),
(102, 11, 'Гусь-Хрустальный'),
(103, 11, 'Камешково'),
(104, 11, 'Карабаново'),
(105, 11, 'Киржач'),
(106, 11, 'Ковров'),
(107, 11, 'Кольчугино'),
(108, 11, 'Костерёво'),
(109, 11, 'Курлово'),
(110, 11, 'Лакинск'),
(111, 11, 'Меленки'),
(112, 11, 'Муром'),
(113, 11, 'Петушки'),
(114, 11, 'Покров'),
(115, 11, 'Радужный'),
(116, 11, 'Собинка'),
(117, 11, 'Струнино'),
(118, 11, 'Судогда'),
(119, 11, 'Суздаль'),
(120, 11, 'Юрьев-Польский'),
(121, 12, 'Волгоград'),
(122, 12, 'Волжский'),
(123, 12, 'Дубовка'),
(124, 12, 'Жирновск'),
(125, 12, 'Калач-на-Дону'),
(126, 12, 'Камышин'),
(127, 12, 'Котельниково'),
(128, 12, 'Котово'),
(129, 12, 'Краснослободск'),
(130, 12, 'Ленинск'),
(131, 12, 'Михайловка'),
(132, 12, 'Николаевск'),
(133, 12, 'Новоаннинский'),
(134, 12, 'Палласовка'),
(135, 12, 'Петров Вал'),
(136, 12, 'Серафимович'),
(137, 12, 'Суровикино'),
(138, 12, 'Урюпинск'),
(139, 12, 'Фролово'),
(140, 13, 'Бабаево'),
(141, 13, 'Белозерск'),
(142, 13, 'Великий Устюг'),
(143, 13, 'Вологда'),
(144, 13, 'Вытегра'),
(145, 13, 'Грязовец'),
(146, 13, 'Кадников'),
(147, 13, 'Кириллов'),
(148, 13, 'Красавино'),
(149, 13, 'Никольск'),
(150, 13, 'Сокол'),
(151, 13, 'Тотьма'),
(152, 13, 'Устюжна'),
(153, 13, 'Харовск'),
(154, 13, 'Череповец'),
(155, 14, 'Бобров'),
(156, 14, 'Богучар'),
(157, 14, 'Борисоглебск'),
(158, 14, 'Бутурлиновка'),
(159, 14, 'Воронеж'),
(160, 14, 'Калач'),
(161, 14, 'Лиски'),
(162, 14, 'Нововоронеж'),
(163, 14, 'Новохопёрск'),
(164, 14, 'Острогожск'),
(165, 14, 'Павловск'),
(166, 14, 'Поворино'),
(167, 14, 'Россошь'),
(168, 14, 'Семилуки'),
(169, 14, 'Эртиль'),
(170, 15, 'Буйнакск'),
(171, 15, 'Республика Дагестанские Огни'),
(172, 15, 'Дербент'),
(173, 15, 'Избербаш'),
(174, 15, 'Каспийск'),
(175, 15, 'Кизилюрт'),
(176, 15, 'Кизляр'),
(177, 15, 'Махачкала'),
(178, 15, 'Хасавюрт'),
(179, 15, 'Южно-Сухокумск'),
(180, 16, 'Биробиджан'),
(181, 16, 'Облучье'),
(182, 17, 'Балей'),
(183, 17, 'Борзя'),
(184, 17, 'Краснокаменск'),
(185, 17, 'Могоча'),
(186, 17, 'Нерчинск'),
(187, 17, 'Петровск-Забайкальский'),
(188, 17, 'Сретенск'),
(189, 17, 'Хилок'),
(190, 17, 'Чита'),
(191, 17, 'Шилка'),
(192, 18, 'Вичуга'),
(193, 18, 'Гаврилов Посад'),
(194, 18, 'Заволжск'),
(195, 18, 'Иваново'),
(196, 18, 'Кинешма'),
(197, 18, 'Комсомольск'),
(198, 18, 'Кохма'),
(199, 18, 'Наволоки'),
(200, 18, 'Плёс'),
(201, 18, 'Приволжск'),
(202, 18, 'Пучеж'),
(203, 18, 'Родники'),
(204, 18, 'Тейково'),
(205, 18, 'Фурманов'),
(206, 18, 'Шуя'),
(207, 18, 'Южа'),
(208, 18, 'Юрьевец'),
(209, 19, 'Карабулак'),
(210, 19, 'Магас'),
(211, 19, 'Малгобек'),
(212, 19, 'Назрань'),
(213, 20, 'Алзамай'),
(214, 20, 'Ангарск'),
(215, 20, 'Байкальск'),
(216, 20, 'Бирюсинск'),
(217, 20, 'Бодайбо'),
(218, 20, 'Братск'),
(219, 20, 'Вихоревка'),
(220, 20, 'Железногорск-Илимский'),
(221, 20, 'Зима'),
(222, 20, 'Иркутск'),
(223, 20, 'Киренск'),
(224, 20, 'Нижнеудинск'),
(225, 20, 'Саянск'),
(226, 20, 'Свирск'),
(227, 20, 'Слюдянка'),
(228, 20, 'Тайшет'),
(229, 20, 'Тулун'),
(230, 20, 'Усолье-Сибирское'),
(231, 20, 'Усть-Илимск'),
(232, 20, 'Усть-Кут'),
(233, 20, 'Черемхово'),
(234, 20, 'Шелехов'),
(235, 21, 'Баксан'),
(236, 21, 'Майский'),
(237, 21, 'Нальчик'),
(238, 21, 'Нарткала'),
(239, 21, 'Прохладный'),
(240, 21, 'Терек'),
(241, 21, 'Тырныауз'),
(242, 21, 'Чегем'),
(243, 22, 'Багратионовск'),
(244, 22, 'Балтийск'),
(245, 22, 'Гвардейск'),
(246, 22, 'Гурьевск'),
(247, 22, 'Гусев'),
(248, 22, 'Зеленоградск'),
(249, 22, 'Калининград'),
(250, 22, 'Краснознаменск'),
(251, 22, 'Ладушкин'),
(252, 22, 'Мамоново'),
(253, 22, 'Неман'),
(254, 22, 'Нестеров'),
(255, 22, 'Озёрск'),
(256, 22, 'Пионерский'),
(257, 22, 'Полесск'),
(258, 22, 'Правдинск'),
(259, 22, 'Светлогорск'),
(260, 22, 'Светлый'),
(261, 22, 'Славск'),
(262, 22, 'Советск'),
(263, 22, 'Черняховск'),
(264, 22, 'Приморск'),
(265, 23, 'Городовиковск'),
(266, 23, 'Лагань'),
(267, 23, 'Элиста'),
(268, 24, 'Балабаново'),
(269, 24, 'Белоусово'),
(270, 24, 'Боровск'),
(271, 24, 'Ермолино'),
(272, 24, 'Жиздра'),
(273, 24, 'Жуков'),
(274, 24, 'Калуга'),
(275, 24, 'Киров'),
(276, 24, 'Козельск'),
(277, 24, 'Кондрово'),
(278, 24, 'Кремёнки'),
(279, 24, 'Людиново'),
(280, 24, 'Малоярославец'),
(281, 24, 'Медынь'),
(282, 24, 'Мещовск'),
(283, 24, 'Мосальск'),
(284, 24, 'Обнинск'),
(285, 24, 'Сосенский'),
(286, 24, 'Спас-Деменск'),
(287, 24, 'Сухиничи'),
(288, 24, 'Таруса'),
(289, 24, 'Юхнов'),
(290, 25, 'Вилючинск'),
(291, 25, 'Елизово'),
(292, 25, 'Петропавловск-Камчатский'),
(293, 26, 'Карачаевск'),
(294, 26, 'Теберда'),
(295, 26, 'Усть-Джегута'),
(296, 26, 'Черкесск'),
(297, 27, 'Беломорск'),
(298, 27, 'Кемь'),
(299, 27, 'Кондопога'),
(300, 27, 'Костомукша'),
(301, 27, 'Лахденпохья'),
(302, 27, 'Медвежьегорск'),
(303, 27, 'Олонец'),
(304, 27, 'Петрозаводск'),
(305, 27, 'Питкяранта'),
(306, 27, 'Пудож'),
(307, 27, 'Сегежа'),
(308, 27, 'Сортавала'),
(309, 27, 'Суоярви'),
(310, 28, 'Анжеро-Судженск'),
(311, 28, 'Белово'),
(312, 28, 'Берёзовский'),
(313, 28, 'Гурьевск'),
(314, 28, 'Калтан'),
(315, 28, 'Кемерово'),
(316, 28, 'Киселёвск'),
(317, 28, 'Ленинск-Кузнецкий'),
(318, 28, 'Мариинск'),
(319, 28, 'Междуреченск'),
(320, 28, 'Мыски'),
(321, 28, 'Новокузнецк'),
(322, 28, 'Осинники'),
(323, 28, 'Полысаево'),
(324, 28, 'Прокопьевск'),
(325, 28, 'Салаир'),
(326, 28, 'Тайга'),
(327, 28, 'Таштагол'),
(328, 28, 'Топки'),
(329, 28, 'Юрга'),
(330, 29, 'Белая Холуница'),
(331, 29, 'Вятские Поляны'),
(332, 29, 'Зуевка'),
(333, 29, 'Киров'),
(334, 29, 'Кирово-Чепецк'),
(335, 29, 'Кирс'),
(336, 29, 'Котельнич'),
(337, 29, 'Луза'),
(338, 29, 'Малмыж'),
(339, 29, 'Мураши'),
(340, 29, 'Нолинск'),
(341, 29, 'Омутнинск'),
(342, 29, 'Орлов'),
(343, 29, 'Слободской'),
(344, 29, 'Советск'),
(345, 29, 'Сосновка'),
(346, 29, 'Уржум'),
(347, 29, 'Яранск'),
(348, 30, 'Воркута'),
(349, 30, 'Вуктыл'),
(350, 30, 'Емва'),
(351, 30, 'Инта'),
(352, 30, 'Микунь'),
(353, 30, 'Печора'),
(354, 30, 'Сосногорск'),
(355, 30, 'Сыктывкар'),
(356, 30, 'Усинск'),
(357, 30, 'Ухта'),
(358, 31, 'Буй'),
(359, 31, 'Волгореченск'),
(360, 31, 'Галич'),
(361, 31, 'Кологрив'),
(362, 31, 'Кострома'),
(363, 31, 'Макарьев'),
(364, 31, 'Мантурово'),
(365, 31, 'Нерехта'),
(366, 31, 'Нея'),
(367, 31, 'Солигалич'),
(368, 31, 'Чухлома'),
(369, 31, 'Шарья'),
(370, 32, 'Абинск'),
(371, 32, 'Анапа'),
(372, 32, 'Апшеронск'),
(373, 32, 'Армавир'),
(374, 32, 'Белореченск'),
(375, 32, 'Геленджик'),
(376, 32, 'Горячий Ключ'),
(377, 32, 'Гулькевичи'),
(378, 32, 'Ейск'),
(379, 32, 'Кореновск'),
(380, 32, 'Краснодар'),
(381, 32, 'Кропоткин'),
(382, 32, 'Республика Крымск'),
(383, 32, 'Курганинск'),
(384, 32, 'Лабинск'),
(385, 32, 'Новокубанск'),
(386, 32, 'Новороссийск'),
(387, 32, 'Приморско-Ахтарск'),
(388, 32, 'Славянск-на-Кубани'),
(389, 32, 'Сочи'),
(390, 32, 'Темрюк'),
(391, 32, 'Тимашёвск'),
(392, 32, 'Тихорецк'),
(393, 32, 'Туапсе'),
(394, 32, 'Усть-Лабинск'),
(395, 32, 'Хадыженск'),
(396, 33, 'Артёмовск'),
(397, 33, 'Ачинск'),
(398, 33, 'Боготол'),
(399, 33, 'Бородино'),
(400, 33, 'Дивногорск'),
(401, 33, 'Дудинка'),
(402, 33, 'Енисейск'),
(403, 33, 'Железногорск'),
(404, 33, 'Заозёрный'),
(405, 33, 'Зеленогорск'),
(406, 33, 'Игарка'),
(407, 33, 'Иланский'),
(408, 33, 'Канск'),
(409, 33, 'Кодинск'),
(410, 33, 'Красноярск'),
(411, 33, 'Лесосибирск'),
(412, 33, 'Минусинск'),
(413, 33, 'Назарово'),
(414, 33, 'Норильск'),
(415, 33, 'Сосновоборск'),
(416, 33, 'Ужур'),
(417, 33, 'Уяр'),
(418, 33, 'Шарыпово'),
(419, 34, 'Алупка'),
(420, 34, 'Алушта'),
(421, 34, 'Армянск'),
(422, 34, 'Бахчисарай'),
(423, 34, 'Белогорск'),
(424, 34, 'Джанкой'),
(425, 34, 'Евпатория'),
(426, 34, 'Керчь'),
(427, 34, 'Красноперекопск'),
(428, 34, 'Саки'),
(429, 34, 'Симферополь'),
(430, 34, 'Старый Республика Крым'),
(431, 34, 'Судак'),
(432, 34, 'Феодосия'),
(433, 34, 'Щёлкино'),
(434, 34, 'Ялта'),
(435, 35, 'Инкерман'),
(436, 35, 'Севастополь'),
(437, 36, 'Далматово'),
(438, 36, 'Катайск'),
(439, 36, 'Курган'),
(440, 36, 'Куртамыш'),
(441, 36, 'Макушино'),
(442, 36, 'Петухово'),
(443, 36, 'Шадринск'),
(444, 36, 'Шумиха'),
(445, 36, 'Щучье'),
(446, 37, 'Дмитриев'),
(447, 37, 'Железногорск'),
(448, 37, 'Курск'),
(449, 37, 'Курчатов'),
(450, 37, 'Льгов'),
(451, 37, 'Обоянь'),
(452, 37, 'Рыльск'),
(453, 37, 'Суджа'),
(454, 37, 'Фатеж'),
(455, 37, 'Щигры'),
(456, 38, 'Бокситогорск'),
(457, 38, 'Волосово'),
(458, 38, 'Волхов'),
(459, 38, 'Всеволожск'),
(460, 38, 'Выборг'),
(461, 38, 'Высоцк'),
(462, 38, 'Гатчина'),
(463, 38, 'Ивангород'),
(464, 38, 'Каменногорск'),
(465, 38, 'Кингисепп'),
(466, 38, 'Кириши'),
(467, 38, 'Кировск'),
(468, 38, 'Коммунар'),
(469, 38, 'Лодейное Поле'),
(470, 38, 'Луга'),
(471, 38, 'Любань'),
(472, 38, 'Никольское'),
(473, 38, 'Новая Ладога'),
(474, 38, 'Отрадное'),
(475, 38, 'Пикалёво'),
(476, 38, 'Подпорожье'),
(477, 38, 'Приморск'),
(478, 38, 'Приозерск'),
(479, 38, 'Светогорск'),
(480, 38, 'Сертолово'),
(481, 38, 'Сланцы'),
(482, 38, 'Сосновый Бор'),
(483, 38, 'Сясьстрой'),
(484, 38, 'Тихвин'),
(485, 38, 'Тосно'),
(486, 38, 'Шлиссельбург'),
(487, 39, 'Грязи'),
(488, 39, 'Данков'),
(489, 39, 'Елец'),
(490, 39, 'Задонск'),
(491, 39, 'Лебедянь'),
(492, 39, 'Липецк'),
(493, 39, 'Усмань'),
(494, 39, 'Чаплыгин'),
(495, 40, 'Магадан'),
(496, 40, 'Сусуман'),
(497, 41, 'Волжск'),
(498, 41, 'Звенигово'),
(499, 41, 'Йошкар-Ола'),
(500, 41, 'Козьмодемьянск'),
(501, 42, 'Ардатов'),
(502, 42, 'Инсар'),
(503, 42, 'Ковылкино'),
(504, 42, 'Краснослободск'),
(505, 42, 'Рузаевка'),
(506, 42, 'Саранск'),
(507, 42, 'Темников'),
(508, 43, 'Москва'),
(509, 43, 'Московский'),
(510, 43, 'Троицк'),
(511, 43, 'Щербинка'),
(512, 44, 'Апрелевка'),
(513, 44, 'Балашиха'),
(514, 44, 'Бронницы'),
(515, 44, 'Верея'),
(516, 44, 'Видное'),
(517, 44, 'Волоколамск'),
(518, 44, 'Воскресенск'),
(519, 44, 'Высоковск'),
(520, 44, 'Голицыно'),
(521, 44, 'Дедовск'),
(522, 44, 'Дзержинский'),
(523, 44, 'Дмитров'),
(524, 44, 'Долгопрудный'),
(525, 44, 'Домодедово'),
(526, 44, 'Дрезна'),
(527, 44, 'Дубна'),
(528, 44, 'Егорьевск'),
(529, 44, 'Жуковский'),
(530, 44, 'Зарайск'),
(531, 44, 'Звенигород'),
(532, 44, 'Ивантеевка'),
(533, 44, 'Истра'),
(534, 44, 'Кашира'),
(535, 44, 'Клин'),
(536, 44, 'Коломна'),
(537, 44, 'Котельники'),
(538, 44, 'Королёв'),
(539, 44, 'Красноармейск'),
(540, 44, 'Красногорск'),
(541, 44, 'Краснозаводск'),
(542, 44, 'Краснознаменск'),
(543, 44, 'Кубинка'),
(544, 44, 'Куровское'),
(545, 44, 'Ликино-Дулёво'),
(546, 44, 'Лобня'),
(547, 44, 'Лосино-Петровский'),
(548, 44, 'Луховицы'),
(549, 44, 'Лыткарино'),
(550, 44, 'Люберцы'),
(551, 44, 'Можайск'),
(552, 44, 'Мытищи'),
(553, 44, 'Наро-Фоминск'),
(554, 44, 'Ногинск'),
(555, 44, 'Одинцово'),
(556, 44, 'Ожерелье'),
(557, 44, 'Озёры'),
(558, 44, 'Орехово-Зуево'),
(559, 44, 'Павловский Посад'),
(560, 44, 'Пересвет'),
(561, 44, 'Подольск'),
(562, 44, 'Протвино'),
(563, 44, 'Пушкино'),
(564, 44, 'Пущино'),
(565, 44, 'Раменское'),
(566, 44, 'Реутов'),
(567, 44, 'Рошаль'),
(568, 44, 'Руза'),
(569, 44, 'Сергиев Посад'),
(570, 44, 'Серпухов'),
(571, 44, 'Солнечногорск'),
(572, 44, 'Старая Купавна'),
(573, 44, 'Ступино'),
(574, 44, 'Талдом'),
(575, 44, 'Фрязино'),
(576, 44, 'Химки'),
(577, 44, 'Хотьково'),
(578, 44, 'Черноголовка'),
(579, 44, 'Чехов'),
(580, 44, 'Шатура'),
(581, 44, 'Щёлково'),
(582, 44, 'Электрогорск'),
(583, 44, 'Электросталь'),
(584, 44, 'Электроугли'),
(585, 44, 'Яхрома'),
(586, 45, 'Апатиты'),
(587, 45, 'Гаджиево'),
(588, 45, 'Заозёрск'),
(589, 45, 'Заполярный'),
(590, 45, 'Кандалакша'),
(591, 45, 'Кировск'),
(592, 45, 'Ковдор'),
(593, 45, 'Кола'),
(594, 45, 'Мончегорск'),
(595, 45, 'Мурманск'),
(596, 45, 'Оленегорск'),
(597, 45, 'Островной'),
(598, 45, 'Полярные Зори'),
(599, 45, 'Полярный'),
(600, 45, 'Североморск'),
(601, 45, 'Снежногорск'),
(602, 46, 'Нарьян-Мар'),
(603, 47, 'Арзамас'),
(604, 47, 'Балахна'),
(605, 47, 'Богородск'),
(606, 47, 'Бор'),
(607, 47, 'Ветлуга'),
(608, 47, 'Володарск'),
(609, 47, 'Ворсма'),
(610, 47, 'Выкса'),
(611, 47, 'Горбатов'),
(612, 47, 'Городец'),
(613, 47, 'Дзержинск'),
(614, 47, 'Заволжье'),
(615, 47, 'Княгинино'),
(616, 47, 'Кстово'),
(617, 47, 'Кулебаки'),
(618, 47, 'Лукоянов'),
(619, 47, 'Лысково'),
(620, 47, 'Навашино'),
(621, 47, 'Нижний Новгород'),
(622, 47, 'Павлово'),
(623, 47, 'Первомайск'),
(624, 47, 'Перевоз'),
(625, 47, 'Саров'),
(626, 47, 'Семёнов'),
(627, 47, 'Сергач'),
(628, 47, 'Урень'),
(629, 47, 'Чкаловск'),
(630, 47, 'Шахунья'),
(631, 48, 'Боровичи'),
(632, 48, 'Валдай'),
(633, 48, 'Великий Новгород'),
(634, 48, 'Малая Вишера'),
(635, 48, 'Окуловка'),
(636, 48, 'Пестово'),
(637, 48, 'Сольцы'),
(638, 48, 'Старая Русса'),
(639, 48, 'Холм'),
(640, 48, 'Чудово'),
(641, 49, 'Барабинск'),
(642, 49, 'Бердск'),
(643, 49, 'Болотное'),
(644, 49, 'Искитим'),
(645, 49, 'Карасук'),
(646, 49, 'Каргат'),
(647, 49, 'Куйбышев'),
(648, 49, 'Купино'),
(649, 49, 'Новосибирск'),
(650, 49, 'Обь'),
(651, 49, 'Татарск'),
(652, 49, 'Тогучин'),
(653, 49, 'Черепаново'),
(654, 49, 'Чулым'),
(655, 50, 'Исилькуль'),
(656, 50, 'Калачинск'),
(657, 50, 'Называевск'),
(658, 50, 'Омск'),
(659, 50, 'Тара'),
(660, 50, 'Тюкалинск'),
(661, 51, 'Абдулино'),
(662, 51, 'Бугуруслан'),
(663, 51, 'Бузулук'),
(664, 51, 'Гай'),
(665, 51, 'Кувандык'),
(666, 51, 'Медногорск'),
(667, 51, 'Новотроицк'),
(668, 51, 'Оренбург'),
(669, 51, 'Орск'),
(670, 51, 'Соль-Илецк'),
(671, 51, 'Сорочинск'),
(672, 51, 'Ясный'),
(673, 52, 'Болхов'),
(674, 52, 'Дмитровск'),
(675, 52, 'Ливны'),
(676, 52, 'Малоархангельск'),
(677, 52, 'Мценск'),
(678, 52, 'Новосиль'),
(679, 52, 'Орёл'),
(680, 53, 'Белинский'),
(681, 53, 'Городище'),
(682, 53, 'Заречный'),
(683, 53, 'Каменка'),
(684, 53, 'Кузнецк'),
(685, 53, 'Нижний Ломов'),
(686, 53, 'Никольск'),
(687, 53, 'Пенза'),
(688, 53, 'Сердобск'),
(689, 53, 'Спасск'),
(690, 53, 'Сурск'),
(691, 54, 'Александровск'),
(692, 54, 'Березники'),
(693, 54, 'Верещагино'),
(694, 54, 'Горнозаводск'),
(695, 54, 'Гремячинск'),
(696, 54, 'Губаха'),
(697, 54, 'Добрянка'),
(698, 54, 'Кизел'),
(699, 54, 'Красновишерск'),
(700, 54, 'Краснокамск'),
(701, 54, 'Кудымкар'),
(702, 54, 'Кунгур'),
(703, 54, 'Лысьва'),
(704, 54, 'Нытва'),
(705, 54, 'Оса'),
(706, 54, 'Оханск'),
(707, 54, 'Очёр'),
(708, 54, 'Пермь'),
(709, 54, 'Соликамск'),
(710, 54, 'Усолье'),
(711, 54, 'Чайковский'),
(712, 54, 'Чердынь'),
(713, 54, 'Чёрмоз'),
(714, 54, 'Чернушка'),
(715, 54, 'Чусовой'),
(716, 55, 'Арсеньев'),
(717, 55, 'Артём'),
(718, 55, 'Большой Камень'),
(719, 55, 'Владивосток'),
(720, 55, 'Дальнегорск'),
(721, 55, 'Дальнереченск'),
(722, 55, 'Лесозаводск'),
(723, 55, 'Находка'),
(724, 55, 'Партизанск'),
(725, 55, 'Спасск-Дальний'),
(726, 55, 'Уссурийск'),
(727, 55, 'Фокино'),
(728, 56, 'Великие Луки'),
(729, 56, 'Гдов'),
(730, 56, 'Дно'),
(731, 56, 'Невель'),
(732, 56, 'Новоржев'),
(733, 56, 'Новосокольники'),
(734, 56, 'Опочка'),
(735, 56, 'Остров'),
(736, 56, 'Печоры'),
(737, 56, 'Порхов'),
(738, 56, 'Псков'),
(739, 56, 'Пустошка'),
(740, 56, 'Пыталово'),
(741, 56, 'Себеж'),
(742, 57, 'Азов'),
(743, 57, 'Аксай'),
(744, 57, 'Батайск'),
(745, 57, 'Белая Калитва'),
(746, 57, 'Волгодонск'),
(747, 57, 'Гуково'),
(748, 57, 'Донецк'),
(749, 57, 'Зверево'),
(750, 57, 'Зерноград'),
(751, 57, 'Каменск-Шахтинский'),
(752, 57, 'Константиновск'),
(753, 57, 'Красный Сулин'),
(754, 57, 'Миллерово'),
(755, 57, 'Морозовск'),
(756, 57, 'Новочеркасск'),
(757, 57, 'Новошахтинск'),
(758, 57, 'Пролетарск'),
(759, 57, 'Ростов-на-Дону'),
(760, 57, 'Сальск'),
(761, 57, 'Семикаракорск'),
(762, 57, 'Таганрог'),
(763, 57, 'Цимлянск'),
(764, 57, 'Шахты'),
(765, 58, 'Касимов'),
(766, 58, 'Кораблино'),
(767, 58, 'Михайлов'),
(768, 58, 'Новомичуринск'),
(769, 58, 'Рыбное'),
(770, 58, 'Ряжск'),
(771, 58, 'Рязань'),
(772, 58, 'Сасово'),
(773, 58, 'Скопин'),
(774, 58, 'Спас-Клепики'),
(775, 58, 'Спасск-Рязанский'),
(776, 58, 'Шацк'),
(777, 59, 'Жигулёвск'),
(778, 59, 'Кинель'),
(779, 59, 'Нефтегорск'),
(780, 59, 'Новокуйбышевск'),
(781, 59, 'Октябрьск'),
(782, 59, 'Отрадный'),
(783, 59, 'Похвистнево'),
(784, 59, 'Самара'),
(785, 59, 'Сызрань'),
(786, 59, 'Тольятти'),
(787, 59, 'Чапаевск'),
(788, 60, 'Зеленогорск'),
(789, 60, 'Колпино'),
(790, 60, 'Красное Село'),
(791, 60, 'Кронштадт'),
(792, 60, 'Ломоносов'),
(793, 60, 'Павловск'),
(794, 60, 'Петергоф'),
(795, 60, 'Пушкин'),
(796, 60, 'Санкт-Петербург'),
(797, 60, 'Сестрорецк'),
(798, 61, 'Аркадак'),
(799, 61, 'Аткарск'),
(800, 61, 'Балаково'),
(801, 61, 'Балашов'),
(802, 61, 'Вольск'),
(803, 61, 'Ершов'),
(804, 61, 'Калининск'),
(805, 61, 'Красноармейск'),
(806, 61, 'Красный Кут'),
(807, 61, 'Маркс'),
(808, 61, 'Новоузенск'),
(809, 61, 'Петровск'),
(810, 61, 'Пугачёв'),
(811, 61, 'Ртищево'),
(812, 61, 'Саратов'),
(813, 61, 'Хвалынск'),
(814, 61, 'Шиханы'),
(815, 61, 'Энгельс'),
(816, 62, 'Александровск-Сахалинский'),
(817, 62, 'Анива'),
(818, 62, 'Долинск'),
(819, 62, 'Корсаков'),
(820, 62, 'Курильск'),
(821, 62, 'Макаров'),
(822, 62, 'Невельск'),
(823, 62, 'Оха'),
(824, 62, 'Поронайск'),
(825, 62, 'Северо-Курильск'),
(826, 62, 'Томари'),
(827, 62, 'Углегорск'),
(828, 62, 'Холмск'),
(829, 62, 'Шахтёрск'),
(830, 62, 'Южно-Сахалинск'),
(831, 63, 'Алапаевск'),
(832, 63, 'Арамиль'),
(833, 63, 'Артёмовский'),
(834, 63, 'Асбест'),
(835, 63, 'Берёзовский'),
(836, 63, 'Богданович'),
(837, 63, 'Верхний Тагил'),
(838, 63, 'Верхняя Пышма'),
(839, 63, 'Верхняя Салда'),
(840, 63, 'Верхняя Тура'),
(841, 63, 'Верхотурье'),
(842, 63, 'Волчанск'),
(843, 63, 'Дегтярск'),
(844, 63, 'Екатеринбург'),
(845, 63, 'Заречный'),
(846, 63, 'Ивдель'),
(847, 63, 'Ирбит'),
(848, 63, 'Каменск-Уральский'),
(849, 63, 'Камышлов'),
(850, 63, 'Карпинск'),
(851, 63, 'Качканар'),
(852, 63, 'Кировград'),
(853, 63, 'Краснотурьинск'),
(854, 63, 'Красноуральск'),
(855, 63, 'Красноуфимск'),
(856, 63, 'Кушва'),
(857, 63, 'Лесной'),
(858, 63, 'Михайловск'),
(859, 63, 'Невьянск'),
(860, 63, 'Нижние Серги'),
(861, 63, 'Нижний Тагил'),
(862, 63, 'Нижняя Салда'),
(863, 63, 'Нижняя Тура'),
(864, 63, 'Новая Ляля'),
(865, 63, 'Новоуральск'),
(866, 63, 'Первоуральск'),
(867, 63, 'Полевской'),
(868, 63, 'Ревда'),
(869, 63, 'Реж'),
(870, 63, 'Североуральск'),
(871, 63, 'Серов'),
(872, 63, 'Среднеуральск'),
(873, 63, 'Сухой Лог'),
(874, 63, 'Сысерть'),
(875, 63, 'Тавда'),
(876, 63, 'Талица'),
(877, 63, 'Туринск'),
(878, 64, 'Алагир'),
(879, 64, 'Ардон'),
(880, 64, 'Беслан'),
(881, 64, 'Владикавказ'),
(882, 64, 'Дигора'),
(883, 64, 'Моздок'),
(884, 65, 'Велиж'),
(885, 65, 'Вязьма'),
(886, 65, 'Гагарин'),
(887, 65, 'Демидов'),
(888, 65, 'Десногорск'),
(889, 65, 'Дорогобуж'),
(890, 65, 'Духовщина'),
(891, 65, 'Ельня'),
(892, 65, 'Починок'),
(893, 65, 'Рославль'),
(894, 65, 'Рудня'),
(895, 65, 'Сафоново'),
(896, 65, 'Смоленск'),
(897, 65, 'Сычёвка'),
(898, 65, 'Ярцево'),
(899, 66, 'Благодарный'),
(900, 66, 'Будённовск'),
(901, 66, 'Георгиевск'),
(902, 66, 'Ессентуки'),
(903, 66, 'Железноводск'),
(904, 66, 'Зеленокумск'),
(905, 66, 'Изобильный'),
(906, 66, 'Ипатово'),
(907, 66, 'Кисловодск'),
(908, 66, 'Лермонтов'),
(909, 66, 'Минеральные Воды'),
(910, 66, 'Михайловск'),
(911, 66, 'Невинномысск'),
(912, 66, 'Нефтекумск'),
(913, 66, 'Новоалександровск'),
(914, 66, 'Новопавловск'),
(915, 66, 'Пятигорск'),
(916, 66, 'Светлоград'),
(917, 66, 'Ставрополь'),
(918, 67, 'Жердевка'),
(919, 67, 'Кирсанов'),
(920, 67, 'Котовск'),
(921, 67, 'Мичуринск'),
(922, 67, 'Моршанск'),
(923, 67, 'Рассказово'),
(924, 67, 'Тамбов'),
(925, 67, 'Уварово'),
(926, 68, 'Агрыз'),
(927, 68, 'Азнакаево'),
(928, 68, 'Альметьевск'),
(929, 68, 'Арск'),
(930, 68, 'Бавлы'),
(931, 68, 'Болгар'),
(932, 68, 'Бугульма'),
(933, 68, 'Буинск'),
(934, 68, 'Елабуга'),
(935, 68, 'Заинск'),
(936, 68, 'Зеленодольск'),
(937, 68, 'Иннополис'),
(938, 68, 'Казань'),
(939, 68, 'Лаишево'),
(940, 68, 'Лениногорск'),
(941, 68, 'Мамадыш'),
(942, 68, 'Менделеевск'),
(943, 68, 'Мензелинск'),
(944, 68, 'Набережные Челны'),
(945, 68, 'Нижнекамск'),
(946, 68, 'Нурлат'),
(947, 68, 'Тетюши'),
(948, 68, 'Чистополь'),
(949, 69, 'Андреаполь'),
(950, 69, 'Бежецк'),
(951, 69, 'Белый'),
(952, 69, 'Бологое'),
(953, 69, 'Весьегонск'),
(954, 69, 'Вышний Волочёк'),
(955, 69, 'Западная Двина'),
(956, 69, 'Зубцов'),
(957, 69, 'Калязин'),
(958, 69, 'Кашин'),
(959, 69, 'Кимры'),
(960, 69, 'Конаково'),
(961, 69, 'Красный Холм'),
(962, 69, 'Кувшиново'),
(963, 69, 'Лихославль'),
(964, 69, 'Нелидово'),
(965, 69, 'Осташков'),
(966, 69, 'Ржев'),
(967, 69, 'Старица'),
(968, 69, 'Тверь'),
(969, 69, 'Торжок'),
(970, 69, 'Торопец'),
(971, 69, 'Удомля'),
(972, 70, 'Асино'),
(973, 70, 'Кедровый'),
(974, 70, 'Колпашево'),
(975, 70, 'Северск'),
(976, 70, 'Стрежевой'),
(977, 70, 'Томск'),
(978, 71, 'Алексин'),
(979, 71, 'Белёв'),
(980, 71, 'Богородицк'),
(981, 71, 'Болохово'),
(982, 71, 'Венёв'),
(983, 71, 'Донской'),
(984, 71, 'Ефремов'),
(985, 71, 'Кимовск'),
(986, 71, 'Киреевск'),
(987, 71, 'Липки'),
(988, 71, 'Новомосковск'),
(989, 71, 'Плавск'),
(990, 71, 'Суворов'),
(991, 71, 'Тула'),
(992, 71, 'Узловая'),
(993, 71, 'Чекалин'),
(994, 71, 'Щёкино'),
(995, 71, 'Ясногорск'),
(996, 71, 'Советск'),
(997, 72, 'Ак-Довурак'),
(998, 72, 'Кызыл'),
(999, 72, 'Туран'),
(1000, 72, 'Чадан'),
(1001, 72, 'Шагонар'),
(1002, 73, 'Заводоуковск'),
(1003, 73, 'Ишим'),
(1004, 73, 'Тобольск'),
(1005, 73, 'Тюмень'),
(1006, 73, 'Ялуторовск'),
(1007, 74, 'Воткинск'),
(1008, 74, 'Глазов'),
(1009, 74, 'Ижевск'),
(1010, 74, 'Камбарка'),
(1011, 74, 'Можга'),
(1012, 74, 'Сарапул'),
(1013, 75, 'Барыш'),
(1014, 75, 'Димитровград'),
(1015, 75, 'Инза'),
(1016, 75, 'Новоульяновск'),
(1017, 75, 'Сенгилей'),
(1018, 75, 'Ульяновск'),
(1019, 76, 'Амурск'),
(1020, 76, 'Бикин'),
(1021, 76, 'Вяземский'),
(1022, 76, 'Комсомольск-на-Амуре'),
(1023, 76, 'Николаевск-на-Амуре'),
(1024, 76, 'Советская Гавань'),
(1025, 76, 'Хабаровск'),
(1026, 77, 'Абаза'),
(1027, 77, 'Абакан'),
(1028, 77, 'Саяногорск'),
(1029, 77, 'Сорск'),
(1030, 77, 'Черногорск'),
(1031, 78, 'Белоярский'),
(1032, 78, 'Когалым'),
(1033, 78, 'Лангепас'),
(1034, 78, 'Лянтор'),
(1035, 78, 'Мегион'),
(1036, 78, 'Нефтеюганск'),
(1037, 78, 'Нижневартовск'),
(1038, 78, 'Нягань'),
(1039, 78, 'Покачи'),
(1040, 78, 'Пыть-Ях'),
(1041, 78, 'Радужный'),
(1042, 78, 'Советский'),
(1043, 78, 'Сургут'),
(1044, 78, 'Урай'),
(1045, 78, 'Ханты-Мансийск'),
(1046, 78, 'Югорск'),
(1047, 79, 'Аша'),
(1048, 79, 'Бакал'),
(1049, 79, 'Верхнеуральск'),
(1050, 79, 'Верхний Уфалей'),
(1051, 79, 'Еманжелинск'),
(1052, 79, 'Златоуст'),
(1053, 79, 'Карабаш'),
(1054, 79, 'Карталы'),
(1055, 79, 'Касли'),
(1056, 79, 'Катав-Ивановск'),
(1057, 79, 'Копейск'),
(1058, 79, 'Коркино'),
(1059, 79, 'Куса'),
(1060, 79, 'Кыштым'),
(1061, 79, 'Магнитогорск'),
(1062, 79, 'Миасс'),
(1063, 79, 'Миньяр'),
(1064, 79, 'Нязепетровск'),
(1065, 79, 'Озёрск'),
(1066, 79, 'Пласт'),
(1067, 79, 'Сатка'),
(1068, 79, 'Сим'),
(1069, 79, 'Снежинск'),
(1070, 79, 'Трёхгорный'),
(1071, 79, 'Троицк'),
(1072, 79, 'Усть-Катав'),
(1073, 79, 'Чебаркуль'),
(1074, 79, 'Челябинск'),
(1075, 79, 'Южноуральск'),
(1076, 79, 'Юрюзань'),
(1077, 80, 'Аргун'),
(1078, 80, 'Грозный'),
(1079, 80, 'Гудермес'),
(1080, 80, 'Урус-Мартан'),
(1081, 80, 'Шали'),
(1082, 81, 'Алатырь'),
(1083, 81, 'Канаш'),
(1084, 81, 'Козловка'),
(1085, 81, 'Мариинский Посад'),
(1086, 81, 'Новочебоксарск'),
(1087, 81, 'Цивильск'),
(1088, 81, 'Чебоксары'),
(1089, 81, 'Шумерля'),
(1090, 81, 'Ядрин'),
(1091, 82, 'Анадырь'),
(1092, 82, 'Билибино'),
(1093, 82, 'Певек'),
(1094, 83, 'Алдан'),
(1095, 83, 'Верхоянск'),
(1096, 83, 'Вилюйск'),
(1097, 83, 'Ленск'),
(1098, 83, 'Мирный'),
(1099, 83, 'Нерюнгри'),
(1100, 83, 'Нюрба'),
(1101, 83, 'Олёкминск'),
(1102, 83, 'Покровск'),
(1103, 83, 'Среднеколымск'),
(1104, 83, 'Томмот'),
(1105, 83, 'Удачный'),
(1106, 83, 'Якутск'),
(1107, 84, 'Губкинский'),
(1108, 84, 'Лабытнанги'),
(1109, 84, 'Муравленко'),
(1110, 84, 'Надым'),
(1111, 84, 'Новый Уренгой'),
(1112, 84, 'Ноябрьск'),
(1113, 84, 'Салехард'),
(1114, 84, 'Тарко-Сале'),
(1115, 85, 'Гаврилов-Ям'),
(1116, 85, 'Данилов'),
(1117, 85, 'Любим'),
(1118, 85, 'Мышкин'),
(1119, 85, 'Переславль-Залесский'),
(1120, 85, 'Пошехонье'),
(1121, 85, 'Ростов'),
(1122, 85, 'Рыбинск'),
(1123, 85, 'Тутаев'),
(1124, 85, 'Углич'),
(1125, 85, 'Ярославль');

-- --------------------------------------------------------

--
-- Структура таблицы `fs_okrug`
--

CREATE TABLE `fs_okrug` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fs_okrug`
--

INSERT INTO `fs_okrug` (`id`, `name`) VALUES
(1, 'Южный'),
(2, 'Сибирский'),
(3, 'Дальневосточный'),
(4, 'Северо-Западный'),
(5, 'Приволжский'),
(6, 'Крымский'),
(7, 'Северо-Кавказский'),
(8, 'Уральский'),
(9, 'Центральный');

-- --------------------------------------------------------

--
-- Структура таблицы `fs_region`
--

CREATE TABLE `fs_region` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_country` int(6) NOT NULL,
  `id_okrug` int(3) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fs_region`
--

INSERT INTO `fs_region` (`id`, `id_country`, `id_okrug`, `name`) VALUES
(1, 1, 1, 'Республика Адыгея'),
(2, 1, 2, 'Республика Алтай'),
(3, 1, 2, 'Алтайский край'),
(4, 1, 3, 'Амурская область'),
(5, 1, 4, 'Архангельская область'),
(6, 1, 1, 'Астраханская область'),
(7, 1, 5, 'Республика Башкортостан'),
(8, 1, 9, 'Белгородская область'),
(9, 1, 9, 'Брянская область'),
(10, 1, 2, 'Республика Бурятия'),
(11, 1, 9, 'Владимирская область'),
(12, 1, 1, 'Волгоградская область'),
(13, 1, 4, 'Вологодская область'),
(14, 1, 9, 'Воронежская область'),
(15, 1, 7, 'Республика Дагестан'),
(16, 1, 3, 'Еврейская АО'),
(17, 1, 2, 'Забайкальский край'),
(18, 1, 9, 'Ивановская область'),
(19, 1, 7, 'Республика Игушетия'),
(20, 1, 2, 'Иркутская область'),
(21, 1, 7, 'Кабардино-Балкария'),
(22, 1, 4, 'Калининградская область'),
(23, 1, 1, 'Республика Калмыкия'),
(24, 1, 9, 'Калужская область'),
(25, 1, 3, 'Камчатский край'),
(26, 1, 7, 'Карачаево-Черкесия'),
(27, 1, 4, 'Республика Карелия'),
(28, 1, 2, 'Кемеровская область'),
(29, 1, 5, 'Кировская область'),
(30, 1, 4, 'Республика Коми'),
(31, 1, 9, 'Костромская область'),
(32, 1, 1, 'Краснодарский край'),
(33, 1, 2, 'Красноярский край'),
(34, 1, 6, 'Республика Крым'),
(35, 1, 6, 'Севастополь'),
(36, 1, 8, 'Курганская область'),
(37, 1, 9, 'Курская область'),
(38, 1, 4, 'Ленинградская область'),
(39, 1, 9, 'Липецкая область'),
(40, 1, 3, 'Магаданская область'),
(41, 1, 5, 'Республика Марий Эл'),
(42, 1, 5, 'Республика Мордовия'),
(43, 1, 9, 'Москва'),
(44, 1, 9, 'Московская область'),
(45, 1, 4, 'Мурманская область'),
(46, 1, 4, 'Ненецкий АО'),
(47, 1, 5, 'Нижегородская область'),
(48, 1, 4, 'Новгородская область'),
(49, 1, 2, 'Новосибирская область'),
(50, 1, 2, 'Омская область'),
(51, 1, 5, 'Оренбургская область'),
(52, 1, 9, 'Орловская область'),
(53, 1, 5, 'Пензенская область'),
(54, 1, 5, 'Пермский край'),
(55, 1, 3, 'Приморский край'),
(56, 1, 4, 'Псковская область'),
(57, 1, 1, 'Ростовская область'),
(58, 1, 9, 'Рязанская область'),
(59, 1, 5, 'Самарская область'),
(60, 1, 4, 'Санкт-Петербург'),
(61, 1, 5, 'Саратовская область'),
(62, 1, 3, 'Сахалинская область'),
(63, 1, 8, 'Свердловская область'),
(64, 1, 7, 'Республика Северная Осетия - Алания'),
(65, 1, 9, 'Смоленская область'),
(66, 1, 7, 'Ставропольский край'),
(67, 1, 9, 'Тамбовская область'),
(68, 1, 5, 'Республика Татарстан'),
(69, 1, 9, 'Тверская область'),
(70, 1, 2, 'Томская область'),
(71, 1, 9, 'Тульская область'),
(72, 1, 2, 'Республика Тыва'),
(73, 1, 8, 'Тюменская область'),
(74, 1, 5, 'Удмуртская Республика'),
(75, 1, 5, 'Ульяновская область'),
(76, 1, 3, 'Хабаровский край'),
(77, 1, 2, 'Республика Хакасия'),
(78, 1, 8, 'Ханты-Мансийский АО'),
(79, 1, 8, 'Челябинская область'),
(80, 1, 7, 'Республика Чечня'),
(81, 1, 5, 'Чувашская Республика'),
(82, 1, 3, 'Чукотский АО'),
(83, 1, 3, 'Республика Саха (Якутия)'),
(84, 1, 8, 'Ямало-Ненецкий АО'),
(85, 1, 9, 'Ярославская область');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`) VALUES
(1, 'sneakers', 5000, 19);

-- --------------------------------------------------------

--
-- Структура таблицы `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `surname` varchar(32) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `test`
--

INSERT INTO `test` (`id`, `name`, `surname`, `price`) VALUES
(1, 'haba', NULL, 1),
(2, 'haba', 'fafa', 2);

-- --------------------------------------------------------

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
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fs_city`
--
ALTER TABLE `fs_city`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fs_okrug`
--
ALTER TABLE `fs_okrug`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fs_region`
--
ALTER TABLE `fs_region`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

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
--

--
-- AUTO_INCREMENT для таблицы `fs_city`
--
ALTER TABLE `fs_city`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1126;

--
-- AUTO_INCREMENT для таблицы `fs_okrug`
--
ALTER TABLE `fs_okrug`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `fs_region`
--
ALTER TABLE `fs_region`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
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
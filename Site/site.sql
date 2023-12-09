-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 07 2023 г., 11:21
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
-- База данных: `site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int NOT NULL,
  `name` varchar(121) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(1, 'Lena', 'qweerrr'),
(4, 'aaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(10, 'Lena5', 'qweerrr'),
(11, 'Lena50', 'qweerrr'),
(12, 'vvvl', 'vvv'),
(13, 'lexa', 'xaxa');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `admin` tinyint NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created`) VALUES
(1, 0, 'Lena', 'kravhi5@gmail.com', '12345', '2023-12-05 11:51:38'),
(2, 1, 'Kristian', 'kris@gmail.com', '1231', '2023-12-05 12:05:30'),
(3, 1, 'Sergei', 'serega@gmail.com', '54321', '2023-12-05 12:16:11'),
(4, 1, '44', 'me@gmail.com', '3214', '2023-12-05 12:43:33'),
(6, 1, '44', 'me8@gmail.com', '3214', '2023-12-05 12:47:45'),
(7, 0, '45', 'r232@re.ua', '21321321', '2023-12-05 12:53:15'),
(11, 1, 'krash21', 'twinka@gmail.com', '2i9u8y7t6', '2023-12-04 22:58:37'),
(15, 1, 'krash21', 'twika@gmail.com', '2i9u8y7t6', '2023-12-04 22:58:37'),
(16, 0, '', '', '$2y$10$napzTGL49gRfAZ3Hlv2vrO7J0Q9JpdPr2v0dgsBT/wirJ1PMSmR7O', '2023-12-05 20:16:51'),
(18, 0, 'root', 'kravhi85@gmail.com', '$2y$10$sjPVdjYtisIajKIF.P5vrOFBBOdVSje018rXe9u1ufcG5CYJxssgG', '2023-12-05 20:18:40'),
(21, 0, '12345', 'a87@gmail.com', '$2y$10$JhsP.arVwchG9f4E0gJ9r.Pk65HBcN0i0Op7xeuVXKe1FN2bZHwsy', '2023-12-05 20:22:16'),
(22, 0, 'root55', 'a8557@gmail.com', '$2y$10$oGsCW/bvJkJ8Z5Xl.3RvtOD.ZmoTHtiPkn9UfAWx3GAlPbows3axS', '2023-12-05 20:24:54'),
(23, 0, 'root88', 'root99@gmail.com', '$2y$10$GhwqcJeG2Z2jNDJm/gSZR.y5HPJQ2MKyzeHXHi2B5JsyWmde6bQKS', '2023-12-05 21:18:56'),
(24, 0, 'root90', 'root32@gmail.com', '$2y$10$dy2kY.4PzyHyXMHDC4RnoO1VsgEG9kg8mwDdo6k4akIGj1VW.DIoi', '2023-12-05 21:20:07'),
(25, 0, 'roo7t', 'root732@gmail.com', '$2y$10$hLze4l.uqlayZga8NHlRwu7P36y4YeMs9OjmRn9WshRPtGNaw0.4K', '2023-12-05 21:22:21'),
(26, 0, 'somes', 'ali@gmail.com', '$2y$10$r5Wp/AMhzV1jTFeEiMX3Ju7M5tNIQ2vlmlPJKJUhgcz2VG432/e7a', '2023-12-05 21:28:35'),
(27, 0, 'Lena', 'kravchishina@gmail.com', '$2y$10$0UKA9LONQpNo5ug33iimV.c0QFJm9q7WRqhv9nJ4B72nYZlV.2Pza', '2023-12-05 21:34:00'),
(28, 0, 'Lenok', 'kuvchin@gmail.com', '$2y$10$NGAvl4N5kjIl06dHlgYsJ.Mw6U2dCHj1DFvJTq7LSnuAboabtsLLW', '2023-12-05 21:45:42'),
(29, 0, 'Andrey', 'and@gmail.com', '$2y$10$IhoQoeSRt3Nv1Yl2aCPnPOQp0yaNMu6/eEUGsGwL/pv8FPNsp9C1C', '2023-12-06 06:07:21'),
(30, 0, 'test1', 'test@gmail.com', '$2y$10$HyT9jrxruMVo5r3PmgEcB.J.UrtrbyFXh6pbnNltm6yqB3pZFG95i', '2023-12-06 06:18:50'),
(31, 1, 'ologarak', 'olga@gmail.com', '1029', '2023-12-06 17:11:43'),
(33, 0, 'root589p', 'p@gmail.com', '$2y$10$bY6K0rIpMCN1mSa/BrRGHOKka8U.ORDLPvleVO0wg64r1cc1sciEO', '2023-12-06 17:38:31'),
(34, 1, 'kravci7', 'ci@gmail.com', '987654321', '2023-07-23 18:09:43'),
(36, 1, 'kravci7', 'ci0@gmail.com', '987654321', '2023-07-23 18:09:43'),
(39, 0, 'root589', 'root3882@gmail.com', '$2y$10$CK5TlQLCDSxwCEZkCv7WieWTcLIkKP084Mn8XXUFMwNxZdqKHTpM6', '2023-12-06 20:02:10'),
(40, 0, 'keite', 'lolka@gmail.com', '$2y$10$TOVWIdyFSmJ0YQcdYgweq.jH6ys62VoyDW.BPoqWJ/o6H691X3wte', '2023-12-06 20:09:07'),
(42, 0, 'keite', 'lolkoa@gmail.com', '$2y$10$r80vN9wMA1qqUdK3SU7QyuMuZHupN0IjlTtRvqYakbSx2ZO2jBI6y', '2023-12-06 20:09:40'),
(43, 0, 'kate', 're@gmail.com', '$2y$10$YkiDvJG4fdqXIzAuAIvOIeS7ce9niy3kgvhueOex1BAvc3xoeNfZ6', '2023-12-06 20:38:16'),
(44, 0, 'iq', 'q@gmail.com', '$2y$10$dg.HhA3memqtj6MNtuJvj.sLVJXAtsQREV63qp8qz5DBilLJpFFva', '2023-12-06 20:39:54'),
(45, 0, 'as', 'a@gmail.com', '$2y$10$PRh4ECAA9P49bBIHLqLHGOvR/M9rzHye8GlHBeOFNtlrieoouuBpq', '2023-12-06 20:40:44'),
(46, 0, 'i0', 'ko@gmail.com', '$2y$10$zlYxbkEPs9.0449pbuTKD.skNhRbWJK.2K7JV69Lei1UfPg93g9Rm', '2023-12-06 20:53:43'),
(47, 0, 'pol', 's@gmail.com', '$2y$10$Wqge5M83Zyk6Gvw4DESKPeepZFuxZOHbHj2LQ0jOzW/dvhEDu.5ka', '2023-12-06 21:12:39'),
(48, 0, 'asa', 'fas@gmail.com', '$2y$10$.ZrnJU3ZIm5xtfFeG5LsbepV.LJy5qTtELTRZYmrL96rRj5vOnmfG', '2023-12-06 21:15:51'),
(49, 0, 'karina', 'keit@gmail.com', '$2y$10$l1HYGKhrBnPxb8lBXBu3nO0gU2cX196xe20ELmuqDcdWydIvq1lOW', '2023-12-06 21:17:41'),
(50, 0, 'liana', 'lia2@gmail.com', '$2y$10$LRjRNkJ/Y2eRoz.2tPotge95spf1MLHnBabNvM/mfo06DfzHcG0GW', '2023-12-06 21:23:36'),
(51, 0, 'keti', 'klep@gmail.com', '$2y$10$.iClz0oo5J6PSvK27C55X.XtpT.tc059DqKk9dLNxP60LesFxj8QW', '2023-12-06 22:04:59'),
(52, 0, 'list', 'l@gmail.com', '$2y$10$1ICkZkk1/V4ncAhm/mgUbu8URkfusDG.OFTKuXtPJzRxfk0nDD6uG', '2023-12-06 22:07:01'),
(53, 0, 'll', 'lol@gmail.com', '$2y$10$SbspyudRwaohHw.yw.Ng0e4V4ou.iSlSyN7z3ikz69f9viRF.6aLG', '2023-12-06 22:18:40'),
(54, 0, 'lok', 'll@gmail.com', '$2y$10$riJytsqWG0mtUptqzC1ao.pKmAdQ8jycCrtO9ksPyTvZKilnBv2Ae', '2023-12-06 22:52:19'),
(55, 0, 'lena', 'lena@gmail.com', '$2y$10$j6Nhcp8tvy2eNn2BkHi6k.stdTvsdNTrOHaAvGZJCZAj.MtrOCAr2', '2023-12-06 22:53:36'),
(56, 1, 'kp', 'k@gmail.com', '$2y$10$aEOc5T//UyEDx3pEwnn2EeD.r972fH2M5OTrT3ki91TF3av9eVVTO', '2023-12-06 23:14:57'),
(57, 0, 'ann', 'anna@gmail.com', '$2y$10$LHtPXITwxswdCmk.lPc8a.TVBCXJn6rUtX8/z8c0D6Lvj7CU79.K6', '2023-12-07 01:00:28'),
(58, 1, 'keri', 'lok@gmail.com', '$2y$10$k5tbuOTo/sV744Rxnxhgee.I8h7Z42ftfZ0X8k.qwlFoNILBjrFrG', '2023-12-07 09:15:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

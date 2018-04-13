-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 06:47 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `author`, `price`, `tags`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Java Programming', 'Java is a general-purpose computer-programming language that is concurrent, class-based, object-oriented, and specifically designed to have as few implementation dependencies as possible.', 'Brett Spell', '500.00', 'Programming', 'java.jpg', '2018-04-13 02:18:56', '2018-04-13 07:44:46'),
(3, 'PHP', 'PHP (recursive acronym for PHP: Hypertext Preprocessor) is a widely-used open source general-purpose scripting language that is especially suited for web development and can be embedded into HTML.', 'Gillmore', '500.00', 'Programming', 'php.jpg', '2018-04-13 04:04:58', '2018-04-13 07:44:32'),
(4, 'JAVASCRIPT & JQUERY', 'JavaScript® (often shortened to JS) is a lightweight, interpreted, object-oriented language with first-class functions, and is best known as the scripting language for Web pages, but it\'s used in many non-browser environments as wel', 'Jon Ducket', '500.00', 'Programming', 'javascript.png', '2018-04-13 04:07:10', '2018-04-13 04:07:10'),
(5, 'C#', 'C# (pronounced \"C-sharp\") is an object-oriented programming language from Microsoft that aims to combine the computing power of C++ with the programming ease of Visual Basic. C# is based on C++ and contains features similar to those of Java.', 'Jason Hamilton', '500.00', 'Programming', 'c#.png', '2018-04-13 04:09:06', '2018-04-13 04:09:06'),
(6, 'ASP.NET', 'It was developed by Microsoft to allow programmers to build dynamic web sites, web applications and web services. It was first released in January 2002 with version 1.0 of the .NET Framework, and is the successor to Microsoft\'s Active Server Pages (ASP) technology.', 'Dino Esposito', '500.00', 'Programming', 'asp.jpg', '2018-04-13 04:14:47', '2018-04-13 04:14:47'),
(7, 'Python', 'Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. ... Python\'s simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance', 'Timothy C. Needham', '600.00', 'Programming', 'python.jpg', '2018-04-13 08:00:29', '2018-04-13 08:00:29'),
(8, 'Vue JS', 'Vue.js (commonly referred to as Vue is an open-source JavaScript framework for building user interfaces.', 'Lionel Lopez', '700.00', 'Programming', 'vue.jpg', '2018-04-13 08:02:40', '2018-04-13 08:02:40'),
(9, 'Angular JS', 'AngularJS (commonly referred to as \"Angular.js\" or \"AngularJS 1.X\") is a JavaScript-based open-source front-end web application framework mainly maintained by Google and by a community of individuals and corporations to address many of the challenges encountered in developing single-page applications.', 'Sebastian Eschweiler', '550.00', 'Programming', 'angular.png', '2018-04-13 08:04:32', '2018-04-13 08:04:32'),
(10, 'Harry Potter and Philosoper Stone', 'Throughout the series, Harry is described as having his father\'s perpetually untidy black hair, his mother\'s bright green eyes, and a lightning bolt-shaped scar on his forehead. He is further described as \"small and skinny for his age\" with \"a thin face\" and \"knobbly knees\", and he wears round eyeglasses.', 'J.K Rowling', '400.00', 'Fantasy', 'hp.jpeg', '2018-04-13 08:24:02', '2018-04-13 08:24:02'),
(11, 'Harry Potter and the Prisoner of Azkaban', 'Throughout the series, Harry is described as having his father\'s perpetually untidy black hair, his mother\'s bright green eyes, and a lightning bolt-shaped scar on his forehead. He is further described as \"small and skinny for his age\" with \"a thin face\" and \"knobbly knees\", and he wears round eyeglasses.', 'J.K Rowling', '450.00', 'Fantasy', 'hp4.jpg', '2018-04-13 08:25:30', '2018-04-13 08:25:30'),
(12, 'Harry Potter and the Deathly Hollows', 'Throughout the series, Harry is described as having his father\'s perpetually untidy black hair, his mother\'s bright green eyes, and a lightning bolt-shaped scar on his forehead. He is further described as \"small and skinny for his age\" with \"a thin face\" and \"knobbly knees\", and he wears round eyeglasses.', 'J.K Rowling', '450.00', 'Fantasy', 'hp5.jpeg', '2018-04-13 08:26:59', '2018-04-13 08:26:59'),
(13, 'Harry Potter and the Chamber of Secret', 'Throughout the series, Harry is described as having his father\'s perpetually untidy black hair, his mother\'s bright green eyes, and a lightning bolt-shaped scar on his forehead. He is further described as \"small and skinny for his age\" with \"a thin face\" and \"knobbly knees\", and he wears round eyeglasses.', 'J.K Rowling', '450.00', 'Fantasy', 'hp3.jpeg', '2018-04-13 08:29:28', '2018-04-13 08:29:28'),
(15, 'Harry Potter and the Sorcerer stone', 'Throughout the series, Harry is described as having his father\'s perpetually untidy black hair, his mother\'s bright green eyes, and a lightning bolt-shaped scar on his forehead. He is further described as \"small and skinny for his age\" with \"a thin face\" and \"knobbly knees\", and he wears round eyeglasses.', 'J.K Rowling', '450.00', 'Fantasy', 'hp2.jpg', '2018-04-13 08:46:47', '2018-04-13 08:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_13_090034_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michael Capistrano', 'michaelcapistrano.19@gmail.com', '1CT4dm1n', NULL, '2018-04-12 16:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

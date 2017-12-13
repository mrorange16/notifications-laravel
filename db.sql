-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2017 at 02:29 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(5, 3),
(6, 2),
(7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'redis', 'default', '{\"maxTries\":null,\"attempts\":1,\"timeout\":null,\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"id\":\"uqdwaiBdyqDVUbgldsTQRZi8v9qeu7QM\",\"timeoutAt\":null,\"data\":{\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":7:{s:5:\\\"class\\\";s:31:\\\"App\\\\Listeners\\\\SendAutoResponder\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:29:\\\"App\\\\Events\\\\MessageWasReceived\\\":2:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":3:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:19;s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;}\",\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\"},\"displayName\":\"App\\\\Listeners\\\\SendAutoResponder\"}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Listeners\\SendAutoResponder has been attempted too many times or run too long. The job may have previously timed out. in C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:394\nStack trace:\n#0 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), 1)\n#1 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(270): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#2 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(227): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#3 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->runNextJob(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#5 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#6 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#7 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#9 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#10 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Illuminate\\Container\\Container->call(Array)\n#11 C:\\laragon\\www\\blog\\vendor\\symfony\\console\\Command\\Command.php(240): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#12 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(167): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 C:\\laragon\\www\\blog\\vendor\\symfony\\console\\Application.php(858): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#14 C:\\laragon\\www\\blog\\vendor\\symfony\\console\\Application.php(216): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\laragon\\www\\blog\\vendor\\symfony\\console\\Application.php(122): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(121): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\laragon\\www\\blog\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 {main}', '2017-12-03 11:50:32'),
(2, 'redis', 'default', '{\"maxTries\":null,\"attempts\":1,\"timeout\":null,\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"id\":\"Hc5NqfZCFzpAg0neRnHmbpiHH1WYrYpm\",\"timeoutAt\":null,\"data\":{\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":7:{s:5:\\\"event\\\";O:29:\\\"App\\\\Events\\\\MessageWasReceived\\\":2:{s:7:\\\"message\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":3:{s:5:\\\"class\\\";s:11:\\\"App\\\\Message\\\";s:2:\\\"id\\\";i:26;s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\",\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\"},\"displayName\":\"App\\\\Events\\\\MessageWasReceived\"}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Events\\MessageWasReceived has been attempted too many times or run too long. The job may have previously timed out. in C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:394\nStack trace:\n#0 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(314): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), 1)\n#1 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(270): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#2 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(227): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#3 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Worker->runNextJob(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(85): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#5 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#6 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(29): call_user_func_array(Array, Array)\n#7 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(87): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(31): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#9 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(549): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#10 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Illuminate\\Container\\Container->call(Array)\n#11 C:\\laragon\\www\\blog\\vendor\\symfony\\console\\Command\\Command.php(240): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#12 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(167): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 C:\\laragon\\www\\blog\\vendor\\symfony\\console\\Application.php(858): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#14 C:\\laragon\\www\\blog\\vendor\\symfony\\console\\Application.php(216): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\laragon\\www\\blog\\vendor\\symfony\\console\\Application.php(122): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(88): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\laragon\\www\\blog\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(121): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\laragon\\www\\blog\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 {main}', '2017-12-04 02:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `nombre`, `email`, `mensaje`, `created_at`, `updated_at`, `phone`, `user_id`) VALUES
(1, 'Marcos V', 'marukosu16@gmail.com', 'Hola', NULL, '2017-11-23 06:53:20', NULL, NULL),
(46, 'marcso', 'marukosu16@gmail.com', 'hi', '2017-12-04 10:57:21', '2017-12-04 10:57:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2017_11_22_193911_create_messages_table', 1),
(6, '2017_11_22_194540_add_phone_to_table_messages', 2),
(7, '2017_11_23_225828_add_role_colum_to_users', 3),
(8, '2017_11_24_234327_create_roles_table', 4),
(9, '2017_11_25_003025_create_assigned_roles_table', 5),
(10, '2017_11_26_235949_alter_messages_table', 6),
(12, '2017_11_28_035715_create_notes_table', 7),
(13, '2017_11_28_044311_create_tags_table', 8),
(14, '2017_11_28_045243_create_taggables_table', 9),
(15, '2017_12_03_003252_create_failed_jobs_table', 10),
(16, '2017_12_05_200559_add_avatar_to_users_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notable_id` int(10) UNSIGNED NOT NULL,
  `notable_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `body`, `notable_id`, `notable_type`, `created_at`, `updated_at`) VALUES
(1, 'Nota del mensaje 1', 1, 'App\\Message', '2017-11-28 10:28:30', '2017-11-28 10:28:30'),
(3, 'Notal del super user', 1, 'App\\User', '2017-11-28 10:40:30', '2017-11-28 10:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `key`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrador', NULL, NULL, NULL),
(2, 'moderador', 'Moderador', NULL, NULL, NULL),
(3, 'student', 'Estudiante', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'App\\Message', NULL, NULL),
(2, 2, 1, 'App\\Message', NULL, NULL),
(3, 3, 1, 'App\\User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'importante', '2017-11-28 11:01:27', '2017-11-28 11:01:27'),
(2, 'importante 2', '2017-11-28 11:01:44', '2017-11-28 11:01:44'),
(3, 'no importante', '2017-11-28 11:07:38', '2017-11-28 11:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.gif',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marcos Vi', 'marukosu16@gmail.com', 'public/kxDfAshct0Q0k2lHqqv5QI89uyCKNcADJVQv4a86.jpeg', '$2y$10$j0iA4De2SOv7UMzOMrnJEuGzJ77DcDJCkvmGSSBeT1oX7HBuS11F6', '4bdd2KctdoVIRkLXLfrl4xpe8SPqlRKKf9hP9NDZ7DQ8029sjBv1a1hau59I', '2017-11-23 09:10:24', '2017-12-06 03:30:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_key_unique` (`key`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
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

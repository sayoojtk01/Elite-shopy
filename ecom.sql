-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 07:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `app01_ad_cart`
--

CREATE TABLE `app01_ad_cart` (
  `id` bigint(20) NOT NULL,
  `total` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `num_id` bigint(20) NOT NULL,
  `pid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app01_ad_cart`
--

INSERT INTO `app01_ad_cart` (`id`, `total`, `status`, `num_id`, `pid_id`) VALUES
(1, '350', 'paid', 1, 1),
(2, '699', 'paid', 1, 2),
(3, '350', 'paid', 1, 3),
(4, '750', 'paid', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `app01_ad_product`
--

CREATE TABLE `app01_ad_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `offer` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app01_ad_product`
--

INSERT INTO `app01_ad_product` (`id`, `name`, `price`, `offer`, `image`, `category`) VALUES
(1, 'Yellow top', '499', '350', 'product/portrait-blonde-woman-vintage-yellow-outfit-with-hat-black-background-vertical-p_7oQgyR5.jpg', 'Women\'s Wear'),
(2, 'Red maxi dress', '1200', '699', 'product/young-woman-beautiful-red-dress_W5K2U48.jpg', 'Women\'s Wear'),
(3, 'maxi dress', '550', '350', 'product/beautiful-sexy-model-woman-shiny-lace-evening-dress-posing-sitting-chair-beige-color.jpg', 'Women\'s Wear'),
(4, 'jacket', '1200', '750', 'product/fashion-model-trendy-yellow-trenchcoat-outdoor.jpg', 'Women\'s Wear');

-- --------------------------------------------------------

--
-- Table structure for table `app01_ad_reg`
--

CREATE TABLE `app01_ad_reg` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app01_payment`
--

CREATE TABLE `app01_payment` (
  `id` bigint(20) NOT NULL,
  `date` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `uid_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app01_payment`
--

INSERT INTO `app01_payment` (`id`, `date`, `total`, `status`, `uid_id`) VALUES
(1, '2023-02-08', '1049', 'paid', 1),
(2, '2023-02-08', '1100', 'paid', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app01_u_reg`
--

CREATE TABLE `app01_u_reg` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app01_u_reg`
--

INSERT INTO `app01_u_reg` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'Rafna', 'rafna@abc', '1234', '123456'),
(2, 'abc', 'abc123@def', '0987', '234-44-434'),
(3, 'test', 'scew@d.pl', 'asdf', '78945');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add u_reg', 7, 'add_u_reg'),
(26, 'Can change u_reg', 7, 'change_u_reg'),
(27, 'Can delete u_reg', 7, 'delete_u_reg'),
(28, 'Can view u_reg', 7, 'view_u_reg'),
(29, 'Can add ad_product', 8, 'add_ad_product'),
(30, 'Can change ad_product', 8, 'change_ad_product'),
(31, 'Can delete ad_product', 8, 'delete_ad_product'),
(32, 'Can view ad_product', 8, 'view_ad_product'),
(33, 'Can add ad_reg', 9, 'add_ad_reg'),
(34, 'Can change ad_reg', 9, 'change_ad_reg'),
(35, 'Can delete ad_reg', 9, 'delete_ad_reg'),
(36, 'Can view ad_reg', 9, 'view_ad_reg'),
(37, 'Can add payment', 10, 'add_payment'),
(38, 'Can change payment', 10, 'change_payment'),
(39, 'Can delete payment', 10, 'delete_payment'),
(40, 'Can view payment', 10, 'view_payment'),
(41, 'Can add ad_cart', 11, 'add_ad_cart'),
(42, 'Can change ad_cart', 11, 'change_ad_cart'),
(43, 'Can delete ad_cart', 11, 'delete_ad_cart'),
(44, 'Can view ad_cart', 11, 'view_ad_cart');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(11, 'app01', 'ad_cart'),
(8, 'app01', 'ad_product'),
(9, 'app01', 'ad_reg'),
(10, 'app01', 'payment'),
(7, 'app01', 'u_reg'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-03 04:18:28.905414'),
(2, 'auth', '0001_initial', '2023-02-03 04:18:32.785228'),
(3, 'admin', '0001_initial', '2023-02-03 04:18:34.270907'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-03 04:18:34.317780'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-03 04:18:34.380302'),
(6, 'app01', '0001_initial', '2023-02-03 04:18:34.552258'),
(7, 'app01', '0002_cont_tb', '2023-02-03 04:18:34.802175'),
(8, 'app01', '0003_u_reg_delete_cont_tb_rename_fname_mytab_name_and_more', '2023-02-03 04:18:35.333301'),
(9, 'app01', '0004_delete_mytab', '2023-02-03 04:18:35.420907'),
(10, 'app01', '0005_ad_product', '2023-02-03 04:18:35.561497'),
(11, 'app01', '0006_ad_reg', '2023-02-03 04:18:35.655267'),
(12, 'app01', '0007_cart', '2023-02-03 04:18:36.443767'),
(13, 'app01', '0008_abc', '2023-02-03 04:18:36.929738'),
(14, 'app01', '0009_alter_abc_num', '2023-02-03 04:18:38.383161'),
(15, 'app01', '0010_remove_abc_num', '2023-02-03 04:18:39.880685'),
(16, 'app01', '0011_delete_abc', '2023-02-03 04:18:39.966547'),
(17, 'app01', '0012_xyz', '2023-02-03 04:18:40.910383'),
(18, 'app01', '0013_delete_xyz', '2023-02-03 04:18:41.004112'),
(19, 'app01', '0014_abc', '2023-02-03 04:18:41.850900'),
(20, 'app01', '0015_payment', '2023-02-03 04:18:42.266049'),
(21, 'app01', '0016_rename_abc_ad_cart_delete_cart', '2023-02-03 04:18:42.562828'),
(22, 'contenttypes', '0002_remove_content_type_name', '2023-02-03 04:18:42.922119'),
(23, 'auth', '0002_alter_permission_name_max_length', '2023-02-03 04:18:43.359517'),
(24, 'auth', '0003_alter_user_email_max_length', '2023-02-03 04:18:43.437792'),
(25, 'auth', '0004_alter_user_username_opts', '2023-02-03 04:18:43.515729'),
(26, 'auth', '0005_alter_user_last_login_null', '2023-02-03 04:18:43.953125'),
(27, 'auth', '0006_require_contenttypes_0002', '2023-02-03 04:18:43.984369'),
(28, 'auth', '0007_alter_validators_add_error_messages', '2023-02-03 04:18:44.031241'),
(29, 'auth', '0008_alter_user_username_max_length', '2023-02-03 04:18:44.156241'),
(30, 'auth', '0009_alter_user_last_name_max_length', '2023-02-03 04:18:44.265590'),
(31, 'auth', '0010_alter_group_name_max_length', '2023-02-03 04:18:44.505301'),
(32, 'auth', '0011_update_proxy_permissions', '2023-02-03 04:18:44.521040'),
(33, 'auth', '0012_alter_user_first_name_max_length', '2023-02-03 04:18:44.661559'),
(34, 'sessions', '0001_initial', '2023-02-03 04:18:45.235734'),
(35, 'app01', '0017_rename_num_payment_uid', '2023-02-08 04:39:15.002895');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fs9bldvzy3kewq1w92znyssz7jovqbp0', 'eyJteWlkIjoxLCJteW5hbWUiOiJSYWZuYSJ9:1pPH9z:c7Ysq5Waa88Ex-l68ihzMzUp5Lz4jL_xTErXc12uY3I', '2023-02-21 06:08:55.126529'),
('r6f1jqtctnv1qkarn01r2v7tuax2oxs5', 'eyJteWlkIjoxLCJteW5hbWUiOiJSYWZuYSJ9:1pPFNT:1q6keXItaiaR0jJYVXdqcsnqDC2BoksA8EV1IiiX8QE', '2023-02-21 04:14:43.691110');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app01_ad_cart`
--
ALTER TABLE `app01_ad_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app01_abc_num_id_91fc02dc_fk_app01_u_reg_id` (`num_id`),
  ADD KEY `app01_abc_pid_id_47dabc8f_fk_app01_ad_product_id` (`pid_id`);

--
-- Indexes for table `app01_ad_product`
--
ALTER TABLE `app01_ad_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app01_ad_reg`
--
ALTER TABLE `app01_ad_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app01_payment`
--
ALTER TABLE `app01_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app01_payment_uid_id_79c25dea_fk_app01_u_reg_id` (`uid_id`);

--
-- Indexes for table `app01_u_reg`
--
ALTER TABLE `app01_u_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app01_ad_cart`
--
ALTER TABLE `app01_ad_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app01_ad_product`
--
ALTER TABLE `app01_ad_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app01_ad_reg`
--
ALTER TABLE `app01_ad_reg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app01_payment`
--
ALTER TABLE `app01_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `app01_u_reg`
--
ALTER TABLE `app01_u_reg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app01_ad_cart`
--
ALTER TABLE `app01_ad_cart`
  ADD CONSTRAINT `app01_abc_num_id_91fc02dc_fk_app01_u_reg_id` FOREIGN KEY (`num_id`) REFERENCES `app01_u_reg` (`id`),
  ADD CONSTRAINT `app01_abc_pid_id_47dabc8f_fk_app01_ad_product_id` FOREIGN KEY (`pid_id`) REFERENCES `app01_ad_product` (`id`);

--
-- Constraints for table `app01_payment`
--
ALTER TABLE `app01_payment`
  ADD CONSTRAINT `app01_payment_uid_id_79c25dea_fk_app01_u_reg_id` FOREIGN KEY (`uid_id`) REFERENCES `app01_u_reg` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

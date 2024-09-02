-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2023 at 11:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--
CREATE DATABASE IF NOT EXISTS `college` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `college`;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Roll_no` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Contact` text NOT NULL,
  `Email` text NOT NULL,
  `Feedback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Roll_no`, `Name`, `Department`, `Contact`, `Email`, `Feedback`) VALUES
('BT22ECE111', 'Aryan', 'ECE', '6563323523', 'prateek88786@gmail.com', ''),
('BT22ECE126', 'Rudra', 'CSE', '8865073278', 'prateek88786@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Roll_no`);
--
-- Database: `foody`
--
CREATE DATABASE IF NOT EXISTS `foody` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `foody`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"project\",\"table\":\"12584\"},{\"db\":\"project\",\"table\":\"trains\"},{\"db\":\"project\",\"table\":\"bookings\"},{\"db\":\"project\",\"table\":\"12441\"},{\"db\":\"project\",\"table\":\"82502\"},{\"db\":\"project\",\"table\":\"userdata\"},{\"db\":\"project\",\"table\":\"12004\"},{\"db\":\"project\",\"table\":\"seats\"},{\"db\":\"test\",\"table\":\"test\"},{\"db\":\"college\",\"table\":\"student\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-06-27 09:48:16', '{\"Console\\/Mode\":\"show\",\"lang\":\"en_GB\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `12004`
--

CREATE TABLE `12004` (
  `Date` date NOT NULL,
  `SL` int(11) NOT NULL,
  `3A` int(11) NOT NULL,
  `2A` int(11) NOT NULL,
  `1A` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `12004`
--

INSERT INTO `12004` (`Date`, `SL`, `3A`, `2A`, `1A`) VALUES
('2023-06-04', 100, 100, 100, 100),
('2023-06-05', 100, 100, 100, 100),
('2023-06-06', 100, 100, 100, 100),
('2023-06-07', 100, 100, 100, 100),
('2023-06-08', 100, 100, 100, 100),
('2023-06-09', 100, 100, 100, 100),
('2023-06-10', 100, 100, 100, 100),
('2023-06-11', 100, 100, 100, 100),
('2023-06-12', 100, 100, 100, 100),
('2023-06-13', 100, 100, 100, 100),
('2023-06-14', 100, 100, 100, 100),
('2023-06-15', 100, 100, 100, 100),
('2023-06-16', 100, 100, 100, 100),
('2023-06-17', 100, 100, 100, 100),
('2023-06-18', 100, 100, 100, 100),
('2023-06-19', 100, 100, 100, 100),
('2023-06-20', 100, 100, 100, 100),
('2023-06-21', 100, 100, 100, 100),
('2023-06-22', 100, 100, 100, 100),
('2023-06-23', 100, 100, 100, 100),
('2023-06-24', 100, 100, 100, 100),
('2023-06-25', 100, 100, 100, 100),
('2023-06-26', 100, 100, 100, 100),
('2023-06-27', 100, 100, 100, 100),
('2023-06-28', 100, 100, 100, 100),
('2023-06-29', 100, 100, 100, 100),
('2023-06-30', 100, 100, 100, 100),
('2023-07-01', 100, 100, 100, 100),
('2023-07-02', 100, 100, 100, 100),
('2023-07-03', 100, 100, 100, 100),
('2023-07-04', 100, 100, 100, 100),
('2023-07-05', 100, 100, 100, 100),
('2023-07-06', 100, 100, 100, 100),
('2023-07-07', 100, 100, 100, 100),
('2023-07-08', 100, 100, 100, 100),
('2023-07-09', 100, 100, 100, 100),
('2023-07-10', 100, 100, 100, 100),
('2023-07-11', 100, 100, 100, 100),
('2023-07-12', 100, 100, 100, 100),
('2023-07-13', 100, 100, 100, 100),
('2023-07-14', 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `12441`
--

CREATE TABLE `12441` (
  `Date` date NOT NULL,
  `SL` int(11) NOT NULL,
  `3A` int(11) NOT NULL,
  `2A` int(11) NOT NULL,
  `1A` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `12441`
--

INSERT INTO `12441` (`Date`, `SL`, `3A`, `2A`, `1A`) VALUES
('2023-06-04', 100, 100, 100, 100),
('2023-06-05', 100, 100, 100, 100),
('2023-06-06', 100, 100, 100, 100),
('2023-06-07', 100, 100, 100, 100),
('2023-06-08', 100, 100, 100, 100),
('2023-06-09', 100, 100, 100, 100),
('2023-06-10', 100, 100, 100, 100),
('2023-06-11', 100, 100, 100, 100),
('2023-06-12', 100, 100, 100, 100),
('2023-06-13', 100, 100, 100, 100),
('2023-06-14', 100, 100, 100, 100),
('2023-06-15', 100, 100, 100, 100),
('2023-06-16', 100, 100, 100, 100),
('2023-06-17', 100, 100, 100, 100),
('2023-06-18', 100, 100, 100, 100),
('2023-06-19', 100, 100, 100, 100),
('2023-06-20', 100, 100, 100, 100),
('2023-06-21', 100, 100, 100, 100),
('2023-06-22', 100, 100, 100, 100),
('2023-06-23', 100, 100, 100, 100),
('2023-06-24', 100, 100, 100, 100),
('2023-06-25', 100, 100, 100, 100),
('2023-06-26', 100, 99, 100, 99),
('2023-06-27', 100, 100, 100, 100),
('2023-06-28', 100, 100, 100, 100),
('2023-06-29', 100, 100, 100, 100),
('2023-06-30', 100, 100, 100, 100),
('2023-07-01', 100, 100, 100, 100),
('2023-07-02', 100, 100, 100, 100),
('2023-07-03', 100, 100, 100, 100),
('2023-07-04', 100, 100, 100, 100),
('2023-07-05', 100, 100, 100, 100),
('2023-07-06', 100, 100, 100, 100),
('2023-07-07', 100, 100, 100, 100),
('2023-07-08', 100, 100, 100, 100),
('2023-07-09', 100, 100, 100, 100),
('2023-07-10', 100, 100, 100, 100),
('2023-07-11', 100, 100, 100, 100),
('2023-07-12', 100, 100, 100, 100),
('2023-07-13', 100, 100, 100, 100),
('2023-07-14', 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `12584`
--

CREATE TABLE `12584` (
  `Date` date NOT NULL,
  `SL` int(11) NOT NULL,
  `3A` int(11) NOT NULL,
  `2A` int(11) NOT NULL,
  `1A` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `12584`
--

INSERT INTO `12584` (`Date`, `SL`, `3A`, `2A`, `1A`) VALUES
('2023-06-04', 100, 100, 100, 100),
('2023-06-05', 100, 100, 100, 100),
('2023-06-06', 100, 100, 100, 100),
('2023-06-07', 100, 100, 100, 100),
('2023-06-08', 100, 100, 100, 100),
('2023-06-09', 100, 100, 100, 100),
('2023-06-10', 100, 100, 100, 100),
('2023-06-11', 100, 100, 100, 100),
('2023-06-12', 100, 100, 100, 100),
('2023-06-13', 100, 100, 100, 100),
('2023-06-14', 100, 100, 100, 100),
('2023-06-15', 100, 100, 100, 100),
('2023-06-16', 100, 100, 100, 100),
('2023-06-17', 100, 100, 100, 100),
('2023-06-18', 100, 100, 100, 100),
('2023-06-19', 100, 100, 100, 100),
('2023-06-20', 100, 100, 100, 100),
('2023-06-21', 100, 100, 100, 100),
('2023-06-22', 100, 100, 100, 100),
('2023-06-23', 100, 100, 100, 100),
('2023-06-24', 100, 100, 100, 100),
('2023-06-25', 100, 100, 100, 100),
('2023-06-26', 100, 100, 100, 100),
('2023-06-27', 100, 100, 100, 100),
('2023-06-28', 100, 100, 100, 100),
('2023-06-29', 100, 100, 100, 100),
('2023-06-30', 100, 100, 100, 100),
('2023-07-01', 100, 100, 100, 100),
('2023-07-02', 100, 100, 100, 100),
('2023-07-03', 100, 100, 100, 100),
('2023-07-04', 100, 100, 100, 100),
('2023-07-05', 100, 100, 100, 100),
('2023-07-06', 100, 100, 100, 100),
('2023-07-07', 100, 100, 100, 100),
('2023-07-08', 100, 100, 100, 100),
('2023-07-09', 100, 100, 100, 100),
('2023-07-10', 100, 100, 100, 100),
('2023-07-11', 100, 100, 100, 100),
('2023-07-12', 100, 100, 100, 100),
('2023-07-13', 100, 100, 100, 100),
('2023-07-14', 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `82502`
--

CREATE TABLE `82502` (
  `Date` date NOT NULL,
  `SL` int(11) NOT NULL,
  `3A` int(11) NOT NULL,
  `2A` int(11) NOT NULL,
  `1A` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `82502`
--

INSERT INTO `82502` (`Date`, `SL`, `3A`, `2A`, `1A`) VALUES
('2023-06-04', 100, 100, 100, 100),
('2023-06-05', 100, 100, 100, 100),
('2023-06-06', 100, 100, 100, 100),
('2023-06-07', 100, 100, 100, 100),
('2023-06-08', 100, 100, 100, 100),
('2023-06-09', 100, 100, 100, 100),
('2023-06-10', 100, 100, 100, 100),
('2023-06-11', 100, 100, 100, 100),
('2023-06-12', 100, 100, 100, 100),
('2023-06-13', 100, 100, 100, 100),
('2023-06-14', 100, 100, 100, 100),
('2023-06-15', 100, 100, 100, 100),
('2023-06-16', 100, 100, 100, 100),
('2023-06-17', 100, 100, 100, 100),
('2023-06-18', 100, 100, 100, 100),
('2023-06-19', 100, 100, 100, 100),
('2023-06-20', 100, 100, 100, 100),
('2023-06-21', 100, 100, 100, 100),
('2023-06-22', 100, 100, 100, 100),
('2023-06-23', 100, 100, 100, 100),
('2023-06-24', 100, 100, 100, 100),
('2023-06-25', 100, 100, 100, 100),
('2023-06-26', 100, 100, 100, 100),
('2023-06-27', 100, 100, 100, 100),
('2023-06-28', 100, 100, 100, 100),
('2023-06-29', 100, 100, 100, 100),
('2023-06-30', 100, 100, 100, 100),
('2023-07-01', 100, 100, 100, 100),
('2023-07-02', 100, 100, 100, 100),
('2023-07-03', 100, 100, 100, 100),
('2023-07-04', 100, 100, 100, 100),
('2023-07-05', 100, 100, 100, 100),
('2023-07-06', 100, 100, 100, 100),
('2023-07-07', 100, 100, 100, 100),
('2023-07-08', 100, 100, 100, 100),
('2023-07-09', 100, 100, 100, 100),
('2023-07-10', 100, 100, 100, 100),
('2023-07-11', 100, 100, 100, 100),
('2023-07-12', 100, 100, 100, 100),
('2023-07-13', 100, 100, 100, 100),
('2023-07-14', 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `Ref no` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Train no` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Passenger name` text NOT NULL,
  `Passenger age` int(11) NOT NULL,
  `class` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`Ref no`, `Username`, `Train no`, `Date`, `Passenger name`, `Passenger age`, `class`) VALUES
(7, 'prateekvashishth2@gmail.com', 12441, '2023-06-26', 'Prateek', 20, '1A'),
(11, 'prateekvashishth2@gmail.com', 12441, '2023-06-26', 'Prateek', 20, '3A');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `Train no` int(11) NOT NULL,
  `Train name` text NOT NULL,
  `Monday` int(11) NOT NULL,
  `Tuesday` int(11) NOT NULL,
  `Wednesday` int(11) NOT NULL,
  `Thursday` int(11) NOT NULL,
  `Friday` int(11) NOT NULL,
  `Saturday` int(11) NOT NULL,
  `Sunday` int(11) NOT NULL,
  `Stop1` varchar(255) NOT NULL,
  `Arrival1` time NOT NULL,
  `Departure1` time NOT NULL,
  `Distance1` int(11) NOT NULL DEFAULT 0,
  `Stop2` varchar(255) NOT NULL,
  `Arrival2` time NOT NULL,
  `Departure2` time NOT NULL,
  `Distance2` int(11) NOT NULL,
  `Stop3` varchar(255) DEFAULT NULL,
  `Arrival3` time DEFAULT NULL,
  `Departure3` time DEFAULT NULL,
  `Distance3` int(11) DEFAULT NULL,
  `Stop4` varchar(255) DEFAULT NULL,
  `Arrival4` time DEFAULT NULL,
  `Departure4` time DEFAULT NULL,
  `Distance4` int(11) DEFAULT NULL,
  `Stop5` varchar(255) DEFAULT NULL,
  `Arrival5` time DEFAULT NULL,
  `Departure5` time DEFAULT NULL,
  `Distance5` int(11) DEFAULT NULL,
  `Stop6` varchar(255) DEFAULT NULL,
  `Arrival6` time DEFAULT NULL,
  `Departure6` time DEFAULT NULL,
  `Distance6` int(11) DEFAULT NULL,
  `Stop7` varchar(255) DEFAULT NULL,
  `Arrival7` time DEFAULT NULL,
  `Departure7` time DEFAULT NULL,
  `Distance7` int(11) DEFAULT NULL,
  `Stop8` varchar(255) DEFAULT NULL,
  `Arrival8` time DEFAULT NULL,
  `Departure8` time DEFAULT NULL,
  `Distance8` int(11) DEFAULT NULL,
  `Stop9` varchar(255) DEFAULT NULL,
  `Arrival9` time DEFAULT NULL,
  `Departure9` time DEFAULT NULL,
  `Distance9` int(11) DEFAULT NULL,
  `Stop10` varchar(255) DEFAULT NULL,
  `Arrival10` time DEFAULT NULL,
  `Departure10` time DEFAULT NULL,
  `Distance10` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`Train no`, `Train name`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`, `Stop1`, `Arrival1`, `Departure1`, `Distance1`, `Stop2`, `Arrival2`, `Departure2`, `Distance2`, `Stop3`, `Arrival3`, `Departure3`, `Distance3`, `Stop4`, `Arrival4`, `Departure4`, `Distance4`, `Stop5`, `Arrival5`, `Departure5`, `Distance5`, `Stop6`, `Arrival6`, `Departure6`, `Distance6`, `Stop7`, `Arrival7`, `Departure7`, `Distance7`, `Stop8`, `Arrival8`, `Departure8`, `Distance8`, `Stop9`, `Arrival9`, `Departure9`, `Distance9`, `Stop10`, `Arrival10`, `Departure10`, `Distance10`) VALUES
(12004, 'New Delhi-Lucknow Jn.Swarn Shatabdi Express', 1, 1, 1, 1, 1, 1, 1, 'Delhi', '06:10:00', '06:10:00', 0, 'Ghaziabad', '06:40:00', '06:42:00', 24, 'Aligarh', '07:47:00', '07:49:00', 130, 'Tundla', '08:45:00', '08:47:00', 209, 'Etawah', '09:40:00', '09:42:00', 300, 'Kanpur', '11:20:00', '11:25:00', 440, 'Lucknow', '12:50:00', '12:50:00', 512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12441, 'Bilaspur-New Delhi Rajdhani Express', 1, 0, 0, 1, 0, 0, 0, 'Bilaspur', '14:00:00', '14:00:00', 0, 'Raipur', '15:30:00', '15:35:00', 110, 'Durg', '16:25:00', '16:30:00', 147, 'Raj Nandgaon', '16:49:00', '16:51:00', 178, 'Gondia', '18:21:00', '18:23:00', 282, 'Nagpur', '20:25:00', '20:35:00', 412, 'Bhopal', '02:05:00', '02:15:00', 802, 'Jhansi', '05:20:00', '05:25:00', 1094, 'Gwalior', '06:23:00', '06:25:00', 1192, 'Delhi', '10:40:00', '10:40:00', 1505),
(12584, 'Anand Vihar Terminus-Lucknow Jn Double Decker', 0, 1, 0, 1, 1, 0, 1, 'Delhi', '14:05:00', '14:05:00', 0, 'Ghaziabad', '14:33:00', '14:35:00', 12, 'Moradabad', '16:50:00', '16:58:00', 153, 'Bareilly', '18:15:00', '18:17:00', 243, 'Lucknow', '22:30:00', '22:30:00', 478, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82502, 'IRCTC Tejas Express', 1, 0, 1, 1, 1, 1, 1, 'Delhi', '15:40:00', '15:40:00', 0, 'Ghaziabad', '16:11:00', '16:13:00', 24, 'Kanpur', '20:35:00', '20:40:00', 440, 'Lucknow', '22:05:00', '22:05:00', 512, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`username`, `password`) VALUES
('prateekvashishth2@gmail.com', 'pravashish'),
('meethalalu@gmail.com', 'meetha'),
('bt22ece126@iiitn.ac.in', 'asdfg'),
('prateekvashishth2@gmail.com', '8913114');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`Ref no`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`Train no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `Ref no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `Roll no` varchar(255) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`Roll no`, `Name`, `Age`, `Gender`, `Email`) VALUES
('BT22ECE121', 'Kamal Chandra', 19, 'Nahi bataunga', 'TMkadeewana@gmail.com'),
('jngjnfj', 'bvjjb', 100, 'mnjfg', 'bhhvhh'),
('ghghgf', 'gfhghdfd', -20, 'hfdhhg', 'hfhfhj'),
('BT22ECE1000', 'Kamal ka Beta/beti', -10, '1/0', 'LalitKamalChandra@gmail.com/AarohiTM@gmail.com');
--
-- Database: `us trip`
--
CREATE DATABASE IF NOT EXISTS `us trip` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `us trip`;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `Sno` int(4) NOT NULL,
  `Name` text NOT NULL,
  `Age` int(8) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Email` varchar(22) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Other` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`Sno`, `Name`, `Age`, `Gender`, `Email`, `Phone`, `Other`, `Date`) VALUES
(1, 'Prateek Vashishth', 20, 'Male', 'Prateek88786@gmail.com', '8865073278', 'Nothing', '2023-05-08 21:29:13'),
(2, 'abc', 19, 'Male', 'abc@gmail.com', '6563323523', 'nope', '2023-05-08 22:05:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `Sno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

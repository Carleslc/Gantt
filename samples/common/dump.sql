SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `gantt_links`;
CREATE TABLE `gantt_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

INSERT INTO `gantt_links` VALUES ('1', '1', '2', '0');
INSERT INTO `gantt_links` VALUES ('2', '1', '3', '0');
INSERT INTO `gantt_links` VALUES ('3', '1', '4', '0');
INSERT INTO `gantt_links` VALUES ('4', '2', '6', '0');

DROP TABLE IF EXISTS `gantt_tasks`;
CREATE TABLE `gantt_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `progress` float NOT NULL,
  `sortorder` double NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL,
  `deadline` datetime NULL DEFAULT NULL,
  `planned_start` datetime NULL DEFAULT NULL,
  `planned_end` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(1, 'Project #1', '2013-04-01 00:00:00', 5, 0.8, 20, 0, '2013-04-09 00:00:00', '2013-04-01 00:00:00', '2013-04-07 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(2, 'Task #1', '2013-04-06 00:00:00', 4, 0.5, 10, 1, '2013-04-11 00:00:00', '2013-04-06 00:00:00', '2013-04-10 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(3, 'Task #2', '2013-04-05 00:00:00', 6, 0.7, 20, 1, '2013-04-10 00:00:00', '2013-04-05 00:00:00', '2013-04-14 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(4, 'Task #3', '2013-04-07 00:00:00', 2, 0, 30, 1, '2013-04-17 00:00:00', '2013-04-03 00:00:00', '2013-04-05 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(5, 'Task #1.1', '2013-04-05 00:00:00', 5, 0.34, 10, 2, '2013-04-10 00:00:00', '2013-04-03 00:00:00', '2013-04-08 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(6, 'Task #1.2', '2013-04-11 00:00:00', 4, 0.491477, 20, 2, '2013-04-15 00:00:00', '2013-04-11 00:00:00', '2013-04-16 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(7, 'Task #2.1', '2013-04-07 00:00:00', 5, 0.2, 10, 3, '2013-04-11 00:00:00', '2013-04-07 00:00:00', '2013-04-12 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(8, 'Task #2.2', '2013-04-06 00:00:00', 4, 0.9, 20, 3, '2013-04-16 00:00:00', '2013-04-06 00:00:00', '2013-04-10 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(9, 'Task #3.1', '2013-04-06 00:00:00', 5, 1, 10, 4, '2013-04-16 00:00:00', '2013-04-06 00:00:00', '2013-04-11 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(10, 'Task #3.2', '2013-04-06 00:00:00', 3, 0, 20, 4, '2013-04-11 00:00:00', '2013-04-05 00:00:00', '2013-04-08 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(11, 'Task #3.3', '2013-04-06 00:00:00', 4, 0.33, 30, 4, '2013-04-10 00:00:00', '2013-04-07 00:00:00', '2013-04-11 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(12, 'Project #2', '2013-04-02 00:00:00', 18, 0, 10, 0, '2013-04-04 00:00:00', '2013-04-02 00:00:00', '2013-04-20 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(13, 'Task #1', '2013-04-02 00:00:00', 10, 0.2, 15, 12, '2013-04-09 00:00:00', '2013-04-02 00:00:00', '2013-04-12 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(14, 'Task #2', '2013-04-04 00:00:00', 4, 0.9, 20, 12, '2013-04-09 00:00:00', '2013-04-04 00:00:00', '2013-04-08 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(15, 'Task #3', '2013-04-05 00:00:00', 3, 0.6, 30, 12, '2013-04-09 00:00:00', '2013-04-05 00:00:00', '2013-04-08 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(16, 'Task #4', '2013-04-01 00:00:00', 3, 0.214286, 40, 12, '2013-04-05 00:00:00', '2013-04-01 00:00:00', '2013-04-04 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(17, 'Task #5', '2013-04-06 00:00:00', 6, 0.5, 50, 12, '2013-04-12 00:00:00', '2013-04-06 00:00:00', '2013-04-12 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(18, 'Task #2.1', '2013-04-05 00:00:00', 5, 0.3, 39.999999994179234, 14, '2013-04-09 00:00:00', '2013-04-07 00:00:00', '2013-04-12 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(19, 'Task #2.2', '2013-04-05 00:00:00', 6, 0.6, 29.999999995343387, 14, '2013-04-09 00:00:00', '2013-04-08 00:00:00', '2013-04-14 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(20, 'Task #2.3', '2013-04-05 00:00:00', 4, 0.512605, 39.99999999534339, 14, '2013-04-08 00:00:00', '2013-04-03 00:00:00', '2013-04-07 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(21, 'Task #2.4', '2013-04-05 00:00:00', 6, 0.7, 39.99999999301508, 14, '2013-04-14 00:00:00', '2013-04-07 00:00:00', '2013-04-13 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(22, 'Task #4.1', '2013-04-05 00:00:00', 7, 1, 10, 16, '2013-04-15 00:00:00', '2013-04-05 00:00:00', '2013-04-12 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(23, 'Task #4.2', '2013-04-05 00:00:00', 5, 1, 20, 16, '2013-04-11 00:00:00', '2013-04-05 00:00:00', '2013-04-10 00:00:00');
INSERT INTO `gantt_tasks` (`id`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `parent`, `deadline`, `planned_start`, `planned_end`) VALUES(24, 'Task #4.3', '2013-04-05 00:00:00', 5, 0, 30, 16, '2013-04-12 00:00:00', '2013-04-05 00:00:00', '2013-04-10 00:00:00');

DROP TABLE IF EXISTS `gantt_tasks_enddate`;
CREATE TABLE `gantt_tasks_enddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `progress` float NOT NULL,
  `sortorder` double NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

INSERT INTO `gantt_tasks_enddate` (`id`, `text`, `start_date`, `end_date`, `progress`, `sortorder`, `parent`) VALUES(1, 'Project #1', '2013-04-01 00:00:00', '2013-04-06 00:00:00', 0.8, 20, 0);
INSERT INTO `gantt_tasks_enddate` (`id`, `text`, `start_date`, `end_date`, `progress`, `sortorder`, `parent`) VALUES(2, 'Task #1', '2013-04-06 00:00:00', '2013-04-10 00:00:00', 0.5, 10, 1);
INSERT INTO `gantt_tasks_enddate` (`id`, `text`, `start_date`, `end_date`, `progress`, `sortorder`, `parent`) VALUES(3, 'Task #2', '2013-04-05 00:00:00', '2013-04-11 00:00:00', 0.7, 20, 1);
INSERT INTO `gantt_tasks_enddate` (`id`, `text`, `start_date`, `end_date`, `progress`, `sortorder`, `parent`) VALUES(4, 'Task #3', '2013-04-07 00:00:00', '2013-04-09 00:00:00', 0, 30, 1);


DROP TABLE IF EXISTS `gantt_links_enddate`;
CREATE TABLE `gantt_links_enddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

INSERT INTO `gantt_links_enddate` VALUES ('1', '2', '3', '0');
INSERT INTO `gantt_links_enddate` VALUES ('2', '3', '4', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

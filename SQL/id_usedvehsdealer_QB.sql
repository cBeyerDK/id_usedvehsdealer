DROP TABLE IF EXISTS `id_usedcarsdealer`;
CREATE TABLE IF NOT EXISTS `id_usedcarsdealer` (
  `plate` varchar(12) NOT NULL,
  `seller` varchar(50) NOT NULL,
  `vehProps` longtext NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `id_usedcarsdealer_accounts`;
CREATE TABLE IF NOT EXISTS `id_usedcarsdealer_accounts` (
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `management_funds` (`job_name`, `amount`, `type`) VALUES
    ('brugtvogn', 0, 'boss')
;
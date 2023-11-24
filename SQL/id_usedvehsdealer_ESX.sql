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

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
    ('society_brugtvogn', 'Brugtvogn', 1)
;

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
    ('society_brugtvogn', 'Brugtvogn', 1)
;

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
    ('society_brugtvogn', 'Brugtvogn', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
    ('brugtvogn', 'Brugtvogn', 1)
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
    ('brugtvogn', 0, 'trainee', 'Elev', 350, '{}', '{}'),
    ('brugtvogn', 1, 'employee', 'Ansat', 500, '{}', '{}'),
    ('brugtvogn', 2, 'boss', 'Chef', 1000, '{}', '{}')
;
CREATE DATABASE `timetable` CHARACTER SET 'utf8';

use timetable;

CREATE TABLE `plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(5) NOT NULL,
  `time` varchar(5) NOT NULL,
  `thing` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

insert into plan (date, time) values ("1", "1");
insert into plan (date, time) values ("1", "2");
insert into plan (date, time) values ("1", "3");
insert into plan (date, time) values ("1", "4");
insert into plan (date, time) values ("2", "1");
insert into plan (date, time) values ("2", "2");
insert into plan (date, time) values ("2", "3");
insert into plan (date, time) values ("2", "4");
insert into plan (date, time) values ("3", "1");
insert into plan (date, time) values ("3", "2");
insert into plan (date, time) values ("3", "3");
insert into plan (date, time) values ("3", "4");
insert into plan (date, time) values ("4", "1");
insert into plan (date, time) values ("4", "2");
insert into plan (date, time) values ("4", "3");
insert into plan (date, time) values ("4", "4");
insert into plan (date, time) values ("5", "1");
insert into plan (date, time) values ("5", "2");
insert into plan (date, time) values ("5", "3");
insert into plan (date, time) values ("5", "4");
insert into plan (date, time) values ("6", "1");
insert into plan (date, time) values ("6", "2");
insert into plan (date, time) values ("6", "3");
insert into plan (date, time) values ("6", "4");
insert into plan (date, time) values ("7", "1");
insert into plan (date, time) values ("7", "2");
insert into plan (date, time) values ("7", "3");
insert into plan (date, time) values ("7", "4");
DROP TABLE IF EXISTS members;

CREATE TABLE `members` (
  `member_name` varchar(255) DEFAULT NULL,
  `member_since` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOAD DATA LOCAL INFILE '<%= @members_csv_file_path %>'
INTO TABLE members
FIELDS
  TERMINATED BY ','
  ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n' -- windows-style line breaks
LINES TERMINATED BY '\n' -- mac-style line breaks
IGNORE 1 LINES
;

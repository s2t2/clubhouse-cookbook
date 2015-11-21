
#
# INITIAL STATE MYSQL LAYER ...
#

=begin
[ec2-user@artemis ~]$ mysql -uroot -p
mysql> select user, password, host from mysql.user;
+------+-------------------------------------------+-----------+
| user | password                                  | host      |
+------+-------------------------------------------+-----------+
| root | *535E05BD718A46AD43D5C528032301768D9B6A64 | localhost |
| root |                                           | artemis   |
| root |                                           | 127.0.0.1 |
| root |                                           | ::1       |
|      |                                           | localhost |
|      |                                           | artemis   |
+------+-------------------------------------------+-----------+
6 rows in set (0.00 sec)
=end

#
# AFTER LOCK-DOWN ...
#

=begin
[ec2-user@artemis ~]$ mysql -uroot -p
mysql> select user, password, host from mysql.user;
+------+-------------------------------------------+-----------+
| user | password                                  | host      |
+------+-------------------------------------------+-----------+
| root | *535E05BD718A46AD43D5C528032301768D9B6A64 | localhost |
+------+-------------------------------------------+-----------+
6 rows in set (0.00 sec)
=end

#
# AFTER STUDENT USER CREATION ...
#

=begin
[ec2-user@artemis ~]$ mysql -uroot -p
mysql> select user, password, host from mysql.user;
+------+-------------------------------------------+-----------+
| user | password                                  | host      |
+------+-------------------------------------------+-----------+
| root | *535E05BD718A46AD43D5C528032301768D9B6A64 | localhost |
| rossetti | *YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY | localhost |
| sammy_student | *YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY | localhost |
+------+-------------------------------------------+-----------+
6 rows in set (0.00 sec)
=end

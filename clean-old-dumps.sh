#!/bin/bash

mysql -u root -pBLAZE flare -e > /home/blaze/vclean.out 'delete from dump_info where time < date_sub(now(), interval 1 day); delete from dumps where time < date_sub(now(), interval 1 day); delete from dns_dump where timestamp < date_sub(now(), interval 1 day); commit;'

date >> /home/blaze/vclean.out

mysql -u root -pBLAZE flare -e >> /home/blaze/vclean.out 'select count(*) from dumps; select count(*) from dump_info; select count(*) from dns_dump; commit;'

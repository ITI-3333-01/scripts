#!/bin/bash

mysql -u root -pBLAZE flare -e 'delete from dump_info where time < date_sub(curdate(), interval 1 hour); delete from dumps where time < date_sub(curdate(), interval 1 hour); delete from dns_dump where timestamp < date_sub(curdate(), interval 1 hour); commit;'

#!/bin/bash

mysql -u root -pBLAZE flare -e 'delete from dump_info where time < date_sub(now(), interval 1 day); delete from dumps where time < date_sub(now(), interval 1 day); delete from dns_dump where timestamp < date_sub(now(), interval 1 day); commit;'

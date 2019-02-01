#!/bin/bash

mysql -u root -pBLAZE flare -e 'delete from dumps where time < date_sub(curdate(), interval 7 day); delete from dump_info where time < date_sub(curdate(), interval 7 day); commit;'

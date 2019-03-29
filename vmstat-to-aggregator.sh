#!/bin/bash

HOST='172.16.9.100'
USERNM='blaze'
PASSWD='BLAZE'
FILE='vmstat.out'

vmstat 300 11 -S m -t > $FILE
ftp -n $HOST <<END_SCRIPT
quote USER $USERNM
quote PASS $PASSWD
put $FILE
quit
END_SCRIPT
exit 0

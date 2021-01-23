#!/bin/sh
DIR="/lego/certificates/"
FILE="_.$DOMAINS2.crt"
DFILE=$DIR$FILE
EXP=$EXPIRE
BFD=$BFDAY
LOGFILE="/tmp/shellscript.log"
#
function lego_renew () {
    lego --path /lego --email $EMAIL --dns $DNS --domains $DOMAINS1 --domains $DOMAINS2 --accept-tos renew
    nginx -s reload
}
function lego_new () {
    lego --path /lego --email $EMAIL --dns $DNS --domains $DOMAINS1 --domains $DOMAINS2 --accept-tos run
    nginx -s reload
}
#
if [ -e $DFILE ]; then
    # if file exits, proceed to renew or do nothing.
    FDATE=`date -r $DFILE "+%s"`
    TDATE=`date "+%s"`
    DDATE=`expr \( $TDATE - $FDATE \) / 60 / 60 / 24`
    DDATE=`expr $EXP - $DDATE` 
    echo $DDATE

    if [ ${DDATE} -le 0 ]; then
        lego_new
        echo `date` 'Certificate was expired. A new certificate was taken!' >> $LOGFILE 2>&1
    elif [ ${DDATE} -lt ${BFD} ]; then
        lego_renew
        echo `date` 'Certificate was renewed.'  >> $LOGFILE 2>&1
    else
        echo `date` 'Certificate expiry day is far enough!'  >> $LOGFILE 2>&1
    fi
    else
        lego_new
        echo `date` 'No certificates. A new certificate was taken!' >> $LOGFILE 2>&1
fi


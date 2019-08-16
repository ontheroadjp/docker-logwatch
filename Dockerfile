FROM alpine:3.4

RUN echo "http://ftp.yzu.edu.tw/Linux/alpine/edge/testing" >> /etc/apk/repositories \
    && apk --update add logwatch \
    && mkdir /etc/logwatch/scripts/services \
    && cp /usr/share/logwatch/scripts/services/sendmail-largeboxes /etc/logwatch/scripts/services/sendmail-largeboxes \
    && cp /usr/share/logwatch/default.conf/services/zz-disk_space.conf /etc/logwatch/conf/services/zz-disk_space.conf \
    && echo '$df_options = "-h"' >> /etc/logwatch/conf/services/zz-disk_space.conf \
    && echo '* * * * * logwatch --output stdout' > /var/spool/cron/crontabs/root

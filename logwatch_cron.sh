#! /bin/sh

docker run \
    --rm \
    --hostname=$(hostname) \
    -v $(pwd)/conf/logwatch.conf:/etc/logwatch/conf/logwatch.conf:ro \
    -v /var/log:/var/log:ro \
    -v /etc/localtime:/etc/localtime:ro \
    lw crond -l 2 -f

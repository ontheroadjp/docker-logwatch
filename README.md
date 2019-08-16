# Docker Logwatch

This is a Docker container running Logwatch

Getting Start
1. Clone repository.

```bash
$ git clone https://github.com/ontheroadjp/docker-logwatch
```

2. Build Container

```bash
$ docker build -t logwatch .
```

3. Run script

```bash
$ sh logwatch.sh

or

# for crontab. this mean logwatch output log report every minute.
$ sh logwatch_cron.sh
```

4. That's it !


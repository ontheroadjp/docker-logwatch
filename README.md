# Docker Logwatch

This is a Docker container running Logwatch

Getting Start
1. Clone repository.
2. Build Container
```bash
$ docker build -t lw .
```

3. Run script

```bash
$ sh logwatch.sh

or

# for crontab. this mean logwatch output log report once at a minuts.
$ sh logwatch_cron.sh
```

4. That's it !


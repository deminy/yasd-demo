This repository is to test the Swoole debugger [yasd](https://github.com/swoole/yasd).

# Commands for Local Development

```bash
# To start the container
docker-compose up

# (Optional) To build the Docker image.
docker build -t deminy/yasd-demo .
```

```bash
docker exec -ti $(docker ps -qf "name=app") env | grep PHP_IDE_CONFIG
docker exec -ti $(docker ps -qf "name=app") php --ri yasd
docker exec -ti $(docker ps -qf "name=app") cat /usr/local/etc/php/conf.d/docker-php-ext-yasd.ini

docker exec -ti $(docker ps -qf "name=app") sh # To get access to a shell
```

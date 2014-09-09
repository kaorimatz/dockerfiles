# Nginx

## Build

    docker build -t nginx .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 --name=nginx nginx

## Text

    curl localhost

# Apache HTTP Server

## Build

    docker build -t httpd .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 --name=httpd httpd

## Test

    curl localhost

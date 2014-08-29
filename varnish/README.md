# Varnish

## Build

    docker build -t varnish .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 6081:6081 --name=varnish varnish

## Test

    curl localhost:6081

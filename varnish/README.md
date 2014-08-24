# Varnish

## Build

    docker build -t varnish .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 6081 --name=varnish varnish

## Test

    port=$(docker inspect -f '{{(index (index .NetworkSettings.Ports "6081/tcp") 0).HostPort}}' varnish)
    curl localhost:$port

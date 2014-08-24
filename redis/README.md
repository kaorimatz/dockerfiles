# Redis

## Build

    docker build -t redis .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 6379 --name=redis redis

## Test

    port=$(docker inspect -f '{{(index (index .NetworkSettings.Ports "6379/tcp") 0).HostPort}}' redis)
    echo INFO | nc localhost $port

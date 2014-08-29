# Redis

## Build

    docker build -t redis .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 6379:6379 --name=redis redis

## Test

    echo INFO | nc localhost 6379

# Memcached

## Build

    docker build -t memcached .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 11211:11211 --name=memcached memcached

## Test

    echo version | nc localhost 11211

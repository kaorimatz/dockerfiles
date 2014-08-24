# Memcached

## Build

    docker build -t memcached .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 11211 --name=memcached memcached

## Test

    port=$(docker inspect -f '{{(index (index .NetworkSettings.Ports "11211/tcp") 0).HostPort}}' memcached)
    echo version | nc localhost $port

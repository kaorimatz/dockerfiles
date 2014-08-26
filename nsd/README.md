# Bind

## Build

    docker build -t nsd .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 53/udp --name=nsd nsd

## Test

    port=$(docker inspect -f '{{(index (index .NetworkSettings.Ports "53/udp") 0).HostPort}}' nsd)
    dig @localhost -p $port localhost

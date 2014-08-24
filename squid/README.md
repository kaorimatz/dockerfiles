# Squid

## Build

    docker build -t squid .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 3128 --name=squid squid

## Test

    port=$(docker inspect -f '{{(index (index .NetworkSettings.Ports "3128/tcp") 0).HostPort}}' squid)
    curl -x localhost:$port google.com

# Apache Traffic Server

## Build

    docker build -t trafficserver .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 8080 --name=trafficserver trafficserver

## Test

    port=$(docker inspect -f '{{(index (index .NetworkSettings.Ports "8080/tcp") 0).HostPort}}' trafficserver)
    curl localhost:$port

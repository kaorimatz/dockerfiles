# Apache Traffic Server

## Build

    docker build -t trafficserver .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 8080:8080 --name=trafficserver trafficserver

## Test

    curl localhost:8080

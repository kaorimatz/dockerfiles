# Bind

## Build

    docker build -t nsd .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 53:53/udp --name=nsd nsd

## Test

    dig @localhost localhost

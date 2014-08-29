# Bind

## Build

    docker build -t bind .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 53:53/udp --name=bind bind

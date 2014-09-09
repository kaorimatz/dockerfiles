# Unbound

## Build

    docker build -t unbound .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 53:53/udp --name=unbound unbound

# Systemd

## Build

    docker build -t systemd .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name=systemd systemd

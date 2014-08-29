# Squid

## Build

    docker build -t squid .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 3128:3128 --name=squid squid

## Test

    curl -x localhost:3128 google.com

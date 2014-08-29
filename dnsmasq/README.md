# Dnsmasq

## Build

    docker build -t dnsmasq .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=NET_ADMIN -p 53:53/udp --name=dnsmasq dnsmasq

## Test

    dig @localhost google.com

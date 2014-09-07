# Dnsmasq

## Build

    docker build -t dnsmasq .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=NET_ADMIN -p 53:53/udp -p 67:67/udp -p 69:69/udp --name=dnsmasq dnsmasq

## Test

    dig @localhost google.com

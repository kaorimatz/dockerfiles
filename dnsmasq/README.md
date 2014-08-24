# Dnsmasq

## Build

    docker build -t dnsmasq .

## Run

    docker run -d -v /sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add=NET_ADMIN -p 53/udp --name=dnsmasq dnsmasq

## Test

    port=$(docker inspect -f '{{(index (index .NetworkSettings.Ports "53/udp") 0).HostPort}}' dnsmasq)
    dig @localhost -p $port google.com

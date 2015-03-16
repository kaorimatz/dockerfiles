# Quagga

## Build

    docker build -t quagga .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /path/to/bgpd.conf:/etc/quagga/bgpd.conf --cap-add=NET_ADMIN --cap-add=NET_BROADCAST --cap-add=SYS_ADMIN --name=quagga quagga

## Test

    docker exec -i -t quagga vtysh

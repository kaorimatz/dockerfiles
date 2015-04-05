# BIRD

## Build

    docker build -t bird .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name=bird bird

## Test

    docker exec -i -t bird birdc

# Fluentd

## Build

    docker build -t fluentd:0.12.7 .

## Run

    docker run --rm -v /path/to/fluent:/etc/fluent --name=fluentd fluentd:0.12.7 /opt/ruby/bin/fluentd -s
    docker run -i -t -v /path/to/fluent:/etc/fluent --name=fluentd fluentd:0.12.7 /opt/ruby/bin/fluentd

## Test

    echo '{"key": "val"}' | docker exec -i fluentd /opt/ruby/bin/fluent-cat debug.tag

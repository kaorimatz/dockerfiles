# Ruby

## Build

    docker build -t ruby:@RUBY_VERSION@ .

## Run

    docker run -i -t --name=ruby ruby:@RUBY_VERSION@ /opt/ruby/bin/irb

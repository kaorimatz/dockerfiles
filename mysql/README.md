# MySQL

## Build

    docker build -t mysql .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 3306:3306 --name=mysql mysql

## Test

    docker exec mysql mysql -u root -e 'GRANT ALL PRIVILEGES ON *.* TO "root"@"%" WITH GRANT OPTION;'
    mysqladmin -u root --protocol=TCP status

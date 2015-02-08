# MariaDB

## Build

    docker build -t mariadb .

## Run

    docker run -d -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 3306:3306 --name=mariadb mariadb

## Test

    docker exec mariadb mysql -u root -e 'GRANT ALL PRIVILEGES ON *.* TO "root"@"%" WITH GRANT OPTION;'
    mysqladmin -u root --protocol=TCP status

# Docker to install apache, PHP mysql environment

[中文](./README_CN.md)

## Install the Docker
```
$ git clone https://github.com/dahaisoft/docker-lanmp.git
# debian
$ curl -sSL https://raw.githubusercontent.com/dahaisoft/shell-tool/master/install-atom.sh | sudo sh
# centos
$ curl -sSL https://raw.githubusercontent.com/dahaisoft/shell-tool/master/centos-install-docker.sh | sudo sh
```

## Install the Docker-compose
```
$ curl -sSL https://raw.githubusercontent.com/dahaisoft/shell-tool/master/install-compose.sh | sudo sh
```

## Run the choreography
```
# Copy the docker - compose folder apache - php56 - compose. Yml, mariadb - compose. Yml to the root directory
# Run apache
$ sudo docker-compose -f apache-php56-compose.yml up -d
# Run mariadb
$ sudo docker-compose -f mariadb-compose.yml up -d
```

## The directory structure
```
.
├── www             Web sites
├── data            The user data directory
├── docker          Docker source code
└── compose-template  Container format template
```

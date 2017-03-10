# Docker to install apache, PHP mysql environment

## Install the Docker
```
$ git clone https://github.com/dahaisoft/docker-lanmp.git
# debian
$ sudo ./bin/debian8-install-docker.sh
# centos
$ sudo ./bin/centos-install-docker.sh
```

## Install the Docker-compose
```
$ sudo ./bin/install-compose.sh
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
├── bin             Shell tools
├── data            The user data directory
├── docker          Docker source code
└── docker-compose  Container format template
```

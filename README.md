# docker-lanmp
## 安装
`
git clone https://github.com/dahaisoft/docker-lanmp.git
`
### debian安装docker
`
sudo ./bin/debian8-install-docker.sh
`
### centos安装docker
`
sudo ./bin/centos-install-docker.sh
`
### 安装docker-compose
`
sudo ./bin/install-compose.sh
`
### 运行apache
`
sudo docker-compose -f apache-php56-compose.yml up -d
`
### 运行mariadb
`
sudo docker-compose -f mariadb-compose.yml up -d
`

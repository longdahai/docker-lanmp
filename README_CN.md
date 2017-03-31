# Docker安装apache php mysql环境

[English](./README.md)

## 安装Docker
```
$ git clone https://github.com/dahaisoft/docker-lanmp.git
# debian
$ curl -sSL https://raw.githubusercontent.com/dahaisoft/shell-tool/master/install-atom.sh | sudo sh
# centos
$ curl -sSL https://raw.githubusercontent.com/dahaisoft/shell-tool/master/centos-install-docker.sh | sudo sh
```

## 安装Docker-compose
```
$ curl -sSL https://raw.githubusercontent.com/dahaisoft/shell-tool/master/install-compose.sh | sudo sh
```

## 运行编排
```
# 复制docker-compose文件夹apache-php56-compose.yml、mariadb-compose.yml 到根目录
# 运行apache
$ sudo docker-compose -f apache-php56-compose.yml up -d
# 运行mariadb
$ sudo docker-compose -f mariadb-compose.yml up -d
```

目录结构
```
.
├── www             网站
├── data            用户数据目录
├── docker          Docker源码
└── docker-compose  容器编排模板
```

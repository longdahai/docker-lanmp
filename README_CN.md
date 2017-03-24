# Docker安装apache php mysql环境

## 安装Docker
```
$ git clone https://github.com/dahaisoft/docker-lanmp.git
# debian
$ sudo ./bin/debian8-install-docker.sh
# centos
$ sudo ./bin/centos-install-docker.sh
```

## 安装Docker-compose
```
$ sudo ./bin/install-compose.sh
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
├── bin             工具
├── data            用户数据目录
├── docker          Docker源码
└── docker-compose  容器编排模板
```

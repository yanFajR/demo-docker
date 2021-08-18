# demo-docker
demo intro to docker, pada demo ini akan menginstall aplikasi nodejs dan mariadb beserta adminer untuk administrasi database

## prerequisite
1. install docker
https://docs.docker.com/get-docker/
3. install git
https://git-scm.com/downloads

## start
docker-compose up -d

## stop
docker-compose down


## Command IPTEKSHARING1

### Pull image mariadb from docker hub
```docker pull mariadb```

### Membuat image dari Dockerfile
```docker build --tag simplenode . ```

### Menjalankan container
```docker run -d -p 3000:3000 -e DATABASE=mariadb2 -e PASSDB=demo1234 --name info_harga simplenode```

```docker run -d --name mariadb2 -p 3306:3306 -v MariaDBdata2:/var/lib/mysql -e TZ=AsiaJakarta -e MYSQL_ROOT_PASSWORD=demo1234 -e MYSQL_DATABASE=dbharga mariadb```

### Membuat docker network
```docker network create demo```

### Connect container to network
```docker network connect demo info_harga```

```docker network connect demo mariadb2```

## Membuat container adminer untuk database
```docker run -p 8080:8080 -d --name adminer adminer```

```docker network connect demo adminer```

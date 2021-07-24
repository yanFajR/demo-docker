# demo-docker
demo intro to docker

## start
docker-compose up


## Command IPTEKSHARING1

### Pull image mariadb from docker hub
```docker pull mariadb```

### Membuat image dari Dockerfile
```docker build --tag simplenode . ```

### Menjalankan container
```docker run -p 3000:3000 -e DATABASE=mariadb2 -e PASSDB=demo1234 --name info_harga simplenode```

```docker run --name mariadb2 -p 3306:3306 -v MariaDBdata2:/var/lib/mysql -e TZ=AsiaJakarta -e MYSQL_ROOT_PASSWORD=demo1234 -e MYSQL_DATABASE=dbharga mariadb```

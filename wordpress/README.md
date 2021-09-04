## RUN
### MYSQL
```
docker-compose -f docker-compose.yml -f docker-compose.MYSQL.yml up
```

### MARIADB
```
docker-compose -f docker-compose.yml -f docker-compose.MARIADB.yml up
```

## To configure CLI run once with CLI wordpress container
### Do not use it for a long time, only for init and maintenance
### MYSQL
```
docker-compose -f docker-compose.yml -f docker-compose.WP-CLI.yml -f docker-compose.MYSQL.yml up
```

### MARIADB
```
docker-compose -f docker-compose.yml -f docker-compose.WP-CLI.yml -f docker-compose.MARIADB.yml up
```



## Manually installation
```
docker exec -u www-data -it wordpress bash

    wp core install --url=127.0.0.1:8000 --title="Vagrant Blog" --admin_name=vagrant --admin_password=V@grant1 --admin_email=vagrant@127.0.0.1

    echo -en "\n\ndefine( 'WP_HOME', 'http://127.0.0.1:8000' );\ndefine( 'WP_SITEURL', 'http://127.0.0.1:8000' );" >> wp-config.php

```
### Remove artifcats
```
    wp post delete $(wp post list --post_name="hello-world!" --format=ids)
    wp plugin delete hello
    wp plugin delete akismet
```
### Secure
```
cat aiowpsec.sql | docker exec -i wordpress-db /usr/bin/mysql -u ${WP_DB_USER:-wordpress} --password=${WP_DB_PASSWORD:-wordpress} wordpress

docker exec -u www-data -it wordpress bash

    wp plugin install all-in-one-wp-security-and-firewall && wp plugin activate all-in-one-wp-security-and-firewall

```



## Backup process
### Volumes
#### Backup
```
docker run --rm -v wp-data:/volume -v /tmp:/backup alpine tar -cjf /backup/wp-data_backup.tar.bz2 -C /volume ./

docker run --rm -v wp-db-data:/volume -v /tmp:/backup alpine tar -cjf /backup/wp-db-data_backup.tar.bz2 -C /volume ./
```

#### restore
```
docker run --rm -v wp-data:/volume -v /tmp:/backup alpine sh -c "rm -rf /volume/* /volume/..?* /volume/.[!.]* ; tar -C /volume/ -xjf /backup/wp-data_backup.tar.bz2"

docker run --rm -v wp-db-data:/volume -v /tmp:/backup alpine sh -c "rm -rf /volume/* /volume/..?* /volume/.[!.]* ; tar -C /volume/ -xjf /backup/wp-db-data_backup.tar.bz2"
```

### SQL
#### Backup
```
(docker exec wordpress-db /usr/bin/mysqldump -u ${WP_DB_USER:-wordpress} --password=${WP_DB_PASSWORD:-wordpress} wordpress) | bzip2 -c > backup.sql.bz2
```

#### Restore
```
bzip2 -dc backup.sql.bz2 | docker exec -i wordpress-db /usr/bin/mysql -u ${WP_DB_USER:-wordpress} --password=${WP_DB_PASSWORD:-wordpress} wordpress
```


## Update
### Remember to backup
### Plugin
```
wp plugin update --all
```
### Theme
```
wp theme update --all
```
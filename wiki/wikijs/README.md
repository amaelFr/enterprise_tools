




## Configure
```
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"adminEmail":"admin@mail.com","adminPassword":"V@grant1","adminPasswordConfirm":"V@grant1","siteUrl":"http://192.168.204.178","telemetry":false}' \
  http://127.0.0.1/finalize
```


## Backup
```
( echo -e "DROP SCHEMA public CASCADE;\nCREATE SCHEMA public;\n" && \
    docker exec -t wiki-db sh -c "pg_dumpall -c -U \${POSTGRES_USER}" ) \
| bzip2 -c > backup.sql.bz2
```
## Restore
```
bzip2 -dc backup.sql.bz2 | docker exec -i wiki-db sh -c "psql -U \${POSTGRES_USER} -d \${POSTGRES_DB}"
```
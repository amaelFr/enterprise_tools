# Freeipa
[www.freeipa.org](www.freeipa.org)

# Keycloak
[https://www.keycloak.org/](www.keycloak.org/)

[github.com/keycloak/keycloak-containers](github.com/keycloak/keycloak-containers)


# Run
## Freeipa
```
cd ipa
( source .env                                                       &&
docker-compose  -f docker-compose.yml up )
```

## Keycloak
```
cd keycloak
( source .env                                                       &&
docker-compose up )
```

## Freeipa && Keycloak
```
( source ipa/.env                                                   &&
source keycloak/.env                                                &&
docker-compose  -f ipa/docker-compose.yml                           \
                -f keycloak/docker-compose.yml                      \
                -f keycloak/docker-compose.freeipa-same-host.yml up )
```

# Usage

## Set up your variables
```
cp sample.env .env
```

## Run
### HTTP
```
source .env
docker-compose -p keycloak \
        -f docker-compose.yml \
        -f docker-compose.HTTP.yml \
        -f docker-compose.first_start.yml up
```

### HTTP && HTTPS
```
source .env
docker-compose -p keycloak \
        -f docker-compose.yml \
        -f docker-compose.HTTP.yml \
        -f docker-compose.HTTPS.yml \
        -f docker-compose.first_start.yml up
```

### HTTP && HTTPS with certificate from pki
#### TLS certificate and key name
CRT => tls.crt
<br/>
KEY => tls.key
<br/>
#### Add thrust root certificate
Set variable KEYCLOAK_X509_CA_BUNDLE
<br/>
Like following 
```
export KEYCLOAK_X509_CA_BUNDLE="/etc/x509/https/root-ca-NAME0.crt /etc/x509/https/root-ca-NAME1.crt /etc/x509/https/root-ca-NAMEXX.crt"
```
#### RUN
```
source .env
docker-compose -p keycloak \
        -f docker-compose.yml \
        -f docker-compose.HTTP.yml \
        -f docker-compose.HTTPS.yml \
        -f docker-compose.HTTPS_pkicert.yml \
        -f docker-compose.first_start.yml up
```


# Keycloak note
## Use kcadm.shs
https://www.keycloak.org/docs/latest/server_admin/#the-admin-cli
export PATH=$PATH:/opt/jboss/keycloak/bin/

### Login
kcadm.sh config credentials --server http://keycloak.cat.lol:8080/auth --realm master --user keycloak --password keycloak --client admin-cli || kcadm.sh config credentials --server http://keycloak.cat.lol:8443/auth --realm master --user keycloak --password keycloak --client admin-cli

### Get realms
kcadm.sh get realms --fields id --format csv

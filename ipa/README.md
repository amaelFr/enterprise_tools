# Usage

## Set up your variables
```
cp sample.env .env
```

## Run
```
source .env
docker-compose -p ipa \
        -f docker-compose.yml \
        -f docker-compose.DNS.yml \
        -f docker-compose.NTP.yml up
```

## Action post 
```
source .env
docker exec ipa sh -c \
        " echo ${IPA_ADMIN_PASSWORD:-${IPA_PASSWD:-${DOMAIN_PASSWD:-V@grant1}}} | kinit admin > /dev/null
        ipa dnsrecord-mod ${IPA_DOMAIN:-domain.local}. ${IPA_HOSTNAME:-ipa}-ca \
                --a-rec \$(ipa dnsrecord-find ${IPA_DOMAIN:-domain.local} ${IPA_HOSTNAME:-ipa}-ca | grep -oE '([0-9]{1,3}.){3}[0-9]{1,3}') \
                --a-ip-address ${IPA_INTERFACE:-0.0.0.0}"
```
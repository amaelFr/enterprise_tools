#!/bin/sh

CERTBOT_DIR=${CERTBOT_DIR:-/etc/letsencrypt/live}

CERTBOT_DOMAINS=${CERTBOT_DOMAINS:-$CERTBOT_DOMAIN}

CERTBOT_MAIL=${CERTBOT_MAIL}

if [ -z "$CERTBOT_DOMAINS" ]; then
    echo "ERROR: you must enter at least a domain"
    exit 1
fi

for DOMAIN in $CERTBOT_DOMAINS; do
    echo $DOMAIN
    if [ -z "$CERTBOT_MAIL" ]; then
        certbot certonly -n --standalone --staple-ocsp --agree-tos --test-cert -d $DOMAIN --register-unsafely-without-email
    else
        certbot certonly -n --standalone --staple-ocsp --agree-tos --test-cert -d $DOMAIN -m $CERTBOT_MAIL 
    fi
done

exit 1

while :; do
    certbot renew
    sleep 12s &
    wait $${!}
done

# certbot certonly -n --standalone --staple-ocsp --agree-tos --test-cert --rsa-key-size 8192  -d hades-cybersecurity.com -m amaelcattaneo@gmail.com
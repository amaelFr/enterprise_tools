FROM certbot/certbot:${CERTBOT_IMAGE:-latest}

COPY init.sh /usr/bin/init.sh

RUN chmod +x /usr/bin/init.sh

# USER 1000

ENTRYPOINT /usr/bin/init.sh
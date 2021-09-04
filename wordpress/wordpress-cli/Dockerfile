# FROM wordpress:${WP_VERSION:-latest}
FROM wordpress:fpm

RUN curl -o /usr/local/bin/wp -L https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN php /usr/local/bin/wp --info

RUN chmod +x /usr/local/bin/wp
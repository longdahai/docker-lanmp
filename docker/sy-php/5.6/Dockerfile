FROM wordpress:php5.6-fpm-alpine

COPY root /

RUN set -ex; \
	\
	apk add --no-cache --virtual .build-deps \
	libmcrypt-dev \
	; \
	\
	docker-php-ext-install mysql pdo_mysql bcmath mcrypt; \
	\
	apk del .build-deps; \
	pecl install redis && docker-php-ext-enable redis

# ENTRYPOINT []
CMD ["php-fpm"]
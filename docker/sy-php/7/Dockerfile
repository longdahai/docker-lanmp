FROM wordpress:php7.2-fpm-alpine

COPY root /

RUN set -ex; \
	\
	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS; \
	apk add --no-cache libmcrypt-dev libjpeg-turbo-dev libpng-dev freetype-dev libstdc++; \
	\
	pecl install redis; \
	docker-php-ext-enable redis; \
	\
	docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr --with-freetype-dir=/usr; \
	docker-php-ext-install gd; \
	\
	docker-php-ext-install pdo_mysql bcmath sockets; \
	\
	pecl install swoole && docker-php-ext-enable swoole; \
	\
	apk del .build-deps;

ENTRYPOINT []
CMD ["php-fpm"]
FROM dockercraft/composer
MAINTAINER Daniel <daniel@topdevbox.com>

# How-To
 # Local Build: docker build -t phpmd .
 # Local Run: docker run -it phpmd phpmd --version

RUN apk add --update \
		php7-tokenizer \
		php7-simplexml \
		php7-ctype \
		php7-dom \
		&& rm -rf /var/cache/apk/* 

RUN composer global require "phpmd/phpmd=2.6.0" \
		&& ln -s /root/.composer/vendor/phpmd/phpmd/src/bin/phpmd /bin/phpmd \
		&& ln -s /root/.composer/vendor/pdepend/pdepend/src/bin/pdepend /bin/pdepend


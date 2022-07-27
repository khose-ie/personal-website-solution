#!/bin/sh

APP_CONF_PATH=/root/config
NGINX_CONFD_PATH=/etc/nginx/conf.d

HOME_CONF=default.conf

cp -f ${APP_CONF_PATH}/${HOME_CONF} ${NGINX_CONFD_PATH}/${HOME_CONF}
sed -i "s/\${BASE_URL}/${BASE_URL}/g" ${NGINX_CONFD_PATH}/${HOME_CONF}
sed -i "s/\${HOME_CERT}/${HOME_CERT}/g" ${NGINX_CONFD_PATH}/${HOME_CONF}



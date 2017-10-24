#!/usr/bin/env bash

ESCAPED_BASE_URL="${BASE_PROTOCOL}:\/\/${BASE_DOMAIN}"

MEDIA_URL=http://localhost:8000/media/
STATIC_URL=http://localhost:8000/static/

sed -i "s#$MEDIA_URL#$ESCAPED_BASE_URL/media/#g" /usr/src/app/taiga-back/settings/common.py
sed -i "s#$STATIC_URL#$ESCAPED_BASE_URL/static/#g" /usr/src/app/taiga-back/settings/common.py

python /usr/src/app/taiga-back/manage.py runserver 0.0.0.0:8000
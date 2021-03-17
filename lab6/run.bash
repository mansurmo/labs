#!/bin/bash

cat txt.html > /var/www/html/index.html
docker run webserver && service apache2 start



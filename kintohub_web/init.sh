#!/bin/bash
curl -X POST 'http://127.0.0.1/index.php?INSTALL=2' -H 'Content-Type: application/x-www-form-urlencoded'  --data-urlencode 'install=on' --data-urlencode "adminlogin=$NEXTCLOUD_ADMIN_USER" --data-urlencode "adminpass=$NEXTCLOUD_ADMIN_PASSWORD" --data-urlencode "adminpass-clone=$NEXTCLOUD_ADMIN_PASSWORD"
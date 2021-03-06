#kintohub.com 的 Dockerfile用法

## 建议：

> 推荐使用自建的mysql 做数据库，sqlite3重启容器会丢数据。

1、文件选择 Dockerfile.kintohub

2、起一个redis

3、配置环境变量：

```$xslt
      - UPLOAD_MAX_SIZE=10G
      - APC_SHM_SIZE=128M
      - OPCACHE_MEM_SIZE=128
      - CRON_PERIOD=15m
      - TZ=Aisa/Shanghai
      - DOMAIN=wpan.scjtqs.com
      - SQLITE_DATABASE=nextcloud
      - REDIS_HOST=redis-master
      - REDIS_HOST_PORT=6379
      - REDIS_HOST_PASSWORD=你的密码
      - SMTP_HOST=smtp邮箱地址
      - SMTP_PORT=994
      - SMTP_SECURE=ssl
      - SMTP_NAME=邮箱全名地址
      - SMTP_PASSWORD=邮箱密码
      - SMTP_AUTHTYPE=LOGIN
      - MAIL_FROM_ADDRESS=邮箱@前名字
      - MAIL_DOMAIN=邮箱@后域名
      - NEXTCLOUD_DATA_DIR=/nextcloud
      - NEXTCLOUD_ADMIN_USER=admin
      - NEXTCLOUD_ADMIN_PASSWORD=admin
      - NEXTCLOUD_TRUSTED_DOMAINS=wpan.scjtqs.com
```

4、使用mysql

```$xslt
      - UPLOAD_MAX_SIZE=10G
      - APC_SHM_SIZE=128M
      - OPCACHE_MEM_SIZE=128
      - CRON_PERIOD=15m
      - TZ=Aisa/Shanghai
      - DOMAIN=wpan.scjtqs.com
      - MYSQL_DATABASE=nextcloud
      - MYSQL_USER=nextcloud
      - MYSQL_PASSWORD=nextcloud
      - MYSQL_HOST=www.baidu.com:3306
      - DB_PORT=3306
      - REDIS_HOST=redis-master
      - REDIS_HOST_PORT=6379
      - REDIS_HOST_PASSWORD=你的密码
      - SMTP_HOST=smtp邮箱地址
      - SMTP_PORT=994
      - SMTP_SECURE=ssl
      - SMTP_NAME=邮箱全名地址
      - SMTP_PASSWORD=邮箱密码
      - SMTP_AUTHTYPE=LOGIN
      - MAIL_FROM_ADDRESS=邮箱@前名字
      - MAIL_DOMAIN=邮箱@后域名
      - NEXTCLOUD_DATA_DIR=/nextcloud
      - NEXTCLOUD_ADMIN_USER=admin
      - NEXTCLOUD_ADMIN_PASSWORD=admin
      - NEXTCLOUD_TRUSTED_DOMAINS=wpan.scjtqs.com
```

5、使用 PostgreSQL

```$xslt
      - UPLOAD_MAX_SIZE=10G
      - APC_SHM_SIZE=128M
      - OPCACHE_MEM_SIZE=128
      - CRON_PERIOD=15m
      - TZ=Aisa/Shanghai
      - DOMAIN=wpan.scjtqs.com
      - POSTGRES_DB=nextcloud
      - POSTGRES_USER=nextcloud
      - POSTGRES_PASSWORD=nextcloud
      - POSTGRES_HOST=postgresql
      - REDIS_HOST=redis-master
      - REDIS_HOST_PORT=6379
      - REDIS_HOST_PASSWORD=你的密码
      - SMTP_HOST=smtp邮箱地址
      - SMTP_PORT=994
      - SMTP_SECURE=ssl
      - SMTP_NAME=邮箱全名地址
      - SMTP_PASSWORD=邮箱密码
      - SMTP_AUTHTYPE=LOGIN
      - MAIL_FROM_ADDRESS=邮箱@前名字
      - MAIL_DOMAIN=邮箱@后域名
      - NEXTCLOUD_DATA_DIR=/nextcloud
      - NEXTCLOUD_ADMIN_USER=admin
      - NEXTCLOUD_ADMIN_PASSWORD=admin
      - NEXTCLOUD_TRUSTED_DOMAINS=wpan.scjtqs.com
```

6、文件选择 Dockerfile2.kintohub 会自动安装(环境变量一定要填全，除了邮箱的部分)，带kodexplorer 

> https://域名/kodexplorer 
Install machine
```
make setup
```

Create password file for nginx
```
docker-compose run --rm nginx htpasswd mhe
```

Create password file for registry
```
docker-compose run --rm registry htpasswd -Bbn user pass > /auth/.htaccess
```

Create certificates
```
make ssl-standalone
```

Schedule ssl renewal
```
schedule `make ssl` using cron, cygwin cron or windows task scheduler
```

Setup ssh keys for backup
```
make setup-backup-ssh-keys
```

Start services
```
make start
```

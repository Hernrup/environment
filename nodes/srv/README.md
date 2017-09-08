### Install machine
```
./setup.ps1
```

### docker
install `docker`, `docker-compose` and `make`

### Create password file
Create a .htpasswd file in `.data/etc/.htaccess`

### Create certificates
```
make ssl-standalone
```

### Schedule ssl renewal
schedule `make ssl` using cron, cygwin cron or windows task scheduler

### Start cervices
```
make run
```

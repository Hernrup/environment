### Install machine
```
./setup.ps1
```

### Start nginx container
You may have to disable any hosts that are using ssl as the certs does not exist yet
```
docker-compose up -d nginx
```

### Create certificates
Requires nginx to be running
```
make ssl
```

### Schedule ssl renewal
schedule `make ssl` using cron, cygwin cron or windows task scheduler

### Start cervices
```
docker-compose up -d
```

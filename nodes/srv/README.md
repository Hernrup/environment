### Install machine
```
./setup.ps1
```

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

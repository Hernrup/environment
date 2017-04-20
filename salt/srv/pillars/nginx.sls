nginx:
  conf:
    user: "www-data"
    worker_processes: 4
    worker_connections: 1024
    error_log:
      path: "/var/log/nginx/error.log"
      level: "crit"
    gzip: "on"
  vhost:
    port: 80
    root: "/var/www/"
    cache_static_files: "off"
    error_log: "/var/log/nginx/application_error.log"



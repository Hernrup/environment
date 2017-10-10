#!/bin/bash

set -e

STDOUT_LOC=${STDOUT_LOC:-/proc/1/fd/1}
STDERR_LOC=${STDERR_LOC:-/proc/1/fd/2}

BACKUP_DECLARATIONS=${BACKUP_DECLARATIONS:-/etc/backup.d}

echo "* * * * * chmod 700 ${BACKUP_DECLARATIONS}; chown -R root:root ${BACKUP_DECLARATIONS}; chmod 600 ${BACKUP_DECLARATIONS}; /usr/sbin/backupninja -d > ${STDOUT_LOC} 2> ${STDERR_LOC}" | crontab -

exec cron -f

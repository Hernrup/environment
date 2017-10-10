#!/bin/bash

set -e

STDOUT_LOC=${STDOUT_LOC:-/proc/1/fd/1}
STDERR_LOC=${STDERR_LOC:-/proc/1/fd/2}

BACKUP_DECLARATIONS=${BACKUP_DECLARATIONS:-/etc/backup.d}

chmod 700 -R ${BACKUP_DECLARATIONS}
chown -R root:root ${BACKUP_DECLARATIONS}
chmod 600 -R ${BACKUP_DECLARATIONS}
exec /usr/sbin/backupninja -d -n

#!/bin/bash

set -e

. /prepare.sh

exec /usr/sbin/backupninja -d -n

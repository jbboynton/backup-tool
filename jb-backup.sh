#!/bin/bash

# Backup Tool
#
# A backup utility for backing up WordPress sites. For more info, check out the
# repo at https://github.com/jbboynton/backup-tool.

# my_machine="computer14@${HOSTNAME}"

sh ./wp-backup.sh
sh ./wp-transfer.sh


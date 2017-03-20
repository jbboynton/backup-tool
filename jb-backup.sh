#!/bin/bash

# Backup Tool
#
# A backup utility for backing up WordPress sites. For more info, check out the
# repo at https://github.com/jbboynton/backup-tool.
#
# Params
# $1 The identifier for the remote site, as defined in .ssh/config

# Open an SSH connection to the remote machine and run the backup
ssh $1 'bash -s' < ./wp-backup.sh

# Transfer the backup file to the local machine, passing the SSH identifier as
# a parameter
sh ./wp-transfer.sh $1


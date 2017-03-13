# Backup Tool

A simple backup tool for remotely backing up WordPress sites.

### 1. Run the backup script

- `~/Scripts/backup-tool/wp-backup.sh`
- Need to pass this command to SSH currently

### 2. Run the transfer script

- `~/Scripts/backup-tool/wp-backup-transfer.sh`
- Need to exit SSH before running this script

--

### To Do:

- After transferring the file, check if the file transferred successfully? If
  yes, delete the remote copy of the backup, else send an email to me/dev
  notifying me that the backup failed
- Check if the backup is needed by verifying checksum with rsync before transfer
  (-c flag I think)
- Consolidate both scripts into one
- Parameterize the login credentials
- Make script interactive so if a .backup_id file doesn't exist, one can be
  created on the fly by reading user input
- Integrate a log file
- Create a separate script to rotate backups periodically

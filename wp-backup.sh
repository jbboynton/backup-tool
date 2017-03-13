#!/bin/bash

date=$(date +%Y%m%d%H%M%S)
# TODO: log the date of the backup
# TODO: log the date of the last successful backup

# Loop through the .backup_id file, read in backup info
if [ -e "${HOME}/.backup_id" ]; then
  while IFS='' read -r line || [[ -n $line ]]; do
    # Store each line in an array
    id_array+=("${line}")
  done < "${HOME}/.backup_id"
  # TODO: log successful read
else
  # TODO: this should prompt: create a new one?
  # TODO: log that a .backup_id file was created
  printf "Need a backup_id file.\n\nExiting. . ." && exit
fi

site_name=${id_array[0]}
# TODO: log site name in the header of the log file
backup_filename="${date}_${site_name}.gz"

cd "${HOME}/public_html/" || ( printf "Directory not found.\n\nExiting. . ." && exit )
# TODO: log the path to the directory that will be backed up

wp db export
#TODO: log output from wp db export
tar -vczf $backup_filename .
# TODO: log output from tar
wp core update
# log output from wp core update
wp plugin update --all
# TODO: log output from wp plugin update

exit


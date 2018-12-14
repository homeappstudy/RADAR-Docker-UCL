#!/bin/bash
# File mounted as: /etc/sftp.d/init-user-keys.sh
# Just an example (make your own)

for user in $(cut -f 1 -d':' /etc/sftp/users.conf); do
  if [ -e /etc/sftp/authorized_keys/$user ]; then
    mkdir -p /home/$user/.ssh
    cat /etc/sftp/authorized_keys/$user >> /home/$user/.ssh/authorized_keys
  fi
done


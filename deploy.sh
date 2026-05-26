#!/bin/bash
rsync -avz --exclude='.git' --exclude='.DS_Store' --exclude='.agents' --exclude='.claude' \
  ~/Documents/fullsquarestudios/ root@178.105.90.72:/var/www/fullsquarestudios/

ssh root@178.105.90.72 "find /var/www/fullsquarestudios -type d -exec chmod 755 {} \; && find /var/www/fullsquarestudios -type f -exec chmod 644 {} \; && chown -R www-data:www-data /var/www/fullsquarestudios"

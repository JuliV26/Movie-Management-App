#!/bin/bash
PROJECT_DIR="/mnt/c/Users/user/movie"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_DIR="$PROJECT_DIR/backups/$DATE"
echo "Стартира backup: $DATE"
mkdir -p "$BACKUP_DIR"

[ -f movies.json ] && cp movies.json "$BACKUP_DIR/"
[ -f users.json ] &&cp users.json "$BACKUP_DIR/"


tar --exclude='./backups' -czf "$BACKUP_DIR/project.tar.gz" .


PGPASSWORD="$DB_PASS" pg_dump -U "$DB_USER" "$DB_NAME" > "$BACKUP_DIR/db.sql"

echo " Backup saved in $BACKUP_DIR"




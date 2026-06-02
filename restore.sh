#!/bin/bash
PROJECT_DIR="/mnt/c/Users/user/movie"
BACKUP_PATH="$PROJECT_DIR/backups/$DATE"



echo " Restore started..."


cp $BACKUP_PATH/movies.json .
cp $BACKUP_PATH/users.json .
tar -xzf $BACKUP_PATH/project.tar.gz


PGPASSWORD=$DB_PASS psql -U $DB_USER $DB_NAME < $BACKUP_PATH/db.sql

echo " Restore completed!"
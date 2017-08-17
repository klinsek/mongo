#!/bin/sh

if [ "$INIT_DB_NAME" ] && [ "$INIT_DB_USER" ] && [ "$INIT_DB_PASSWORD" ]; then  
  echo "db.createUser({user:\"$INIT_DB_USER\", pwd: \"$INIT_DB_PASSWORD\", roles:[ \"readWrite\", \"dbAdmin\"]});" | mongo $INIT_DB_NAME
fi


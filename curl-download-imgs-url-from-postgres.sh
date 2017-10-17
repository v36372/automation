psql <databasename> -c "select url from photo" | sed -n '/http/p' | xargs -n 1 curl -O -J

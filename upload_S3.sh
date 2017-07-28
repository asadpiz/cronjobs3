#!/bin/bash
filename="$HOME/pg_dumps/pg_dump_$(date +'%d-%m-%y-%R')"
echo "Filename is $filename"
docker exec -it typpt_db_1 /bin/sh -c "pg_dump -U \${POSTGRES_USER} \${POSTGRES_DB}" > "$filename"
/usr/local/bin/aws s3 cp $filename s3://typpt-bucket1/

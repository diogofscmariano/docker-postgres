#!/bin/bash
export PGPASSWORD=password
 
sql_dir=../sql-files
 
psql -h localhost -U $POSTGRES_USER -f $sql_dir/create_repository_postgresql.sql
psql -h localhost -U $POSTGRES_USER -f $sql_dir/create_jcr_postgresql.sql
psql -h localhost -U $POSTGRES_USER -f $sql_dir/create_quartz_postgresql.sql
psql -h localhost -U $POSTGRES_USER -d hibernate -f $sql_dir/pentaho_mart_drop_postgresql.sql
psql -h localhost -U $POSTGRES_USER -d hibernate -f $sql_dir/pentaho_mart_postgresql.sql
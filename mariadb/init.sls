mariadb-client:
  pkg.installed

mariadb-server:
  pkg.installed

/tmp/create_sql_user_database_access.sql
 file.managed:
    - mode: 600
    - name: salt://LAMP/mariadb/create_sql_user_database_access.sql

'cat /tmp/create_sql_user_database_access.sql | sudo mariadb -u root':
  cmd.run:
    - unless: "echo 'show databases' | sudo mariadb -u- root | grep '^database$'"


    

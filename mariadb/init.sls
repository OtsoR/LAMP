mariadb-client:
  pkg.installed

mariadb-server:
  pkg.installed

/tmp/create_user.sql:
  file.managed:
    - mode: 600
    - source: salt://LAMP/mariadb/create_user.sql

'cat /tmp/create_user.sql | sudo mariadb -u root':
  cmd.run:
    - unless: "echo 'show databases' | sudo mariadb -u- root | grep '^database$'"

/tmp/create_sql_database_access.sql:
  file.managed:
    - mode: 600
    - source: salt://LAMP/mariadb/create_database_access.sql

'cat /tmp/create_database_access.sql | sudo mariadb -u root':
  cmd.run:
    - unless: "echo 'show databases' | sudo mariadb -u- root | grep '^database$'"


    

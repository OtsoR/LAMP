mariadb-client:
  pkg.installed

mariadb-server:
  pkg.installed

/tmp/create_user.sql:
  file.managed:
    - mode: 600
    - source: salt://komennot.sql

'cat /tmp/create_user.sql | sudo mariadb -u root':
  cmd.run:
    - unless: "echo 'show databases' | sudo mariadb -u- root | grep '^AUTO$'"
    
 #.my.cnf cmr.run here maybe


#Another testing files

#/tmp/create_sql_database_access.sql:
#  file.managed:
#    - mode: 600
#    - source: salt://mariadb/create_database_access.sql

#'cat /tmp/create_database_access.sql | sudo mariadb -u root':
 # cmd.run:
 #   - unless: "echo 'show databases' | sudo mariadb -u- root | grep '^otso$'"


    

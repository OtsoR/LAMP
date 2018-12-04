mariadb-client:
  pkg.installed

mariadb-server:
  pkg.installed

/tmp/create_user.sql:
  file.managed:
    - mode: 600
    - source: salt://LAMP/komennot.sql

'cat /tmp/create_user.sql | sudo mariadb -u root':
  cmd.run:
    - unless: "echo 'show databases' | sudo mariadb -u- root | grep '^heppa$'"

#.my.cnf works like this directly
#/home/otso/.my.cnf:
#  file.managed:
#    - mode: 744
#    - source: salt://LAMP/.my.cnf


/tmp/.my.cnf:
  file.managed:
    - mode: 744
    - source: salt://LAMP/.my.cnf

'sudo cp /tmp/.my.cnf /home/$USER/.my.cnf':
  cmd.run:
    - unless: "echo 'show databases' | sudo mariadb -u- root | grep '^heppa$'"
#    - onlyif: "echo 'show databases' | sudo mariadb -u- root | grep '^heppa$'"

#'cat /tmp/.my.cnf | tee ~/.my.cnf':
#  cmd.run:
#    - unless: "echo 'show databases' | sudo mariadb -u- root | grep '^heppa$'"





#Another testing files

#/tmp/create_sql_database_access.sql:
#  file.managed:
#    - mode: 600
#    - source: salt://mariadb/create_database_access.sql

#'cat /tmp/create_database_access.sql | sudo mariadb -u root':
 # cmd.run:
 #   - unless: "echo 'show databases' | sudo mariadb -u- root | grep '^otso$'"


    

#{% if grains['os'] == 'Ubuntu' %}

/home/xubuntu/.config/xfce4/terminal/terminalrc:
  file.managed:
    - source: salt://xfce4/terminalrc
    - user: xubuntu
    - group: xubuntu
    - replace: True
    - makedirs: True
    - reload: True
    - enable: True

/home/xubuntu/.config/xfce4/terminal/accels.scm:
  file.managed:
    - source: salt://xfce4/accels.scm
    - user: xubuntu
    - group: xubuntu
    - replace: True
    - makedirs: True

#terminal_xfce4:
#  service.running:
#   - watch:
#     - file: /home/xubuntu/.config/xfce4/terminal/terminalrc

#{% endif %}


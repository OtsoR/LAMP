#{% if grains['os'] == 'Ubuntu' %}

/home/xubuntu/.config/xfce4/terminal/terminalrc:
  file.managed:
    - source: salt://xfce4/terminalrc
    - user: xubuntu
    - group: xubuntu
    - replace: True
    - makedirs: True

#{% endif %}


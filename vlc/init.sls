vlc:
  pkg.installed

~/.local/share/vlc/skins2/..
  file.managed:
    - source: salt//vlc/..

~/.config/vlc/vlc-qt-interface.conf:
  file.managed:
    - source: salt://vlc/vlc-qt-interface.conf

~/.config/vlc/vlcrc:
  file.managed:
    - source: salt://vlc/vlcrc 

vlc_running:
  service.running:
    - watch:
      - file: ~/.config/vlc/vlcrc


vlc:
  pkg.installed

/home/xubuntu/.local/share/vlc/skins2/eDark_Vlc.vlt:
  file.managed:
    - source: salt://vlc/eDark_Vlc.vlt
    - makedirs: True
 
/home/xubuntu/.config/vlc/vlc-qt-interface.conf:
  file.managed:
    - source: salt://vlc/vlc-qt-interface.conf
    - replace: False
    - makedirs: True

/home/xubuntu/.config/vlc/vlcrc:
  file.managed:
    - source: salt://vlc/vlcrc
    - mode: 644 

# unnecessary and not working
#vlc_running:
#  service.running:
#    - name: vlc
#    - reload: True
#    - watch:
#      - file: /home/xubuntu/.config/vlc/vlcrc


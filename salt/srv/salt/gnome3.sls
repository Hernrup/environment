ubuntu-gnome-desktop:
  pkg.latest:
    - refresh: True


x11-allow-all:
  cmd.run:
    - name: sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config
    - require:
      - ubuntu-gnome-desktop
ubuntu-desktop:
  pkg.latest:
    - name: ubuntu-gnome-desktop
    - refresh: True


x11-allow-all:
  cmd.run:
    - name: sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config
    - require:
      - ubuntu-desktop

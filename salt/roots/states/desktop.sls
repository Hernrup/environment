ubuntu-desktop:
  pkg:
    - installed

guest-addons:
  module.run:
    - name: vbox_guest.additions_install
    - reboot: True

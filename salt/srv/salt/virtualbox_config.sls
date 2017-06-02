virtualbox-guest-dkms:
  pkg.latest

virtualbox-guest-utils:
  pkg.latest

virtualbox-guest-x11:
  pkg.latest

vbox_client_config:
  cmd.run:
    - name: sudo VBoxClient --clipboard && sudo VBoxClient --draganddrop && sudo VBoxClient --display && sudo VBoxClient --checkhostversion && sudo VBoxClient --seamless
    - require:
      - virtualbox-guest-dkms
      - virtualbox-guest-utils
      - virtualbox-guest-x11

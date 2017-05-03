# -*- coding: utf-8 -*-
# vim: ft=sls

packer-extract-binary:
  archive.extracted:
    - name: /opt/packer/0.11.0
    - source: https://releases.hashicorp.com/packer/0.11.0/packer_0.11.0_linux_amd64.zip
    - source_hash: 'sha256=318ffffa13763eb6f29f28f572656356dc3dbf8d54c01ffddd1c5e2f08593adb'
    - archive_format: zip
    - enforce_toplevel: False
  cmd.run:
    - name: |
        chmod +x /opt/packer/0.11.0/packer
    - runas: root
    - shell: /bin/bash
    - require:
        - archive: packer-extract-binary


packer-env-file:
  file.managed:
    - name: /etc/profile.d/packer.sh
    - contents: "export PATH=$PATH:/opt/packer/0.11.0"
    - require:
      - packer-extract-binary

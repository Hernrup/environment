# -*- coding: utf-8 -*-
# vim: ft=sls

terraform-extract-binary:
  archive.extracted:
    - name: /opt/terraform/0.9.4
    - source: https://releases.hashicorp.com/terraform/0.9.4/terraform_0.9.4_linux_amd64.zip
    - source_hash: 'sha256=cc1cffee3b82820b7f049bb290b841762ee920aef3cf4d95382cc7ea01135707'
    - archive_format: zip
    - enforce_toplevel: False
  cmd.run:
    - name: |
        chmod +x /opt/terraform/0.9.4/terraform
    - runas: root
    - shell: /bin/bash
    - require:
        - archive: terraform-extract-binary


terraform-env-file:
  file.managed:
    - name: /etc/profile.d/terraform.sh
    - contents: "export PATH=$PATH:/opt/terraform/0.9.4"
    - require:
      - terraform-extract-binary

users:
  mhe:
    state: present
    fullname: MHE
    empty_password: False
    password: $1$KonJs5sc$OZzEhKoyGOKQsFSErjPP60
    shell: /bin/zsh
    home: /home/mhe
    groups:
      - wheel
    pubkeys:
      7w63f12: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5Fw7yOvvwAeS43tT6a326eRciTf5pdnumIfVbQIvVuhuuTNY9wlJ1RvmMVFEzVYJSij40oAObvBpdogJIYJpqgKFfoqvX9Xus3BATXUwmuikKZmgOiRds7fRWRYIW8hX/NXbsiHIV/D/rxlEUVik1Y7s4d0RPUjRfb2J+KMbka5fcbVqt1F2ttIRsPlOZBjhea6vYN4OyckvnZXoJ9bFbZxc6fRt6bIWBZh+waM3lgRFeBubCd24aiL9wutET6q2QhIBtdiAl52w/HRmLiMrfqtY8nRExtE7RcyEBCpttddgnzaPgwM5lOV6YZD4om0hmQv42RCh5bCD18mZkGqMd mhe@7W63F12
      mh: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDfMOI5ripqkMLeOCCblwj1QAa0IbZXC1FdMn1OwYpzB1RbuJS30W9zvIT5supkAIWp7ieigngVPa6Osd0igCQS5p9iHsaDTImpPQGvOjSGetaXR2MQ0oKTBy2a7ZKzJXA9PwC9HunGVBDeNn1PusdCGkkZA5n1i/9p7uVLRDlNPXwYKI4BTxIECzEg304cFhX9fLYD2U/7MJlWGEei3q0hIpMU2N7CtwAA8MsgT+7+fPQ+re9TA8vR2hUtpnZYtsbUisjOh5UJLbeo14BrY2zr8WPJvHWFOFsJridHSlENJI6sJefvwpLQiCz+u0zZukNL9lDYJwt0Zc/EITDir857mYgZ5SHrqLEtjvz0nTjUSMpM2ycAjL/OGS9FpiBcsVL+/XJIPY0hNFz3jRS60d+aXwv6jPxYCae39ysBLcZ51u2iY9mJwsmYCgEzuA6bTtdYcB8QS/JCOqbLu8BGK6bAh9AAXw0Gn1UpowwTM8setyX9IJSSErV4KzwjxkXHZ//lkegpb0NS9cpVT7pcHeoXtgyJmH0DR11jMg17lXtPYtINZVSHdqUuXPvl/QyzQITziRvr4Q338dwxsNVOswqRjbxKyB5mR6COpjXS39+UuHfKu667wvp8DCVliQqraaG+kh7lU5GutGGt5SkMLPUe6ay4RAiVjlTvFkGyerix5Q== mikael@hernrup.se
  ubuntu:
    state: absent
    purge: True

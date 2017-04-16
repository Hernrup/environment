salt:
  master:
    worker_threads: 2
    fileserver_backend:
      - roots
      - git
    gitfs_remotes:
      - git://github.com/saltstack-formulas/salt-formula.git
    file_roots:
      - /srv/salt/states
      - /srv/salt/formulas/mysql-formula
      - /srv/salt/formulas/redis-formula
      - /srv/salt/formulas/node-formula
    pillar_roots:
      - /srv/salt/pillar
  minion:
    master: localhost

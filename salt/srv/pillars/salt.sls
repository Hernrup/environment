salt:
  master:
    worker_threads: 2
    fileserver_backend:
      - roots
      - git
    gitfs_remotes:
      - git://github.com/saltstack-formulas/salt-formula.git
      - git://github.com/saltstack-formulas/docker-formula.git
      - git://github.com/saltstack-formulas/consul-formula.git
    file_roots:
      base:
        - /srv/salt
        - /srv/formulas/mysql-formula
        - /srv/formulas/redis-formula
        - /srv/formulas/node-formula
    pillar_roots:
      base:
        - /srv/pillar
  minion:
    master: localhost

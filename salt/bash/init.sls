bashrc:
  file.managed:
    - source: salt://bash/rc
    - name: /home/{{pillar['user']}}/.bashrc
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

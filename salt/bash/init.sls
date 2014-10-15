bashrc:
  file.managed:
    - source: salt://bash/bashrc
    - name: /home/{{pillar['user']}}/.bashrc
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

bash_aliases:
  file.managed:
    - source: salt://bash/bash_aliases
    - name: /home/{{pillar['user']}}/.bash_aliases
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

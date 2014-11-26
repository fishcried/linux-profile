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

vimone.sh:
  file.managed:
    - source: salt://bash/vimone.sh
    - name: /home/{{pillar['user']}}/.vimone.sh
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

git-completion.bash:
  file.managed:
    - source: salt://bash/git-completion.bash
    - name: /home/{{pillar['user']}}/.git-completion.bash
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

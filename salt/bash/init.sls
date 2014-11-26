bashrc:
  file.managed:
    - source: salt://bash/bashrc
    - name: {{pillar['userhomehome']}}/.bashrc
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

bash_aliases:
  file.managed:
    - source: salt://bash/bash_aliases
    - name: {{pillar['userhomehome']}}/.bash_aliases
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

vimone.sh:
  file.managed:
    - source: salt://bash/vimone.sh
    - name: {{pillar['userhomehome']}}/.vimone.sh
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

git-completion.bash:
  file.managed:
    - source: salt://bash/git-completion.bash
    - name: {{pillar['userhomehome']}}/.git-completion.bash
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

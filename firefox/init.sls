firefox-configs:
  file.managed:
    - source: salt://firefox/pentadactylrc
    - name: {{pillar['userhome']}}/.pentadactylrc
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}
  file.managed:
    - source: salt://firefox/vimperatorrc
    - name: {{pillar['userhome']}}/.vimperatorrc
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

firefox-configs:
  file.managed:
    - source: salt://firefox/pentadactylrc
    - name: {{pillar['userhomehome']}}/.pentadactylrc
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}
  file.managed:
    - source: salt://firefox/vimperatorrc
    - name: {{pillar['userhomehome']}}/.vimperatorrc
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

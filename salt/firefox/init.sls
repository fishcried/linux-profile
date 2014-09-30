firefox-configs:
  file.managed:
    - source: salt://firefox/pentadactylrc
    - name: /home/{{pillar['user']}}/.pentadactylrc
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}
  file.managed:
    - source: salt://firefox/vimperatorrc
    - name: /home/{{pillar['user']}}/.vimperatorrc
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

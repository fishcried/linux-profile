install-tools-scripts:
  file.recurse:
    - source: salt://tools/scripts
    - name: /home/{{pillar['user']}}/Bin/
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}

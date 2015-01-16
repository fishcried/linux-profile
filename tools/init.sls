install-tools-scripts:
  file.recurse:
    - source: salt://tools/scripts
    - name: {{pillar['userhome']}}/Bin/
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}
    - file_mode: 775

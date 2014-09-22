install-tools-scripts:
  file.recurse:
    - source: salt://tools/scripts
    - name: /home/{{pillar['user']}}/Bin/
    - file_mode: 0775

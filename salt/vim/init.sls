vim-pkgs:
  pkg.installed:
    - name: vim

vim-config:
  file.recurse:
    - source: salt://vim/date
    - name: /home/{{pillar['user']}}/.vim
    - user: {{pillar['user']}}
    - group: {{pillar['user']}}
    - require:
      - pkg.installed: vim-pkgs

vimrc:
  file.managed:
    - source: salt://vim/date/vimrc  
    - name: /home/{{pillar['user']}}/.vimrc
    - user: {{pillar['user']}}
    - group: {{pillar['user']}}
    - require:
      - pkg.installed: vim-pkgs
    

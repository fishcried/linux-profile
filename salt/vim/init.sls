vim-pkgs:
  pkg.installed:
    - name: vim

vim-config:
  file.recurse:
    - source: salt://vim/date
    - name: {{pillar['userhome']}}/.vim
    - user: {{pillar['user']}}
    - group: {{pillar['user']}}
    - require:
      - pkg.installed: vim-pkgs

vimrc:
  file.managed:
    - source: salt://vim/date/vimrc  
    - name: {{pillar['userhome']}}/.vimrc
    - user: {{pillar['user']}}
    - group: {{pillar['user']}}
    - require:
      - pkg.installed: vim-pkgs
    

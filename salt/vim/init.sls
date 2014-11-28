vim-pkgs:
  pkg.installed:
    - name: vim

vim-config-files:
  file.recurse:
    - source: salt://vim/date/configs
    - name: {{pillar['userhome']}}/.vim/configs
    - user: {{pillar['user']}}
    - group: {{pillar['user']}}
    - clean: ture
    - require:
      - pkg.installed: vim-pkgs

vim-templates-files:
  file.recurse:
    - source: salt://vim/date/templates
    - name: {{pillar['userhome']}}/.vim/templates
    - user: {{pillar['user']}}
    - group: {{pillar['user']}}
    - clean: ture
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
    

tmux-pkgs:
  pkg.installed:
    - names:
      - tmux
      - xclip

tmux-config:
  file.managed:
    - name: {{pillar['userhome']}}/.tmux.conf
    - source: salt://tmux/tmux.conf
    - group: {{pillar['user']}}
    - user: {{pillar['user']}}
    - template: jinja
    - require:
      - pkg.installed: tmux-pkgs

tmux-pkgs:
  pkg.installed:
    - names:
      - tmux
      - xclip

tmux-config:
  file.managed:
    - name: /home/{{pillar['user']}}/.tmux.conf
    - source: salt://tmux/tmux.conf
    - template: jinja
    - require:
      - pkg.installed: tmux-pkgs

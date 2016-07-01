##############################################################################
# Style
##############################################################################

# config colors
set -g status-fg white
set -g status-bg black

setw -g window-status-fg cyan
setw -g window-status-bg default
setw -g window-status-attr dim

setw -g window-status-current-fg white
setw -g window-status-current-bg red
setw -g window-status-current-attr bright

set -g pane-border-fg green
set -g pane-border-bg black
set -g pane-active-border-fg white
set -g pane-active-border-bg yellow

set -g message-fg white
set -g message-bg black
set -g message-attr bright

# config status bar
set -g status-left-length 40
set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"
set -g status-right "#[fg=cyan]%d %b %R"
set -g status-interval 60
set -g status-justify centre
setw -g monitor-activity on
set -g visual-activity on

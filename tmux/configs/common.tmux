bind b send-prefix

# reload config
bind r source-file ~/.tmux.conf \; display "Reloaded!"

# Config Index
set -g base-index 1
setw -g pane-base-index 1
set-option -g renumber-windows on

# Enable Mouse
setw -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on

# SettingDelay
set -sg escape-time 1

# copy in vi mode
set-window-option -g mode-keys vi

set -g default-terminal "screen-256color"

set -g message-attr bright

# history 
set -g history-limit 50000

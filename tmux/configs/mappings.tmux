# split panes
unbind "%"
unbind "\""
bind | split-window -h
bind - split-window -v

# switch between panes
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# resize panes
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

# move between sessions
bind -r ( switch-client -p
bind -r ) switch-client -n

# move betwwen windows
bind "\"" choose-window
bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

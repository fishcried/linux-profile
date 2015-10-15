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

#Smart pane switching with awareness of vim splits
is_vim='echo "#{pane_current_command}" | grep -iqE "(^|\/)g?(view|n?vim?)(diff)?$"'
bind -n C-h if-shell "$is_vim" "send-keys C-h" "select-pane -L"
bind -n C-j if-shell "$is_vim" "send-keys C-j" "select-pane -D"
bind -n C-k if-shell "$is_vim" "send-keys C-k" "select-pane -U"
bind -n C-l if-shell "$is_vim" "send-keys C-l" "select-pane -R"
bind -n C-\ if-shell "$is_vim" "send-keys C-\\" "select-pane -l"

bind C-l send-keys 'C-l'

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
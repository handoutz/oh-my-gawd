#!/bin/bash

sudo dnf install vim git curl vim-jedi vim-filesystem vim-plugin-powerline vim-omnicppcomplete tmux
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

echo -e "#" >> .tmuxrc
echo -e "#############################" >> .tmuxrc
echo -e "#" >> .tmuxrc
echo -e "# COPY AND PASTE" >> .tmuxrc
echo -e "# http://robots.thoughtbot.com/tmux-copy-paste-on-os-x-a-better-future" >> .tmuxrc
echo -e "#" >> .tmuxrc
echo -e "# Use vim keybindings in copy mode" >> .tmuxrc
echo -e "setw -g mode-keys vi" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# Setup 'v' to begin selection as in Vim" >> .tmuxrc
echo -e "bind-key -t vi-copy v begin-selection" >> .tmuxrc
echo -e "bind-key -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy"" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# Update default binding of `Enter` to also use copy-pipe" >> .tmuxrc
echo -e "# unbind -t vi-copy Enter" >> .tmuxrc
echo -e "# bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"" >> .tmuxrc
echo -e "#" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# Reset Prefix" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "set -g prefix C-a" >> .tmuxrc
echo -e "bind-key a send-prefix # for nested tmux sessions" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# Global options" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# large history" >> .tmuxrc
echo -e "set-option -g history-limit 10000" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# colors" >> .tmuxrc
echo -e "setw -g mode-bg black" >> .tmuxrc
echo -e "set-option -g default-terminal "screen-256color" #"xterm-256color" # "screen-256color"" >> .tmuxrc
echo -e "set-option -g pane-active-border-fg green" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# utf8 support" >> .tmuxrc
echo -e "set-window-option -g utf8 on" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# basic settings" >> .tmuxrc
echo -e "set-window-option -g xterm-keys on # for vim" >> .tmuxrc
echo -e "set-window-option -g mode-keys vi # vi key" >> .tmuxrc
echo -e "set-window-option -g monitor-activity on" >> .tmuxrc
echo -e "set-window-option -g window-status-current-fg white" >> .tmuxrc
echo -e "setw -g window-status-current-attr reverse" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# Automatically set window title" >> .tmuxrc
echo -e "setw -g automatic-rename" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# use mouse # More on mouse support http://floriancrouzat.net/2010/07/run-tmux-with-mouse-support-in-mac-os-x-terminal-app/" >> .tmuxrc
echo -e "setw -g mode-mouse on" >> .tmuxrc
echo -e "#setw -g mouse-resize-pane on" >> .tmuxrc
echo -e "#set -g mouse-select-window on" >> .tmuxrc
echo -e "set -g mouse-select-pane on" >> .tmuxrc
echo -e "set -g terminal-overrides 'xterm*:smcup@:rmcup@'" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# vi movement keys" >> .tmuxrc
echo -e "# set-option -g status-keys vi" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# Status Bar" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "set-option -g status-utf8 on" >> .tmuxrc
echo -e "set-option -g status-justify right" >> .tmuxrc
echo -e "set-option -g status-bg black # colour213 # pink" >> .tmuxrc
echo -e "set-option -g status-fg cyan" >> .tmuxrc
echo -e "set-option -g status-interval 5" >> .tmuxrc
echo -e "set-option -g status-left-length 30" >> .tmuxrc
echo -e "set-option -g status-left '#[fg=magenta]» #[fg=blue,bold]#T#[default]'" >> .tmuxrc
echo -e "set-option -g status-right '#[fg=red,bold][[ #(git branch) branch ]] #[fg=cyan]»» #[fg=blue,bold]###S #[fg=magenta]%R %m-%d#(acpi | cut -d ',' -f 2)#[default]'" >> .tmuxrc
echo -e "set-option -g visual-activity on" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# Titles (window number, program name, active (or not)" >> .tmuxrc
echo -e "set-option -g set-titles on" >> .tmuxrc
echo -e "set-option -g set-titles-string '#H:#S.#I.#P #W #T'" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# Unbindings" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "#unbind [ # copy mode bound to escape key" >> .tmuxrc
echo -e "unbind j" >> .tmuxrc
echo -e "unbind C-b # unbind default leader key" >> .tmuxrc
echo -e "unbind %   # unbind vertical split" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# Bindings" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# reload tmux conf" >> .tmuxrc
echo -e "bind-key r source-file ~/.tmux.conf" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "#bind Escape copy-mode" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# new split in current pane (horizontal / vertical)" >> .tmuxrc
echo -e "bind-key - split-window -v # split pane horizontally" >> .tmuxrc
echo -e "bind-key \\ split-window -h # split pane vertically" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# list panes" >> .tmuxrc
echo -e "bind-key Space list-panes" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# break-pane" >> .tmuxrc
echo -e "bind-key Enter break-pane" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# join-pane [-dhv] [-l size | -p percentage] [-s src-pane]" >> .tmuxrc
echo -e "# [-t:dst-window.dst-pane] (destination window (dot) destination pane" >> .tmuxrc
echo -e "#                (alias: joinp)" >> .tmuxrc
echo -e "#" >> .tmuxrc
echo -e "#bind C-j command-prompt "joinp"" >> .tmuxrc
echo -e "#bind C-j command-prompt "join-pane"" >> .tmuxrc
echo -e "#bind-key j command-prompt "join-pane -s '%%'"" >> .tmuxrc
echo -e "#bind-key j command-prompt "joinp -t:0"" >> .tmuxrc
echo -e "bind-key Space command-prompt "joinp -t:%%" # %% = prompt for window.pane [-V|H] # vert|hor split" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "#previous pane" >> .tmuxrc
echo -e "bind-key -n C-up prev" >> .tmuxrc
echo -e "bind-key -n C-left prev" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "#next pane" >> .tmuxrc
echo -e "bind-key -n C-right next" >> .tmuxrc
echo -e "bind-key -n C-down next" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# windows" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "set-window-option -g window-status-current-bg red" >> .tmuxrc
echo -e "bind C-j previous-window" >> .tmuxrc
echo -e "bind C-k next-window" >> .tmuxrc
echo -e "bind-key C-a last-window # C-a C-a for last active window" >> .tmuxrc
echo -e "bind A command-prompt "rename-window %%"" >> .tmuxrc
echo -e "# By default, all windows in a session are constrained to the size of the " >> .tmuxrc
echo -e "# smallest client connected to that session, " >> .tmuxrc
echo -e "# even if both clients are looking at different windows. " >> .tmuxrc
echo -e "# It seems that in this particular case, Screen has the better default " >> .tmuxrc
echo -e "# where a window is only constrained in size if a smaller client " >> .tmuxrc
echo -e "# is actively looking at it." >> .tmuxrc
echo -e "setw -g aggressive-resize on" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# panes" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# Navigation ---------------------------------------------------------------" >> .tmuxrc
echo -e "# use the vim motion keys to move between panes" >> .tmuxrc
echo -e "bind-key h select-pane -L" >> .tmuxrc
echo -e "bind-key j select-pane -D" >> .tmuxrc
echo -e "bind-key k select-pane -U" >> .tmuxrc
echo -e "bind-key l select-pane -R" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# Resizing ---------------------------------------------------------------" >> .tmuxrc
echo -e "bind-key C-h resize-pane -L" >> .tmuxrc
echo -e "bind-key C-j resize-pane -D" >> .tmuxrc
echo -e "bind-key C-k resize-pane -U" >> .tmuxrc
echo -e "bind-key C-l resize-pane -R" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# use vim motion keys while in copy mode" >> .tmuxrc
echo -e "setw -g mode-keys vi" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "# layouts" >> .tmuxrc
echo -e "############################################################################" >> .tmuxrc
echo -e "bind o select-layout "active-only"" >> .tmuxrc
echo -e "bind M-- select-layout "even-vertical"" >> .tmuxrc
echo -e "bind M-| select-layout "even-horizontal"" >> .tmuxrc
echo -e "bind M-r rotate-window" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "" >> .tmuxrc
echo -e "# focus on first window" >> .tmuxrc
echo -e "# select-window -t 0" >> .tmuxrc
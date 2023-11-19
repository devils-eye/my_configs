#!/bin/bash
# tmux-rotate-pane.sh

# Save the current pane ID
current_pane=$(tmux display-message -p '#P')
# Save the current window ID
current_window=$(tmux display-message -p '#I')

if [ "$1" = "h-to-v" ]; then
	# Rotate horizontal pane to vertical
	tmux break-pane -d
	tmux join-pane -v -s :+ -t "$current_window"
elif [ "$1" = "v-to-h" ]; then
	# Rotate vertical pane to horizontal
	tmux break-pane -d
	tmux join-pane -h -s :+ -t "$current_window"
fi

# Optional: select the original pane so it has focus
tmux select-pane -t "$current_window.$current_pane"

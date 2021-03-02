#/bin/sh
tmux new-session \; \
  split-window -v -p 30 htop \; \
  split-window -h -p 30 watch -n 2 sensors \; \

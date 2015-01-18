# if there is tmux binary
if [[ -n "$(which tmux)" ]]; then
    # and we're not already inside tmux session...
    if [[ -z "$TMUX" ]]; then
        # ...if there is no tmux "login" session
        tmux has-session -t login || \
        # then create new one
        exec tmux new-session -s login && \
        # or attach to existent one
        exec tmux attach-session -d -t login
    fi
fi

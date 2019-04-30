function tSession
{
    tmux has-session -t dev 2 >/dev/null
    if [ "$?" -eq 1 ]; then
        echo "No session found. Creating"
        tmux source-file ~/.config/tmux/configs/dev
    else
        echo "session found . connecting"
    fi
    tmux attach-session -t dev

}
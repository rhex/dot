tmux has-session -t develop
if [ $? != 0 ]
then
    tmux new-session -s develop -n editor -d
    tmux send-keys -t develop 'cd ~/dev' C-m
    tmux send-keys -t develop 'vim' C-m
    tmux split-window -v -p 10 -t develop
    # tmux select-layout -t develop main-horizontal
    tmux send-keys -t develop:1.2 'cd ~/dev' C-m
    tmux new-window -n console -t develop
    tmux send-keys -t develop:2 'cd ~/dev' C-m
    tmux select-window -t develop:1
fi
tmux attach -t develop

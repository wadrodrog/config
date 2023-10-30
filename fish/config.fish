if status is-interactive
    # Commands to run in interactive sessions can go here
    uname -r | cowsay
end

fish_add_path -p $HOME/scripts

# System information
alias session "echo $XDG_SESSION_TYPE"

# System updates
alias fupg="flatpak upgrade"
alias upg="flatpak upgrade && yay && shutdown"
alias upgrb="flatpak upgrade && yay && echo Reboot in 10 seconds... && sleep 10 && reboot"
#alias inf="informant --file ~/.cache/informant"

# Python
alias venv=". venv/bin/activate.fish"
alias pybuild="python -m pip install -e ."

alias works="cd ~/Works"
alias h='history'
alias ports='netstat -tulanp'
alias irssi='TERM=screen-256color irssi'
alias backupDconf="dconf dump /org/cinnamon/ >> /home/rubemlrm/Works/dotfiles/roles/user-configs/files/dconf/dconf.bak && cd /home/rubemlrm/Works/dotfiles && git add ./roles/user-configs/files/dconf/ && git commit -m 'updated dconf settings'"
if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
bind \eL 'clear && bfetch'
zoxide init fish | source
alias cd="z"
alias zz="yazi"
alias ll="eza -lh --group-directories-first --icons --no-permissions --no-user"
alias cnvim='function _cnvim; z $argv; nvim .; end; _cnvim'
alias mgs='mgitstatus -d 3 --no-upstream -c /home/denast/.nixos-config/ /home/denast/.dots/ | sed \'s/\/home\/denast\///\'; mgitstatus -d 3 --no-upstream -c /home/denast/Pictures/ | sed \'s/\/home\/denast\/Pictures\///\'; mgitstatus -d 3 --no-upstream -c /home/denast/Projects/ | sed \'s/\/home\/denast\/Projects\///\''
alias sl='sl -w -10 -d'
alias vpn-browser='bash /home/denast/.dots/scripts/tailscale-vpn-browser.sh'
setenv EDITOR nvim
source /home/denast/.secrets/api-keys.fish
fish_add_path $HOME/.cargo/bin
direnv hook fish | source

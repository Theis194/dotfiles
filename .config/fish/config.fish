if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

set -x DENO_INSTALL ~/.deno
set -x PATH $DENO_INSTALL/bin:$PATH

nvm use latest --silent

# Created by `pipx` on 2025-05-13 12:06:31
set PATH $PATH /home/theis/.local/bin
set -gx PATH $PATH /usr/local/go/bin
set -gx PATH $HOME/.cargo/bin $PATH

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias pacman='sudo pacman'

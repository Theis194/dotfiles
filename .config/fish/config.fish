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
set -gx PATH "/home/theis/.ghcup/bin" $PATH
set -gx PATH $HOME/.juliaup/bin $PATH
set -gx DOTNET_ROOT $HOME/.dotnet
set -gx PATH $PATH $DOTNET_ROOT $DOTNET_ROOT/tools

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias pacman='sudo pacman'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'

set -gx VISUAL nvim
set -gx EDITOR nvim

# Android
set -x ANDROID_HOME $HOME/Android/Sdk
set -x ANDROID_SDK_ROOT $HOME/Android/Sdk
set -x JAVA_OPTS '-XX:+IgnoreUnrecognizedVMOptions'
set -x NDK_HOME $HOME/Android/Sdk/ndk/29.0.14033849

fish_add_path $ANDROID_SDK_ROOT/tools
fish_add_path $ANDROID_SDK_ROOT/platform-tools
fish_add_path $ANDROID_SDK_ROOT/emulator
fish_add_path $ANDROID_SDK_ROOT/tools/bin
fish_add_path $NDK_HOME


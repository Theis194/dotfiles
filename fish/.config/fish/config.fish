# Disable greeting
set fish_greeting

# =========================
# Interactive-only config
# =========================
if status is-interactive
    # Aliases
    alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
    alias pacman='sudo pacman'
    alias gs='git status'
    alias ga='git add'
    alias gc='git commit'
    alias gp='git push'

    # Editors
    set -gx VISUAL nvim
    set -gx EDITOR nvim

    # Node (ONLY if using fish-nvm)
    # nvm use latest --silent
end

# =========================
# Paths (Fish-native)
# =========================
fish_add_path $HOME/.local/bin
fish_add_path /usr/local/go/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.ghcup/bin
fish_add_path $HOME/.juliaup/bin

# .NET
set -gx DOTNET_ROOT $HOME/.dotnet
fish_add_path $DOTNET_ROOT
fish_add_path $DOTNET_ROOT/tools

# =========================
# Android
# =========================
set -gx ANDROID_HOME $HOME/Android/Sdk
set -gx ANDROID_SDK_ROOT $ANDROID_HOME
set -gx JAVA_OPTS '-XX:+IgnoreUnrecognizedVMOptions'
set -gx NDK_HOME $ANDROID_HOME/ndk/29.0.14033849

fish_add_path $ANDROID_SDK_ROOT/tools
fish_add_path $ANDROID_SDK_ROOT/platform-tools
fish_add_path $ANDROID_SDK_ROOT/emulator
fish_add_path $ANDROID_SDK_ROOT/tools/bin
fish_add_path $NDK_HOME

eval "$(starship init zsh)"

# Download Znap, if it's not there yet.
[[ -r ~/.dotfiles/plugins/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.dotfiles/plugins/znap/
source ~/.dotfiles/plugins/znap/znap.zsh  # Start Znap

znap source marlonrichert/zsh-autocomplete

# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
export VISUAL="code --wait"

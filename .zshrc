# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Aliases
alias zsc="code ~/.zshrc"
alias zs="source ~/.zshrc"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
## M1 stuff
alias mbrew="arch -x86_64 /usr/local/bin/brew"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(
  git
  zsh-autosuggestions
  zsh-completions
)

source $ZSH/oh-my-zsh.sh

# NVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Open SSL

export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
source /Users/gabrielteodoro/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# asdf

. $HOME/.asdf/asdf.sh

# Elixir

export CC=clang
export CPP="clang -E"
export EGREP=egrep
export KERL_BUILD_DOCS=yes
export KERL_INSTALL_MANPAGES=yes
export KERL_USE_AUTOCONF=0
export wxUSE_MACOSX_VERSION_MIN=12.3

export KERL_CONFIGURE_OPTIONS="--disable-debug --disable-silent-rules --enable-dynamic-ssl-lib --enable-gettimeofday-as-os-system-time --enable-kernel-poll --without-javac --without-wx --without-odbc"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# --- ZSHRC: OH MY ZSH CORE CONFIGURATION ---

# Path to your oh-my-zsh installation. (This path is set by the installer)
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- (You can change "robbyrussell" to a theme you like)
ZSH_THEME="robbyrussell"

# Set list of enabled plugins.
plugins=(
  git
  tmux
)

# Initialize Oh My Zsh
source $ZSH/oh-my-zsh.sh

# --- ZSHRC: CUSTOM ENVIRONMENT SETTINGS ---

# Set a better terminal type for compatibility with Vim, Tmux, etc.
export TERM="xterm-256color"

# Keep lots of history and append to history, don't overwrite it
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY


# --- ZSHRC: CUSTOM ALIASES AND SHORTCUTS ---

# Enable magic shorthand for changing directories
setopt AUTO_CD             # Allows you to type a directory name without 'cd'
setopt AUTO_PUSHD          # Saves the previous directory to the stack
setopt PUSHD_IGNORE_DUPS   # Don't save duplicate directories to the stack

# Shorten common directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Essential command aliases for macOS
alias ls='ls -G'      # -G enables color on macOS
alias ll='ls -alG'    # Long listing format, show all, with colors
alias df='df -h'      # Always force a human-readable size display
alias du='du -h'      # Always force a human-readable size display

# Shortcut for editing your config files
alias zshrc='vim ~/.zshrc'
alias tmuxconf='vim ~/.tmux.conf'
alias vimrc='vim ~/.vimrc'


# --- ZSHRC: TMUX AUTO-START (MUST RUN LAST) ---

# This function automatically starts or attaches to a session named 'main'
# every time a new terminal window is opened, unless already in tmux.
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    # Attach to 'main' or create a new session named 'main'
    tmux attach-session -t main || tmux new-session -s main
fi


# --- ZSHRC: Fix Home/End keys inside tmux ---

# These escape codes are often what tmux sends for Home/End keys.
# ^[[1~ is Home
# ^[[4~ is End
# We map them to the corresponding Zsh Line Editor (ZLE) functions.
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line

# On some systems/terminals, these sequences are used instead:
# bindkey '^[[H' beginning-of-line
# bindkey '^[[F' end-of-line


# --- ZSHRC: MANUAL PLUGIN SOURCING ---

# Source Homebrew Zsh Plugins (Adjust paths if needed: /usr/local/opt for Intel)
source /opt/homebrew/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

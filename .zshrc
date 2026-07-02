# ============================================================
# .zshrc — Chargé à chaque shell interactif
# ============================================================

# Oh-My-Zsh
export ZSH=/Users/antoine/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git
  zsh-autosuggestions
  yarn
  web-search
  jsontools
  node
  sudo
  docker
)

source $ZSH/oh-my-zsh.sh

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# zsh-syntax-highlighting (Apple Silicon)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ============================================================
# POWERLEVEL9K
# ============================================================

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol="#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} ${user_symbol}%{%b%f%k%F{yellow}%} %{%f%}"

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Colorise iTerm2 tabs
echo -e "\033]6;1;bg;red;brightness;18\a"
echo -e "\033]6;1;bg;green;brightness;26\a"
echo -e "\033]6;1;bg;blue;brightness;33\a"

# ============================================================
# GIT
# ============================================================

alias ga='git add'
alias gap='git add -p'
alias g.='git add .'
alias gp='git push'
alias gl='git log'
alias gst='git status'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'

# ============================================================
# NAVIGATION
# ============================================================

alias doc='cd ~/Documents'
alias wk='cd ~/Workspace'
alias finder='osascript /Users/antoine/Documents/openWindow.scpt'

# ============================================================
# DRUSH
# ============================================================

alias dca="vendor/bin/drush cc all"
alias dcr="vendor/bin/drush cr"

drush() {
  if [ -f vendor/bin/drush ]; then
    vendor/bin/drush "$@"
  else
    ~/.composer/vendor/bin/drush "$@"
  fi
}

# ============================================================
# MYSQL
# ============================================================

alias mysqldump='/Applications/MAMP/Library/bin/mysqldump'
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# ============================================================
# DDEV
# ============================================================

ddev_install_module() {
    if [ -n "$2" ]; then
        ddev composer require drupal/$1:$2 && ddev drush en $1
    else
        ddev composer require drupal/$1 && ddev drush en $1
    fi
}

# ============================================================
# CLAUDE CODE — Model aliases
# ============================================================
# claude       → Sonnet 4.6 (default, complex reasoning & code)
# claude-lite  → Haiku 4.5  (linting, rename, simple search)
# claude-opus  → Opus 4.7   (explicit request only)
alias claude-lite='claude --model claude-haiku-4-5-20251001'
alias claude-opus='claude --model claude-opus-4-7'

# ============================================================
# KIRO
# ============================================================

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

# ============================================================
# OLLAMA
# ============================================================

export OLLAMA_BASE_URL="http://localhost:11434"
export OLLAMA_API_KEY=""
export OLLAMA_ANTHROPIC_AUTH_TOKEN="ollama"
export OLLAMA_MODEL="llama3:latest"

alias okc='ANTHROPIC_BASE_URL=${OLLAMA_BASE_URL} ANTHROPIC_AUTH_TOKEN=${OLLAMA_ANTHROPIC_AUTH_TOKEN} ANTHROPIC_API_KEY="" claude --model ${OLLAMA_MODEL} --dangerously-skip-permissions'

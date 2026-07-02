# ============================================================
# .zprofile — Chargé une fois au login shell (iTerm / zsh)
# ============================================================

# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# PHP MAMP 8.1
export PATH="/Applications/MAMP/bin/php/php8.1.13/bin:$PATH"

# MySQL MAMP
export PATH="/Applications/MAMP/Library/bin:$PATH"

# Composer global
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Composer CA bundle
export COMPOSER_CAFILE='/Users/antoine/cacert.pem'

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# JetBrains Toolbox
export PATH="$PATH:/Users/antoine/Library/Application Support/JetBrains/Toolbox/scripts"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
export PATH="/Applications/Wine Stable.app/Contents/Resources/wine/bin:$PATH"

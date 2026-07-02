# dotfiles

Config perso terminal : zsh (oh-my-zsh + powerlevel9k), env login shell, git config, scheme couleurs iTerm2 actif.

Snapshot des fichiers réellement sourcés dans `$HOME` — pas de symlink automatique, pas d'installeur. Copier/versionner manuellement.

## Contenu

- `.zshrc` — oh-my-zsh, thème `powerlevel9k`, plugins (git, zsh-autosuggestions, yarn, web-search, jsontools, node, sudo, docker), alias git/navigation/Drush/MySQL/DDEV/Claude Code/Ollama.
- `.zprofile` — env login shell : Homebrew, PHP MAMP 8.1, MySQL MAMP, Composer global, JetBrains Toolbox, NVM, Wine.
- `.gitconfig` — identité git, Sourcetree diff/mergetool, buffers http/ssh/pack agrandis, `pull.rebase=true`.
- `.gitignore_global` — référencé par `.gitconfig` (`core.excludesfile`).
- `Clovis-iTerm2-Color-Scheme.itermcolors` — scheme couleurs iTerm2 en usage.

## Historique

Repo créé en 2016 pour tracker un thème `agnoster` + une collection vendorisée [iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes) (22M). Setup mort depuis — remplacé par `powerlevel9k` et un scheme unique. Repo resynchronisé en 2026 sur la config réellement utilisée (voir `CLAUDE.md` pour détail).

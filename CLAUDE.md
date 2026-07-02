# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

Personal dotfiles: zsh (oh-my-zsh + powerlevel9k) config, login shell env (`.zprofile`), git config, and the active iTerm2 color scheme. No build, no lint, no tests, no package manager. This is a backup/version-history repo for real config files symlinked or copied into `$HOME` — it is not itself sourced from this path.

## Layout

- `.zshrc` — oh-my-zsh config. `ZSH_THEME="powerlevel9k/powerlevel9k"`, plugins: git, zsh-autosuggestions, yarn, web-search, jsontools, node, sudo, docker. Also: iTerm2 shell integration sourcing, zsh-syntax-highlighting (Homebrew/Apple Silicon path), P9K prompt segment config, and alias blocks for git, navigation, Drush, MySQL/MAMP, DDEV, Claude Code model switching, and Ollama-backed Claude Code (`okc`).
- `.zprofile` — login-shell env: Homebrew shellenv, PHP 8.1 (MAMP), MySQL (MAMP), global Composer bin + CA bundle, `~/.local/bin`, JetBrains Toolbox scripts, NVM, Wine.
- `.gitconfig` — user identity, Sourcetree diff/mergetool, enlarged http/ssh/pack buffers (for large repos), `pull.rebase=true` + `ff=only`.
- `.gitignore_global` — referenced by `.gitconfig`'s `core.excludesfile`.
- `Clovis-iTerm2-Color-Scheme.itermcolors` — the one iTerm2 color scheme actually in use.

## Working in this repo

- These are real config files someone sources — verify `.zshrc` / `.zprofile` syntax is valid zsh before considering a change done (e.g. `zsh -n <file>`).
- No test suite. "Testing" a change means visually confirming shell/prompt behavior, not running an automated check.
- Keep this repo in sync with the live files in `$HOME` — it's a snapshot, not a source of truth enforced by symlinks. When editing, check whether `~/.zshrc` etc. has drifted before assuming this copy is current.

## History note

Originally scoped as "iterm-config" (2016) tracking an `agnoster.zsh-theme` copy and a vendored `mbadolato/iTerm2-Color-Schemes` snapshot (22M) plus an unused `fonts-master.zip`. That setup is dead — the live config now uses `powerlevel9k` (not agnoster) and a single custom `.itermcolors` file (not the vendored collection). Those files were removed in favor of tracking the actual live dotfiles (zsh, zprofile, git config).

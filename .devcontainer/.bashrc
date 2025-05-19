alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias c='clear'

umask 000

git config --global --add safe.directory '*'
git config --global core.fileMode false
git config --unset core.fileMode
git config core.fileMode false

chmod -R 777 /workspaces/fastvtuber

echo "
──────────────────────────────────────────────────────────
── Github: https://github.com/eduardolat/fastvtuber ──────
──────────────────────────────────────────────────────────
── Development environment is ready to use! ──────────────
──────────────────────────────────────────────────────────
"

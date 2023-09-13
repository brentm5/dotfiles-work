# load our own completion functions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions ${ASDF_DIR}/completions  $fpath)

# completion
autoload -Uz compinit && compinit

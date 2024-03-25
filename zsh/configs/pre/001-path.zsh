# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# Add rancher Desktop
PATH="$PATH:$HOME/.rd/bin"

# Load intellij scripts
PATH="$HOME/.toolbox:$PATH"

export -U PATH

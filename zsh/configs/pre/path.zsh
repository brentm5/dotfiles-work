# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# Make sure chefdk is before asdf
PATH="/opt/chefdk/bin:$PATH"

# Make sure inspec is before chefdk
PATH="/opt/inspec/bin:$PATH"

# Load intellij scripts
PATH="$HOME/.toolbox:$PATH"

export -U PATH

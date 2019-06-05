# ensure dotfiles bin directory is loaded first
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

# Add rust
PATH="$HOME/.cargo/bin:/usr/local/sbin:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

# Make sure chefdk is before asdf
PATH="/opt/chefdk/bin:$PATH"

# Make sure inspec is before chefdk
PATH="/opt/inspec/bin:$PATH"

# ensure dotfiles bin directory is loaded first
PATH="$PATH:$HOME/.yarn/bin"

export -U PATH

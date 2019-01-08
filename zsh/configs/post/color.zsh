# makes color constants available
autoload -U colors
colors
export LSCOLORS=ehfxcxdxbxegedabagacad

export LS_COLORS="$(vivid generate molokai)"

# enable colored output from ls, etc. on FreeBSD-based systems
export CLICOLOR=1

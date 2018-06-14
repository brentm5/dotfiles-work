# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  current_branch=$(git current-branch 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo "[%{$fg_bold[green]%}$current_branch%{$reset_color%}]"
  fi
}

current_path_info() {
  echo "%{$fg_bold[blue]%}%~%{$reset_color%}"
}

# expand functions in the prompt
setopt promptsubst

autoload -U promptinit && promptinit

# Torn on which one i like better
# [master][~/.dotfiles]
export PS1='$(git_prompt_info)[${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%~%{$reset_color%}] '

# git-radar one... its kind of slow %
# chef git:(𝘮 4 ⇄ 1 bm-fix-ctg_qa) 5D %
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git-radar --zsh --fetch) %# '

# .dotfiles master %
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '

# ~/.dotfiles [master] %
export PS1='${SSH_CONNECTION} $(current_path_info) $(git_prompt_info) %# '

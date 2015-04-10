# modify the prompt to contain git branch name if applicable
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo " %{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}"
  fi
}

setopt promptsubst
export PS1='${SSH_CONNECTION+"%{$fg_bold[green]%}%n@%m:"}%{$fg_bold[blue]%}%c%{$reset_color%}$(git_prompt_info) %# '

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git rails ruby)
source $ZSH/oh-my-zsh.sh

# completion
autoload -U compinit
compinit

# makes color constants available
autoload -U colors
colors

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# enable colored output from ls, etc
export CLICOLOR=1

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

eval "$(rbenv init -)"

export VISUAL=vim
export EDITOR="$VISUAL"

[[ -s $HOME/.zshrc.local ]] && source "$HOME/.zshrc.local"

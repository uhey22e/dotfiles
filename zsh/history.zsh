function select-history() {
  BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
  CURSOR=$#BUFFER
}
zle -N select-history
bindkey '^r' select-history

# The detailed meaning of the below three variable can be found in `man zshparam`.
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=20000	# the number of items for the internal history list
export SAVEHIST=200000	# maximum number of items for the history file

# The meaning of these options can be found in man page of `zshoptions`.
setopt hist_ignore_all_dups	# do not put duplicated command into history list
setopt hist_save_no_dups	# do not save duplicated command
setopt hist_reduce_blanks	# remove unnecessary blanks
setopt inc_append_history_time  # append command to history file immediately after execution
setopt extended_history  	# record command start time

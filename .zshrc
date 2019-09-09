#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
export SPACESHIP_PROMPT_ORDER=(
  time
  dir
  git
  char
)
export SPACESHIP_CHAR_SUFFIX=" "
export SPACESHIP_PROMPT_ADD_NEWLINE=true
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_DIR_PREFIX=""

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=60'


# Customize to your needs...
for file in ~/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
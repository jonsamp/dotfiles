source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -Uz compinit && compinit

eval "$(starship init zsh)"

# Customize to your needs...
for file in ~/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jon/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jon/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jon/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jon/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="/usr/lib/google-cloud-sdk/bin:$PATH"


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export VOLTA_HOME="/Users/jon/.volta"
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"
eval "$(direnv hook zsh)"

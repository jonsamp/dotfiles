source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

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


export PATH="$(yarn global bin):$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jon/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jon/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jon/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jon/google-cloud-sdk/completion.zsh.inc'; fi
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
eval "$(direnv hook zsh)"

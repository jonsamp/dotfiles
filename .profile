
if [ -e /Users/jon/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jon/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
export VOLTA_HOME="/Users/jon/.volta"
grep --silent "$VOLTA_HOME/bin" <<< $PATH || export PATH="$VOLTA_HOME/bin:$PATH"

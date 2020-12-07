
#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.

# uncomment below
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

if [ -e /Users/jon/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jon/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
# export ANDROID_SDK=/Users/jon/Library/Android/sdk
# export PATH=/Users/jon/Library/Android/sdk/platform-tools:$PATH

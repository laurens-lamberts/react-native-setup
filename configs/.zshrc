eval $(/opt/homebrew/bin/brew shellenv)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/laurenslamberts/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/laurenslamberts/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/laurenslamberts/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/laurenslamberts/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
alias python=/usr/bin/python3

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/Users/laurenslamberts/.flashlight/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export VISUAL=~/code-wait.sh
export EDITOR=~/code-wait.sh

export PATH=/usr/local/share/npm/bin:$PATH
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT/emulator:$PATH
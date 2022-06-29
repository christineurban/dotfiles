source $HOME/.bashrc

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/80258723/google-cloud-sdk/path.bash.inc' ]; then . '/Users/80258723/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/80258723/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/80258723/google-cloud-sdk/completion.bash.inc'; fi

export PATH=/usr/local/bin/:$PATH
source <(kubectl completion bash)
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# node version manager
if [ -d ~/.nvm ]; then
    export NVM_DIR="$HOME/.nvm"
    source "$NVM_DIR/nvm.sh"
fi

export GPG_TTY=$(tty)

export GOPATH=$HOME/go

export PATH=~/bin:/usr/local/bin:${PATH}

set -o vi

export CLICOLOR=1
# Use vi as our default editor
alias vi=vim
export EDITOR=vim

# Use less as our default pager
export PAGER=less
# Enable color in less
export LESS="-R"

# Set the prompt
export PS1='\u@\h:\w\$ '

# Enable color in ack (when piping)
export ACK_OPTIONS="--color"

# Gcloud fun# The next line enables bash completion for gcloud.
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/steve.smith/google-cloud-sdk/path.bash.inc' ]; then source '/Users/steve.smith/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/steve.smith/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/steve.smith/google-cloud-sdk/completion.bash.inc'; fi

# A few environment variables for GCP projects
alias b52test='gcloud config set project $(gcloud projects list --filter="name:b52-test" | tail -1 | awk "{print $1}")'
alias b52hub='gcloud config set project $(gcloud projects list --filter="name:b52-hub" | tail -1 | awk "{print $1}")'

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# Start pyenv
eval "$(pyenv init -)"

# Squash shortcut
alias squashit='git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD))'


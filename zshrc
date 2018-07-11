source ${HOME}/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh

# Bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle cp

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme bhilburn/powerlevel9k powerlevel9k
# antigen theme robbyrussell

# Theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(host anaconda dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status load time)
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle":

antigen apply

# Aliases
source $HOME/.aliases

# PATH update
export PATH="${PATH}:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:$HOME/anaconda3/bin:/Applications/MySQLWorkbench.app/Contents/MacOS:$HOME/bin"

# Ability to reload
alias z='source ${HOME}/.zshrc'

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

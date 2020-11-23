# Variable definitions
NEWLINE=$'\n'

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Autocomplete git branch information
autoload -Uz compinit && compinit

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable (how the branch name will show after the current folder)
zstyle ':vcs_info:git:*' formats '| %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${NEWLINE}%n @ ${PWD/#$HOME/~} ${vcs_info_msg_0_}${NEWLINE}$ '

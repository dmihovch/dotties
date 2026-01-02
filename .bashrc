

# ~/.bashrc

# Only set prompt for interactive shells
[[ $- != *i* ]] && return

# Enable color support
if command -v tput >/dev/null 2>&1 && [[ $(tput colors) -ge 8 ]]; then
    RESET="\[\e[0m\]"
    BOLD="\[\e[1m\]"

    USER_COLOR="\[\e[38;5;38m\]"    # blue
    HOST_COLOR="\[\e[38;5;70m\]"    # green
    PATH_COLOR="\[\e[38;5;214m\]"   # orange
	PROMPT_COLOR="\[\e[38;5;255m\]"
else
    RESET=""
    BOLD=""
    USER_COLOR=""
    HOST_COLOR=""
    PATH_COLOR=""
    PROMPT_COLOR=""
fi

# Prompt: user@host:path $
PS1="${BOLD}${USER_COLOR}\u${RESET}${PROMPT_COLOR}@${HOST_COLOR}\h${RESET}:${PATH_COLOR}\w${RESET}\$ "




# Enable GNU ls colors
eval "$(dircolors -b)"
alias ls='ls --color=auto'


# macOS BSD ls colors
# alias ls='ls -G'


# a=black b=red c=green d=brown e=blue f=magenta g=cyan h=light gray
# pairs are foreground/background
# export LSCOLORS="exfxcxdxbxegedabagacad"



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

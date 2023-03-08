PROMPT='%B%1~%b %# '
export PATH=/Users/subhan/Library/Python/3.8/bin:$PATH
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
alias code="open -b com.microsoft.VSCode"
alias ll="ls -l"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias tf="terraform"
alias py="python3"
alias chrome="open -a 'Google Chrome'"
alias gobl="GOOS=linux GOARCH=amd64 go build -o main main.go"

# use vi key bindings
bindkey -v
export KEYTIMEOUT=1
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

alias ifconfig='grc /sbin/ifconfig'
alias dh='grc dh'
alias df='grc df -h'
alias nmap='grc nmap'
alias ping='grc ping'
alias ls='lsd -l --group-dirs=first'
alias cat='/usr/bin/bat'
alias netstat='/usr/bin/grc /usr/bin/netstat'
alias grep='/usr/bin/grc /usr/bin/grep --color'
#alias top='gotop-cjbassi'
alias du='/usr/bin/grc /usr/bin/du'
export PATH=/opt/Android/Sdk/platform-tools:/opt/Android/Sdk/emulator:$PATH
export PATH="$PATH:/opt/mssql-tools/bin
export PATH="$PATH:/opt/mssql-tools/bin

[[ ! -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] || source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ ! -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] || source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh



# Fix Arrow Keys
case "${TERM}" in
  cons25*|linux) # plain BSD/Linux console
    bindkey '\e[H'    beginning-of-line   # home 
    bindkey '\e[F'    end-of-line         # end  
    bindkey '\e[5~'   delete-char         # delete
    bindkey '[D'      emacs-backward-word # esc left
    bindkey '[C'      emacs-forward-word  # esc right
    ;;
  *rxvt*) # rxvt derivatives
    bindkey '\e[3~'   delete-char         # delete
    bindkey '\eOc'    forward-word        # ctrl right
    bindkey '\eOd'    backward-word       # ctrl left
    # workaround for screen + urxvt
    bindkey '\e[7~'   beginning-of-line   # home
    bindkey '\e[8~'   end-of-line         # end
    bindkey '^[[1~'   beginning-of-line   # home
    bindkey '^[[4~'   end-of-line         # end
    ;;
  *xterm*) # xterm derivatives
    bindkey '\e[H'    beginning-of-line   # home
    bindkey '\e[F'    end-of-line         # end
    bindkey '\e[3~'   delete-char         # delete
    bindkey '\e[1;5C' forward-word        # ctrl right
    bindkey '\e[1;5D' backward-word       # ctrl left
    # workaround for screen + xterm
    bindkey '\e[1~'   beginning-of-line   # home
    bindkey '\e[4~'   end-of-line         # end
    ;;
  screen)
    bindkey '^[[1~'   beginning-of-line   # home
    bindkey '^[[4~'   end-of-line         # end
    bindkey '\e[3~'   delete-char         # delete
    bindkey '\eOc'    forward-word        # ctrl right
    bindkey '\eOd'    backward-word       # ctrl left
    bindkey '^[[1;5C' forward-word        # ctrl right
    bindkey '^[[1;5D' backward-word       # ctrl left
    ;;
esac

bindkey '5D' backward-word
bindkey '5C' forward-word

function rmk(){
  scrub -p dod $1; shred -zun 10 -v $1
}

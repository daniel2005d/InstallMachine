export _JAVA_AWT_WM_NONREPARENTING=1

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh


#Personalización

[[ ! -f ~/.bash_aliases ]] || source ~/.bash_aliases

#[[ ! -f /usr/bin/tmux ]] || bash -c "/usr/bin/tmux new -s trabajo"


#Ajuste de teclas

bindkey ";5C" forward-word
bindkey ";5D" backward-word
bindkey "5D" backward-word
bindkey "5C" forward-word



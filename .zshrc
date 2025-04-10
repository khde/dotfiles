HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
unsetopt beep
bindkey -e

# colors
autoload -U colors && colors

# prompts
PROMPT='%F{244}[%n@%M]:%f %F{032}%~%f%F{160} >%f '
RPROMPT='%F{yellow}[%*]%f'

# autocompletion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# autocompletion accept
bindkey '^ ' autosuggest-accept  # Ctrl + Space
bindkey '^[ ' autosuggest-execute  # Alt + Space

alias vi='vim'
alias nv='nvim'

alias vim='nvim'
alias hexedit='hexedit --color'

alias ls='ls --color=auto -v'

alias ll='ls -vhal'

alias py="python3.13"

# new terminal in cwd
alias nw="kitty &!"

nwZle() { zle push-line; BUFFER="nw"; zle accept-line; }
zle -N nwZle
# CTRL+n
bindkey '^n' nwZle

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Plugin configs
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Keep at end of file
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

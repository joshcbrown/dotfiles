source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle git-extras
antigen bundle aliases

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle atuinsh/atuin@main

antigen apply

# source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
# antidote load

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# fzf with suggested fix for zsh-vi-mode
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ $- =~ i ]] && bindkey -r '\ec'
bindkey '\eq' fzf-cd-widget

[ -f "/Users/joshbrown/.ghcup/env" ] && source "/Users/joshbrown/.ghcup/env" # ghcup-env
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias lg='lazygit'
alias v='nvim'
alias pdf='termpdf.py'
alias pog='pogodoro'
alias l='eza --long --hyperlink --sort=time --time=modified --time-style=relative --all --git --color=auto --icons=auto --group-directories-first --dereference'
alias ls='eza --hyperlink --sort=time --time=modified --time-style=relative --all --git --color=auto --icons=auto --group-directories-first --dereference'


export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="$HOME/.config/emacs/bin/:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export EDITOR="nvim"

eval $(thefuck --alias)

source /Users/joshbrown/.config/broot/launcher/bash/br

function ya() {
	tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# pokemon-colorscripts -n rayquaza 

eval "$(atuin init zsh)"
~/drifter.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

#syntax higlighting
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#auto suggestion
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#alias
alias orphan='doas pacman -Rns $(pacman -Qtdq)'
alias harf="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", \$5, \$8 }'"
alias fontlar='fc-cache'
alias craftrise='./Documents/CraftriseLauncher.exe'
alias rofy='vim ~/.config/rofi/config.rasi'
alias bar='vim ~/.config/polybar/config'
alias i3='vim ~/.config/i3/config'
alias ls='ls --color=auto'
alias shutdown='loginctl poweroff'
alias reboot='loginctl reboot'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[ ! -f ~/.p10k.zsh ] || source ~/.p10k.zsh
#colorscript
clear
colorscript random

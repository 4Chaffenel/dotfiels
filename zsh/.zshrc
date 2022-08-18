alias xis='doas xbps-install -S'
alias xu='doas xbps-install -Syu'
alias xr='doas xbps-remove -R'
alias xs='doas xbps-query -Rs'
alias harf="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", \$5, \$8 }'"

PROMPT="%B%F{156}%n%f%b %B%F{148}@%f%b %B%F{156}%m%f%b %B%F{148}$%f%b "
RPROMPT="  %B%F{148}%~%f%b  %B%F{156}<<%f%b %B%F{148}%T%f%b"

source /home/efe/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/efe/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

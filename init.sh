#/usr/local/bin bash

alias dprune="docker system prune --all --volumes -f"
alias dps='docker ps'
alias dpsa='docker ps -a'
alias cfenv='eval `docker-machine env codefresh` ; echo using codefresh docker env'
alias coninf='dps | grep $1'
alias coninfa='dpsa | grep $1'
function conid() {
  echo `coninf | awk '{print $1}'`
}
function conida() {
  echo `coninfa | awk '{print $1}'`
}
export -f conid
export -f conida
alias dl='docker logs `conid $1`'
alias dla='docker logs `conida $1`'
alias dr='docker restart `conid $1`'
alias dra='docker restart `conida $1`'

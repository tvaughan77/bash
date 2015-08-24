alias dm="docker-machine"
alias dkc="docker-compose"
alias dkcb="docker-compose build"
alias dkcu="docker-compose up"

#
# Initialize docker with docker variables
#
function dmi() {
    eval "$(docker-machine env default)"
}

alias dm="docker-machine"
alias dkc="docker-compose"
alias dkcb="docker-compose build"
alias dkcu="docker-compose up"

# docker login - only appropriate for logging in to AWS ECR
#alias dl="aws ecr get-login --region us-east-1"
alias dl="eval $(aws ecr get-login --region us-east-1 --no-include-email)"


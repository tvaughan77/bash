source ~/.myshell/aliases.bash
source ~/.myshell/aws.bash
source ~/.myshell/prompt.bash
source ~/.myshell/docker.bash
source ~/.myshell/git.bash
source ~/.myshell/jvm.bash
source ~/.myshell/python.bash
source ~/.myshell/ruby.bash
source ~/.myshell/mobile.bash
source ~/.myshell/k8s.bash

# My career-specific shortcuts
source ~/.myshell/upside.bash
#source ~/.myshell/wapo.bash

# Put your secrets in secrets.bash, but don't check it in to git, obviously
source ~/.myshell/secrets.bash 2> /dev/null

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Sets up the command correction https://github.com/nvbn/thefuck
eval $(thefuck --alias)

switchJava 1.8

# Created by `userpath` on 2020-05-13 14:10:28
export PATH="$PATH:/Users/tvaughan/.local/bin"

# This bullshit is here because https://stackoverflow.com/a/50508580/4760014 
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

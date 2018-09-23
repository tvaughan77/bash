source ~/.myshell/aliases.bash
source ~/.myshell/prompt.bash
source ~/.myshell/docker.bash
source ~/.myshell/git.bash
source ~/.myshell/jvm.bash
source ~/.myshell/python.bash
source ~/.myshell/ruby.bash
source ~/.myshell/mobile.bash

# My career-specific shortcuts
source ~/.myshell/upside.bash
#source ~/.myshell/wapo.bash

# Put your secrets in secrets.bash, but don't check it in to git, obviously
source ~/.myshell/secrets.bash 2> /dev/null

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Sets up the command correction https://github.com/nvbn/thefuck
eval $(thefuck --alias)


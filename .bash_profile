source ~/.myshell/aliases.bash
source ~/.myshell/prompt.bash
source ~/.myshell/wapo.bash
source ~/.myshell/docker.bash

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Sets up the command correction https://github.com/nvbn/thefuck
eval $(thefuck --alias)

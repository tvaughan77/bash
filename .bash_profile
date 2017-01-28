source ~/.myshell/aliases.bash
source ~/.myshell/prompt.bash
source ~/.myshell/docker.bash
source ~/.myshell/git.bash
source ~/.myshell/jvm.bash
source ~/.myshell/python.bash
source ~/.myshell/ruby.bash

# My career-specific shortcuts
source ~/.myshell/upside.bash
source ~/.myshell/wapo.bash

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Sets up the command correction https://github.com/nvbn/thefuck
eval $(thefuck --alias)

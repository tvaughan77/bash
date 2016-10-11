# bash
My bash settings

New setup (after you've installed brew)
```
brew install hub
brew install bash-git-prompt
git clone git@github.com:tvaughan77/bash.git
cp ~/.bash_profile ~/.bash_profile.bak
cp bash/.bash_profile ~/
ln -s bash/myshell ~/.myshell
ln -s bash/.vimrc ~/.vimrc
brew install wget
wget -O - https://raw.githubusercontent.com/nvbn/thefuck/master/install.sh | sh - && $0
```

Optional AWS support that's pretty handy:
```
git clone https://github.com/jorgebastida/awslogs.git && cd awslogs && pip install .
```

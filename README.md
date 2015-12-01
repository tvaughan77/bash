# bash
My bash settings

New setup (after you've installed brew)
```
brew install hub
brew install bash-git-prompt
git clone git@github.com:tvaughan77/bash.git
cp ~/.bash_profile ~/.bash_profile.bak
cp bash/.bash_profile ~/
touch bash/myshell/secrets.bash
ln -s bash/myshell ~/.myshell
brew install wget
wget -O - https://raw.githubusercontent.com/nvbn/thefuck/master/install.sh | sh - && $0
```

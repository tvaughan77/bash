# bash
My bash settings


New setup (installs homebrew first to facilitate rest of installation)
```
cd

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install hub bash-git-prompt gpg wget

git clone git@github.com:tvaughan77/bash.git

cp ~/.bash_profile ~/.bash_profile.bak

cp bash/.bash_profile ~/

ln -s bash/myshell ~/.myshell

ln -s bash/.vimrc ~/.vimrc

wget -O - https://raw.githubusercontent.com/nvbn/thefuck/master/install.sh | sh - && $0
```

Optional Python support tools:
```
pip install virtualenvwrapper
# then comment in the line in ./.bash_profile `source ~/.myshell/python.bash`
```

Optional Ruby/RVM support if you're in to that kind of thing:
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
# then comment in the line in ./.bash_profile `source ~/.myshell/ruby.bash`
```

Optional AWS support that's pretty handy:
```
git clone https://github.com/jorgebastida/awslogs.git && cd awslogs && pip install .
```

## Don't Forget
Installing on a new computer?  Don't forget to bring (*with sneakerware*):

* ~/.ssh
* ~/.aws

And then install:
* Dropbox
* SpiderOak
* LastPass
* Evernote
* Slack
* Spotify
* Netbeans

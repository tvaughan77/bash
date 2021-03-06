# bash
My bash settings

New setup (installs homebrew first to facilitate rest of installation)
```
cd

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install hub \
    bash-git-prompt \
    gpg \
    wget \
    jq \
    ag \
    git-secrets \
    thefuck 

git clone git@github.com:tvaughan77/bash.git

cp ~/.bash_profile ~/.bash_profile.bak

cp bash/.bash_profile ~/

ln -s bash/myshell ~/.myshell

ln -s bash/.vimrc ~/.vimrc
```

Install java8 (or whatever):
```
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk/openjdk/adoptopenjdk8
#brew cask install adoptopenjdk/openjdk/adoptopenjdk9
#brew cask install adoptopenjdk/openjdk/adoptopenjdk10
#brew cask install adoptopenjdk/openjdk/adoptopenjdk11
brew install jenv
```

Install maven:
```
brew install maven
```

Add git-secrets pre-commit hooks to this bash directory
```
cd /path/to/my/bash/clone
git secrets --install
git secrets --register-aws
```

Python (with pyenv instead of the bullshit default OSX stuff):
```
brew install zlib
brew install pyenv
CPPFLAGS="-I$(brew --prefix zlib)/include" pyenv install -v 2.7.14
CPPFLAGS="-I$(brew --prefix zlib)/include" pyenv install -v 3.6.0
brew install pyenv-virtualenvwrapper
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

Optional Terraform and Terragrunt installation:
```
brew install terraform terragrunt
```

Optional Packer installation
```
brew install packer
```

Optional Kubernetes CLI Tools
```
brew install derailed/k9s/k9s
brew install kubectx
brew install derailed/popeye/popeye
```


## Don't Forget
Installing on a new computer?  Don't forget to bring (*with sneakerware*):

* ~/.ssh
* ~/.aws
* Export gpg / pgp keychain and import keys on new machine

And then install:
* SpiderOak
* Keybase.io
* LastPass
* Evernote
* Slack
* Spotify
* Netbeans

And, for OSX, to show all files in finder: `defaults write com.apple.finder AppleShowAllFiles YES`

## Optional Mobile Dev Support
Comment in the `source ~/.myshell/mobile.bash`
1. Install Android Studio
2. Install Xcode command line tools `xcode-select —install`
3. brew install carthage
4. brew install node
5. npm install -g appium
6. npm install -g appium-doctor
7. appium-doctor  . . . should report everything okay.  Fix any requirements not met
8. [Optional] Install appium-desktop from https://github.com/appium/appium-desktop/releases

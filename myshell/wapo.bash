#
# parallels-boot2docker variables
#
export DOCKER_HOST="tcp://boot2docker:2375"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home/
export VAGRANT_DEFAULT_PROVIDER=parallels
export GOPATH=~/workspace/go
export PATH=$JAVA_HOME/bin:$PATH:/Users/vaughant/workspace/go/src/github.com/coreos/fleet/bin/:/Users/vaughant/workspace/go/bin

#
# Turn on git bash completion
# Install with "brew install git bash-completion"
# See https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
#
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi


#
# ===========================================================
# Java 6/7/8 switching and upgrading support functions
# vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
#
function java6() {
  switchJava 1.6
}
function java7() {
  switchJava 1.7
}
function java8() {
  switchJava 1.8
}
function switchJava() {
  unamestr=`uname`
  if [[ "$unamestr" == 'Darwin' ]]; then
    export JAVA_HOME=`/usr/libexec/java_home -v $1`
    java -version
  else
    echo "Unsupported operating system"
  fi
}
#
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# Java 6/7/8 switching and upgrading support functions
# ===========================================================
#

#
# Assumes you've done the PR merge on github while sitting in a branch, then
# switches back to master, pulls the latest and deletes the old branch
#
function closeBranch() {
  currentBranch=`git rev-parse --abbrev-ref HEAD`
  if [[ "$currentBranch" == 'master' ]]; then
    echo "Don't try to close the master branch, dummy."
  else
    git checkout master
    git pull
    git branch -D $currentBranch
  fi
}


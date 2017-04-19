alias gcb="./gradlew clean build"
alias gcbj="./gradlew clean build jacocoTestReport"
alias glocal='./gradlew snapshot build jacocoTestReport jacocoRootReport publishToMavenLocal'
alias grelease='gradle clean final build publish'
# release candidate
alias grc='gradle clean test candidate publish'
alias mci="mvn clean install"
alias mcio="mvn -o clean install"
alias mcd="mvn clean deploy"
alias mqi="mvn clean install -Dmaven.test.skip.exec"
alias mqio="mvn -o clean install -Dmaven.test.skip.exec"
alias mdt="mvn dependency:tree | vi -"
alias mrpp="mvn release:prepare && mvn release:perform"
alias mhep="mvn help:effective-pom | vi -"

export JAVA_HOME=`/usr/libexec/java_home`
export PATH=$PATH:$JAVA_HOME/bin

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
